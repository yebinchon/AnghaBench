; ModuleID = '/home/carl/AnghaBench/git/extr_shallow.c_prepare_shallow_info.c'
source_filename = "/home/carl/AnghaBench/git/extr_shallow.c_prepare_shallow_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shallow_info = type { i32*, i32*, i32, i32, %struct.oid_array* }
%struct.oid_array = type { i32, i32* }
%struct.commit_graft = type { i64 }

@trace_shallow = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"shallow: prepare_shallow_info\0A\00", align 1
@the_repository = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prepare_shallow_info(%struct.shallow_info* %0, %struct.oid_array* %1) #0 {
  %3 = alloca %struct.shallow_info*, align 8
  %4 = alloca %struct.oid_array*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.commit_graft*, align 8
  store %struct.shallow_info* %0, %struct.shallow_info** %3, align 8
  store %struct.oid_array* %1, %struct.oid_array** %4, align 8
  %7 = call i32 @trace_printf_key(i32* @trace_shallow, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.shallow_info*, %struct.shallow_info** %3, align 8
  %9 = call i32 @memset(%struct.shallow_info* %8, i32 0, i32 32)
  %10 = load %struct.oid_array*, %struct.oid_array** %4, align 8
  %11 = load %struct.shallow_info*, %struct.shallow_info** %3, align 8
  %12 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %11, i32 0, i32 4
  store %struct.oid_array* %10, %struct.oid_array** %12, align 8
  %13 = load %struct.oid_array*, %struct.oid_array** %4, align 8
  %14 = icmp ne %struct.oid_array* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %89

16:                                               ; preds = %2
  %17 = load %struct.shallow_info*, %struct.shallow_info** %3, align 8
  %18 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.oid_array*, %struct.oid_array** %4, align 8
  %21 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @ALLOC_ARRAY(i32* %19, i32 %22)
  %24 = load %struct.shallow_info*, %struct.shallow_info** %3, align 8
  %25 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.oid_array*, %struct.oid_array** %4, align 8
  %28 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ALLOC_ARRAY(i32* %26, i32 %29)
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %86, %16
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.oid_array*, %struct.oid_array** %4, align 8
  %34 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %89

37:                                               ; preds = %31
  %38 = load %struct.oid_array*, %struct.oid_array** %4, align 8
  %39 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = call i64 @has_object_file(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %74

46:                                               ; preds = %37
  %47 = load i32, i32* @the_repository, align 4
  %48 = load %struct.oid_array*, %struct.oid_array** %4, align 8
  %49 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = call %struct.commit_graft* @lookup_commit_graft(i32 %47, i32* %53)
  store %struct.commit_graft* %54, %struct.commit_graft** %6, align 8
  %55 = load %struct.commit_graft*, %struct.commit_graft** %6, align 8
  %56 = icmp ne %struct.commit_graft* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %46
  %58 = load %struct.commit_graft*, %struct.commit_graft** %6, align 8
  %59 = getelementptr inbounds %struct.commit_graft, %struct.commit_graft* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %86

63:                                               ; preds = %57, %46
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.shallow_info*, %struct.shallow_info** %3, align 8
  %66 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.shallow_info*, %struct.shallow_info** %3, align 8
  %69 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i32, i32* %67, i64 %72
  store i32 %64, i32* %73, align 4
  br label %85

74:                                               ; preds = %37
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.shallow_info*, %struct.shallow_info** %3, align 8
  %77 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.shallow_info*, %struct.shallow_info** %3, align 8
  %80 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %78, i64 %83
  store i32 %75, i32* %84, align 4
  br label %85

85:                                               ; preds = %74, %63
  br label %86

86:                                               ; preds = %85, %62
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  br label %31

89:                                               ; preds = %15, %31
  ret void
}

declare dso_local i32 @trace_printf_key(i32*, i8*) #1

declare dso_local i32 @memset(%struct.shallow_info*, i32, i32) #1

declare dso_local i32 @ALLOC_ARRAY(i32*, i32) #1

declare dso_local i64 @has_object_file(i32*) #1

declare dso_local %struct.commit_graft* @lookup_commit_graft(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
