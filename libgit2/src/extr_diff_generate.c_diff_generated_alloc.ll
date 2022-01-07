; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff_generate.c_diff_generated_alloc.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff_generate.c_diff_generated_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32 }
%struct.TYPE_11__ = type { i32 }

@GIT_DIFF_OPTIONS_INIT = common dso_local global i32 0, align 4
@GIT_DIFF_TYPE_GENERATED = common dso_local global i32 0, align 4
@git_patch_generated_from_diff = common dso_local global i32 0, align 4
@diff_generated_free = common dso_local global i32 0, align 4
@git_diff_delta__cmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (i32*, %struct.TYPE_11__*, %struct.TYPE_11__*)* @diff_generated_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @diff_generated_alloc(i32* %0, %struct.TYPE_11__* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  %10 = load i32, i32* @GIT_DIFF_OPTIONS_INIT, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %15 = icmp ne %struct.TYPE_11__* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %18 = icmp ne %struct.TYPE_11__* %17, null
  br label %19

19:                                               ; preds = %16, %13, %3
  %20 = phi i1 [ false, %13 ], [ false, %3 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = call %struct.TYPE_12__* @git__calloc(i32 1, i32 48)
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %8, align 8
  %24 = icmp eq %struct.TYPE_12__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %96

26:                                               ; preds = %19
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = call i32 @GIT_REFCOUNT_INC(%struct.TYPE_13__* %28)
  %30 = load i32, i32* @GIT_DIFF_TYPE_GENERATED, align 4
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 9
  store i32 %30, i32* %33, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 8
  store i32* %34, i32** %37, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 7
  store i32 %40, i32* %43, align 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 6
  store i32 %46, i32* %49, align 8
  %50 = load i32, i32* @git_patch_generated_from_diff, align 4
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 5
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* @diff_generated_free, align 4
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 4
  store i32 %54, i32* %57, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 3
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @git_attr_session__init(i32* %60, i32* %61)
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 2
  %66 = call i32 @memcpy(i32* %65, i32* %9, i32 4)
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = call i32 @git_pool_init(i32* %69, i32 1)
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i32, i32* @git_diff_delta__cmp, align 4
  %75 = call i64 @git_vector_init(i32* %73, i32 0, i32 %74)
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %26
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = call i32 @git_diff_free(%struct.TYPE_13__* %79)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %96

81:                                               ; preds = %26
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %85 = call i64 @git_iterator_ignore_case(%struct.TYPE_11__* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %81
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %89 = call i64 @git_iterator_ignore_case(%struct.TYPE_11__* %88)
  %90 = icmp ne i64 %89, 0
  br label %91

91:                                               ; preds = %87, %81
  %92 = phi i1 [ true, %81 ], [ %90, %87 ]
  %93 = zext i1 %92 to i32
  %94 = call i32 @git_diff__set_ignore_case(%struct.TYPE_13__* %83, i32 %93)
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %95, %struct.TYPE_12__** %4, align 8
  br label %96

96:                                               ; preds = %91, %77, %25
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  ret %struct.TYPE_12__* %97
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_12__* @git__calloc(i32, i32) #1

declare dso_local i32 @GIT_REFCOUNT_INC(%struct.TYPE_13__*) #1

declare dso_local i32 @git_attr_session__init(i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @git_pool_init(i32*, i32) #1

declare dso_local i64 @git_vector_init(i32*, i32, i32) #1

declare dso_local i32 @git_diff_free(%struct.TYPE_13__*) #1

declare dso_local i32 @git_diff__set_ignore_case(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @git_iterator_ignore_case(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
