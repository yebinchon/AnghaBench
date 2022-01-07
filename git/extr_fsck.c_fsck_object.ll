; ModuleID = '/home/carl/AnghaBench/git/extr_fsck.c_fsck_object.c'
source_filename = "/home/carl/AnghaBench/git/extr_fsck.c_fsck_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { i64 }
%struct.fsck_options = type { i32 }
%struct.blob = type { i32 }
%struct.tree = type { i32 }
%struct.commit = type { i32 }
%struct.tag = type { i32 }

@FSCK_MSG_BAD_OBJECT_SHA1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"no valid object to fsck\00", align 1
@OBJ_BLOB = common dso_local global i64 0, align 8
@OBJ_TREE = common dso_local global i64 0, align 8
@OBJ_COMMIT = common dso_local global i64 0, align 8
@OBJ_TAG = common dso_local global i64 0, align 8
@FSCK_MSG_UNKNOWN_TYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"unknown type '%d' (internal fsck error)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsck_object(%struct.object* %0, i8* %1, i64 %2, %struct.fsck_options* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.object*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.fsck_options*, align 8
  store %struct.object* %0, %struct.object** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.fsck_options* %3, %struct.fsck_options** %9, align 8
  %10 = load %struct.object*, %struct.object** %6, align 8
  %11 = icmp ne %struct.object* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %4
  %13 = load %struct.fsck_options*, %struct.fsck_options** %9, align 8
  %14 = load %struct.object*, %struct.object** %6, align 8
  %15 = load i32, i32* @FSCK_MSG_BAD_OBJECT_SHA1, align 4
  %16 = call i32 (%struct.fsck_options*, %struct.object*, i32, i8*, ...) @report(%struct.fsck_options* %13, %struct.object* %14, i32 %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %5, align 4
  br label %75

17:                                               ; preds = %4
  %18 = load %struct.object*, %struct.object** %6, align 8
  %19 = getelementptr inbounds %struct.object, %struct.object* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @OBJ_BLOB, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load %struct.object*, %struct.object** %6, align 8
  %25 = bitcast %struct.object* %24 to %struct.blob*
  %26 = load i8*, i8** %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.fsck_options*, %struct.fsck_options** %9, align 8
  %29 = call i32 @fsck_blob(%struct.blob* %25, i8* %26, i64 %27, %struct.fsck_options* %28)
  store i32 %29, i32* %5, align 4
  br label %75

30:                                               ; preds = %17
  %31 = load %struct.object*, %struct.object** %6, align 8
  %32 = getelementptr inbounds %struct.object, %struct.object* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @OBJ_TREE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.object*, %struct.object** %6, align 8
  %38 = bitcast %struct.object* %37 to %struct.tree*
  %39 = load %struct.fsck_options*, %struct.fsck_options** %9, align 8
  %40 = call i32 @fsck_tree(%struct.tree* %38, %struct.fsck_options* %39)
  store i32 %40, i32* %5, align 4
  br label %75

41:                                               ; preds = %30
  %42 = load %struct.object*, %struct.object** %6, align 8
  %43 = getelementptr inbounds %struct.object, %struct.object* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @OBJ_COMMIT, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load %struct.object*, %struct.object** %6, align 8
  %49 = bitcast %struct.object* %48 to %struct.commit*
  %50 = load i8*, i8** %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load %struct.fsck_options*, %struct.fsck_options** %9, align 8
  %53 = call i32 @fsck_commit(%struct.commit* %49, i8* %50, i64 %51, %struct.fsck_options* %52)
  store i32 %53, i32* %5, align 4
  br label %75

54:                                               ; preds = %41
  %55 = load %struct.object*, %struct.object** %6, align 8
  %56 = getelementptr inbounds %struct.object, %struct.object* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @OBJ_TAG, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load %struct.object*, %struct.object** %6, align 8
  %62 = bitcast %struct.object* %61 to %struct.tag*
  %63 = load i8*, i8** %7, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load %struct.fsck_options*, %struct.fsck_options** %9, align 8
  %66 = call i32 @fsck_tag(%struct.tag* %62, i8* %63, i64 %64, %struct.fsck_options* %65)
  store i32 %66, i32* %5, align 4
  br label %75

67:                                               ; preds = %54
  %68 = load %struct.fsck_options*, %struct.fsck_options** %9, align 8
  %69 = load %struct.object*, %struct.object** %6, align 8
  %70 = load i32, i32* @FSCK_MSG_UNKNOWN_TYPE, align 4
  %71 = load %struct.object*, %struct.object** %6, align 8
  %72 = getelementptr inbounds %struct.object, %struct.object* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 (%struct.fsck_options*, %struct.object*, i32, i8*, ...) @report(%struct.fsck_options* %68, %struct.object* %69, i32 %70, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %73)
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %67, %60, %47, %36, %23, %12
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @report(%struct.fsck_options*, %struct.object*, i32, i8*, ...) #1

declare dso_local i32 @fsck_blob(%struct.blob*, i8*, i64, %struct.fsck_options*) #1

declare dso_local i32 @fsck_tree(%struct.tree*, %struct.fsck_options*) #1

declare dso_local i32 @fsck_commit(%struct.commit*, i8*, i64, %struct.fsck_options*) #1

declare dso_local i32 @fsck_tag(%struct.tag*, i8*, i64, %struct.fsck_options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
