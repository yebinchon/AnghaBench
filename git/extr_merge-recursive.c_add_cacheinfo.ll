; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_add_cacheinfo.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_add_cacheinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_options = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.index_state* }
%struct.index_state = type { i32 }
%struct.diff_filespec = type { i32, i32 }
%struct.cache_entry = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"add_cacheinfo failed for path '%s'; merge aborting.\00", align 1
@CE_MATCH_REFRESH = common dso_local global i32 0, align 4
@CE_MATCH_IGNORE_MISSING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"add_cacheinfo failed to refresh for path '%s'; merge aborting.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.merge_options*, %struct.diff_filespec*, i8*, i32, i32, i32)* @add_cacheinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_cacheinfo(%struct.merge_options* %0, %struct.diff_filespec* %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.merge_options*, align 8
  %9 = alloca %struct.diff_filespec*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.index_state*, align 8
  %15 = alloca %struct.cache_entry*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.cache_entry*, align 8
  store %struct.merge_options* %0, %struct.merge_options** %8, align 8
  store %struct.diff_filespec* %1, %struct.diff_filespec** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %19 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.index_state*, %struct.index_state** %21, align 8
  store %struct.index_state* %22, %struct.index_state** %14, align 8
  %23 = load %struct.index_state*, %struct.index_state** %14, align 8
  %24 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %25 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %28 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %27, i32 0, i32 0
  %29 = load i8*, i8** %10, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call %struct.cache_entry* @make_cache_entry(%struct.index_state* %23, i32 %26, i32* %28, i8* %29, i32 %30, i32 0)
  store %struct.cache_entry* %31, %struct.cache_entry** %15, align 8
  %32 = load %struct.cache_entry*, %struct.cache_entry** %15, align 8
  %33 = icmp ne %struct.cache_entry* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %6
  %35 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %36 = call i32 @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 @err(%struct.merge_options* %35, i32 %36, i8* %37)
  store i32 %38, i32* %7, align 4
  br label %72

39:                                               ; preds = %6
  %40 = load %struct.index_state*, %struct.index_state** %14, align 8
  %41 = load %struct.cache_entry*, %struct.cache_entry** %15, align 8
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @add_index_entry(%struct.index_state* %40, %struct.cache_entry* %41, i32 %42)
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %70

46:                                               ; preds = %39
  %47 = load %struct.index_state*, %struct.index_state** %14, align 8
  %48 = load %struct.cache_entry*, %struct.cache_entry** %15, align 8
  %49 = load i32, i32* @CE_MATCH_REFRESH, align 4
  %50 = load i32, i32* @CE_MATCH_IGNORE_MISSING, align 4
  %51 = or i32 %49, %50
  %52 = call %struct.cache_entry* @refresh_cache_entry(%struct.index_state* %47, %struct.cache_entry* %48, i32 %51)
  store %struct.cache_entry* %52, %struct.cache_entry** %17, align 8
  %53 = load %struct.cache_entry*, %struct.cache_entry** %17, align 8
  %54 = icmp ne %struct.cache_entry* %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %46
  %56 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %57 = call i32 @_(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i8*, i8** %10, align 8
  %59 = call i32 @err(%struct.merge_options* %56, i32 %57, i8* %58)
  store i32 %59, i32* %7, align 4
  br label %72

60:                                               ; preds = %46
  %61 = load %struct.cache_entry*, %struct.cache_entry** %17, align 8
  %62 = load %struct.cache_entry*, %struct.cache_entry** %15, align 8
  %63 = icmp ne %struct.cache_entry* %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load %struct.index_state*, %struct.index_state** %14, align 8
  %66 = load %struct.cache_entry*, %struct.cache_entry** %17, align 8
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @add_index_entry(%struct.index_state* %65, %struct.cache_entry* %66, i32 %67)
  store i32 %68, i32* %16, align 4
  br label %69

69:                                               ; preds = %64, %60
  br label %70

70:                                               ; preds = %69, %39
  %71 = load i32, i32* %16, align 4
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %70, %55, %34
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

declare dso_local %struct.cache_entry* @make_cache_entry(%struct.index_state*, i32, i32*, i8*, i32, i32) #1

declare dso_local i32 @err(%struct.merge_options*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @add_index_entry(%struct.index_state*, %struct.cache_entry*, i32) #1

declare dso_local %struct.cache_entry* @refresh_cache_entry(%struct.index_state*, %struct.cache_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
