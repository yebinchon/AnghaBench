; ModuleID = '/home/carl/AnghaBench/git/extr_walker.c_process_object.c'
source_filename = "/home/carl/AnghaBench/git/extr_walker.c_process_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.walker = type { i32 }
%struct.object = type { i64, i32 }
%struct.commit = type { i32 }
%struct.tree = type { i32 }
%struct.tag = type { i32 }

@OBJ_COMMIT = common dso_local global i64 0, align 8
@OBJ_TREE = common dso_local global i64 0, align 8
@OBJ_BLOB = common dso_local global i64 0, align 8
@OBJ_TAG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"Unable to determine requirements of type %s for %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.walker*, %struct.object*)* @process_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_object(%struct.walker* %0, %struct.object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.walker*, align 8
  %5 = alloca %struct.object*, align 8
  store %struct.walker* %0, %struct.walker** %4, align 8
  store %struct.object* %1, %struct.object** %5, align 8
  %6 = load %struct.object*, %struct.object** %5, align 8
  %7 = getelementptr inbounds %struct.object, %struct.object* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @OBJ_COMMIT, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.walker*, %struct.walker** %4, align 8
  %13 = load %struct.object*, %struct.object** %5, align 8
  %14 = bitcast %struct.object* %13 to %struct.commit*
  %15 = call i64 @process_commit(%struct.walker* %12, %struct.commit* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 -1, i32* %3, align 4
  br label %63

18:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %63

19:                                               ; preds = %2
  %20 = load %struct.object*, %struct.object** %5, align 8
  %21 = getelementptr inbounds %struct.object, %struct.object* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @OBJ_TREE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load %struct.walker*, %struct.walker** %4, align 8
  %27 = load %struct.object*, %struct.object** %5, align 8
  %28 = bitcast %struct.object* %27 to %struct.tree*
  %29 = call i64 @process_tree(%struct.walker* %26, %struct.tree* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 -1, i32* %3, align 4
  br label %63

32:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %63

33:                                               ; preds = %19
  %34 = load %struct.object*, %struct.object** %5, align 8
  %35 = getelementptr inbounds %struct.object, %struct.object* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @OBJ_BLOB, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %63

40:                                               ; preds = %33
  %41 = load %struct.object*, %struct.object** %5, align 8
  %42 = getelementptr inbounds %struct.object, %struct.object* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @OBJ_TAG, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = load %struct.walker*, %struct.walker** %4, align 8
  %48 = load %struct.object*, %struct.object** %5, align 8
  %49 = bitcast %struct.object* %48 to %struct.tag*
  %50 = call i64 @process_tag(%struct.walker* %47, %struct.tag* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 -1, i32* %3, align 4
  br label %63

53:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %63

54:                                               ; preds = %40
  %55 = load %struct.object*, %struct.object** %5, align 8
  %56 = getelementptr inbounds %struct.object, %struct.object* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @type_name(i64 %57)
  %59 = load %struct.object*, %struct.object** %5, align 8
  %60 = getelementptr inbounds %struct.object, %struct.object* %59, i32 0, i32 1
  %61 = call i8* @oid_to_hex(i32* %60)
  %62 = call i32 @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %58, i8* %61)
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %54, %53, %52, %39, %32, %31, %18, %17
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @process_commit(%struct.walker*, %struct.commit*) #1

declare dso_local i64 @process_tree(%struct.walker*, %struct.tree*) #1

declare dso_local i64 @process_tag(%struct.walker*, %struct.tag*) #1

declare dso_local i32 @error(i8*, i32, i8*) #1

declare dso_local i32 @type_name(i64) #1

declare dso_local i8* @oid_to_hex(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
