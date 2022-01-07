; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_repo_read_index_unmerged.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_repo_read_index_unmerged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { %struct.index_state* }
%struct.index_state = type { i32, %struct.cache_entry** }
%struct.cache_entry = type { i32, i32, i32, i32 }

@CE_CONFLICTED = common dso_local global i32 0, align 4
@ADD_CACHE_SKIP_DFCHECK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: cannot drop to stage #0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @repo_read_index_unmerged(%struct.repository* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.repository*, align 8
  %4 = alloca %struct.index_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cache_entry*, align 8
  %8 = alloca %struct.cache_entry*, align 8
  %9 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %3, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.repository*, %struct.repository** %3, align 8
  %11 = call i32 @repo_read_index(%struct.repository* %10)
  %12 = load %struct.repository*, %struct.repository** %3, align 8
  %13 = getelementptr inbounds %struct.repository, %struct.repository* %12, i32 0, i32 0
  %14 = load %struct.index_state*, %struct.index_state** %13, align 8
  store %struct.index_state* %14, %struct.index_state** %4, align 8
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %72, %1
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.index_state*, %struct.index_state** %4, align 8
  %18 = getelementptr inbounds %struct.index_state, %struct.index_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %75

21:                                               ; preds = %15
  %22 = load %struct.index_state*, %struct.index_state** %4, align 8
  %23 = getelementptr inbounds %struct.index_state, %struct.index_state* %22, i32 0, i32 1
  %24 = load %struct.cache_entry**, %struct.cache_entry*** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %24, i64 %26
  %28 = load %struct.cache_entry*, %struct.cache_entry** %27, align 8
  store %struct.cache_entry* %28, %struct.cache_entry** %7, align 8
  %29 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %30 = call i32 @ce_stage(%struct.cache_entry* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %21
  br label %72

33:                                               ; preds = %21
  store i32 1, i32* %6, align 4
  %34 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %35 = call i32 @ce_namelen(%struct.cache_entry* %34)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.index_state*, %struct.index_state** %4, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call %struct.cache_entry* @make_empty_cache_entry(%struct.index_state* %36, i32 %37)
  store %struct.cache_entry* %38, %struct.cache_entry** %8, align 8
  %39 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %40 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %43 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @memcpy(i32 %41, i32 %44, i32 %45)
  %47 = call i32 @create_ce_flags(i32 0)
  %48 = load i32, i32* @CE_CONFLICTED, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %51 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %54 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %56 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %59 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.index_state*, %struct.index_state** %4, align 8
  %61 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %62 = load i32, i32* @ADD_CACHE_SKIP_DFCHECK, align 4
  %63 = call i64 @add_index_entry(%struct.index_state* %60, %struct.cache_entry* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %33
  %66 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %67 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %68 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @error(i32 %66, i32 %69)
  store i32 %70, i32* %2, align 4
  br label %77

71:                                               ; preds = %33
  br label %72

72:                                               ; preds = %71, %32
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %15

75:                                               ; preds = %15
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %75, %65
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @repo_read_index(%struct.repository*) #1

declare dso_local i32 @ce_stage(%struct.cache_entry*) #1

declare dso_local i32 @ce_namelen(%struct.cache_entry*) #1

declare dso_local %struct.cache_entry* @make_empty_cache_entry(%struct.index_state*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @create_ce_flags(i32) #1

declare dso_local i64 @add_index_entry(%struct.index_state*, %struct.cache_entry*, i32) #1

declare dso_local i32 @error(i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
