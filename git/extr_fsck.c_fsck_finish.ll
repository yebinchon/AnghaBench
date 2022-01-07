; ModuleID = '/home/carl/AnghaBench/git/extr_fsck.c_fsck_finish.c'
source_filename = "/home/carl/AnghaBench/git/extr_fsck.c_fsck_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsck_options = type { i32 }
%struct.oidset_iter = type { i32 }
%struct.object_id = type { i32 }
%struct.blob = type { %struct.object }
%struct.object = type { i32 }

@gitmodules_found = common dso_local global i32 0, align 4
@gitmodules_done = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@FSCK_MSG_GITMODULES_BLOB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"non-blob found at .gitmodules\00", align 1
@FSCK_MSG_GITMODULES_MISSING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"unable to read .gitmodules blob\00", align 1
@OBJ_BLOB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsck_finish(%struct.fsck_options* %0) #0 {
  %2 = alloca %struct.fsck_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.oidset_iter, align 4
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca %struct.blob*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.object*, align 8
  store %struct.fsck_options* %0, %struct.fsck_options** %2, align 8
  store i32 0, i32* %3, align 4
  %11 = call i32 @oidset_iter_init(i32* @gitmodules_found, %struct.oidset_iter* %4)
  br label %12

12:                                               ; preds = %75, %47, %46, %26, %19, %1
  %13 = call %struct.object_id* @oidset_iter_next(%struct.oidset_iter* %4)
  store %struct.object_id* %13, %struct.object_id** %5, align 8
  %14 = icmp ne %struct.object_id* %13, null
  br i1 %14, label %15, label %78

15:                                               ; preds = %12
  %16 = load %struct.object_id*, %struct.object_id** %5, align 8
  %17 = call i64 @oidset_contains(i32* @gitmodules_done, %struct.object_id* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %12

20:                                               ; preds = %15
  %21 = load i32, i32* @the_repository, align 4
  %22 = load %struct.object_id*, %struct.object_id** %5, align 8
  %23 = call %struct.blob* @lookup_blob(i32 %21, %struct.object_id* %22)
  store %struct.blob* %23, %struct.blob** %6, align 8
  %24 = load %struct.blob*, %struct.blob** %6, align 8
  %25 = icmp ne %struct.blob* %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %20
  %27 = load %struct.object_id*, %struct.object_id** %5, align 8
  %28 = call %struct.object* @lookup_unknown_object(%struct.object_id* %27)
  store %struct.object* %28, %struct.object** %10, align 8
  %29 = load %struct.fsck_options*, %struct.fsck_options** %2, align 8
  %30 = load %struct.object*, %struct.object** %10, align 8
  %31 = load i32, i32* @FSCK_MSG_GITMODULES_BLOB, align 4
  %32 = call i32 @report(%struct.fsck_options* %29, %struct.object* %30, i32 %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  br label %12

35:                                               ; preds = %20
  %36 = load %struct.object_id*, %struct.object_id** %5, align 8
  %37 = call i8* @read_object_file(%struct.object_id* %36, i32* %7, i64* %8)
  store i8* %37, i8** %9, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %55, label %40

40:                                               ; preds = %35
  %41 = load %struct.blob*, %struct.blob** %6, align 8
  %42 = getelementptr inbounds %struct.blob, %struct.blob* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.object, %struct.object* %42, i32 0, i32 0
  %44 = call i64 @is_promisor_object(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %12

47:                                               ; preds = %40
  %48 = load %struct.fsck_options*, %struct.fsck_options** %2, align 8
  %49 = load %struct.blob*, %struct.blob** %6, align 8
  %50 = getelementptr inbounds %struct.blob, %struct.blob* %49, i32 0, i32 0
  %51 = load i32, i32* @FSCK_MSG_GITMODULES_MISSING, align 4
  %52 = call i32 @report(%struct.fsck_options* %48, %struct.object* %50, i32 %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* %3, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %3, align 4
  br label %12

55:                                               ; preds = %35
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @OBJ_BLOB, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load %struct.blob*, %struct.blob** %6, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load %struct.fsck_options*, %struct.fsck_options** %2, align 8
  %64 = call i32 @fsck_blob(%struct.blob* %60, i8* %61, i64 %62, %struct.fsck_options* %63)
  %65 = load i32, i32* %3, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %3, align 4
  br label %75

67:                                               ; preds = %55
  %68 = load %struct.fsck_options*, %struct.fsck_options** %2, align 8
  %69 = load %struct.blob*, %struct.blob** %6, align 8
  %70 = getelementptr inbounds %struct.blob, %struct.blob* %69, i32 0, i32 0
  %71 = load i32, i32* @FSCK_MSG_GITMODULES_BLOB, align 4
  %72 = call i32 @report(%struct.fsck_options* %68, %struct.object* %70, i32 %71, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* %3, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %67, %59
  %76 = load i8*, i8** %9, align 8
  %77 = call i32 @free(i8* %76)
  br label %12

78:                                               ; preds = %12
  %79 = call i32 @oidset_clear(i32* @gitmodules_found)
  %80 = call i32 @oidset_clear(i32* @gitmodules_done)
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @oidset_iter_init(i32*, %struct.oidset_iter*) #1

declare dso_local %struct.object_id* @oidset_iter_next(%struct.oidset_iter*) #1

declare dso_local i64 @oidset_contains(i32*, %struct.object_id*) #1

declare dso_local %struct.blob* @lookup_blob(i32, %struct.object_id*) #1

declare dso_local %struct.object* @lookup_unknown_object(%struct.object_id*) #1

declare dso_local i32 @report(%struct.fsck_options*, %struct.object*, i32, i8*) #1

declare dso_local i8* @read_object_file(%struct.object_id*, i32*, i64*) #1

declare dso_local i64 @is_promisor_object(i32*) #1

declare dso_local i32 @fsck_blob(%struct.blob*, i8*, i64, %struct.fsck_options*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @oidset_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
