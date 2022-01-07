; ModuleID = '/home/carl/AnghaBench/git/extr_unpack-trees.c_oneway_merge.c'
source_filename = "/home/carl/AnghaBench/git/extr_unpack-trees.c_oneway_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32, i32 }
%struct.unpack_trees_options = type { i32, i64, i32, i64, %struct.cache_entry* }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Cannot do a oneway merge of %d trees\00", align 1
@CE_MATCH_IGNORE_VALID = common dso_local global i32 0, align 4
@CE_MATCH_IGNORE_SKIP_WORKTREE = common dso_local global i32 0, align 4
@CE_UPDATE = common dso_local global i32 0, align 4
@CE_STAGEMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oneway_merge(%struct.cache_entry** %0, %struct.unpack_trees_options* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cache_entry**, align 8
  %5 = alloca %struct.unpack_trees_options*, align 8
  %6 = alloca %struct.cache_entry*, align 8
  %7 = alloca %struct.cache_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.stat, align 4
  store %struct.cache_entry** %0, %struct.cache_entry*** %4, align 8
  store %struct.unpack_trees_options* %1, %struct.unpack_trees_options** %5, align 8
  %10 = load %struct.cache_entry**, %struct.cache_entry*** %4, align 8
  %11 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %10, i64 0
  %12 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  store %struct.cache_entry* %12, %struct.cache_entry** %6, align 8
  %13 = load %struct.cache_entry**, %struct.cache_entry*** %4, align 8
  %14 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %13, i64 1
  %15 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  store %struct.cache_entry* %15, %struct.cache_entry** %7, align 8
  %16 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %17 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %22 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 %24, i32* %3, align 4
  br label %120

25:                                               ; preds = %2
  %26 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %27 = icmp ne %struct.cache_entry* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %30 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %31 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %30, i32 0, i32 4
  %32 = load %struct.cache_entry*, %struct.cache_entry** %31, align 8
  %33 = icmp eq %struct.cache_entry* %29, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %28, %25
  %35 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %36 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %37 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %38 = call i32 @deleted_entry(%struct.cache_entry* %35, %struct.cache_entry* %36, %struct.unpack_trees_options* %37)
  store i32 %38, i32* %3, align 4
  br label %120

39:                                               ; preds = %28
  %40 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %41 = icmp ne %struct.cache_entry* %40, null
  br i1 %41, label %42, label %115

42:                                               ; preds = %39
  %43 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %44 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %45 = call i64 @same(%struct.cache_entry* %43, %struct.cache_entry* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %115

47:                                               ; preds = %42
  store i32 0, i32* %8, align 4
  %48 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %49 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %86

52:                                               ; preds = %47
  %53 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %54 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %86

57:                                               ; preds = %52
  %58 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %59 = call i32 @ce_uptodate(%struct.cache_entry* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %86, label %61

61:                                               ; preds = %57
  %62 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %63 = call i32 @ce_skip_worktree(%struct.cache_entry* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %86, label %65

65:                                               ; preds = %61
  %66 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %67 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @lstat(i32 %68, %struct.stat* %9)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %81, label %71

71:                                               ; preds = %65
  %72 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %73 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %76 = load i32, i32* @CE_MATCH_IGNORE_VALID, align 4
  %77 = load i32, i32* @CE_MATCH_IGNORE_SKIP_WORKTREE, align 4
  %78 = or i32 %76, %77
  %79 = call i64 @ie_match_stat(i32 %74, %struct.cache_entry* %75, %struct.stat* %9, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %71, %65
  %82 = load i32, i32* @CE_UPDATE, align 4
  %83 = load i32, i32* %8, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %81, %71
  br label %86

86:                                               ; preds = %85, %61, %57, %52, %47
  %87 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %88 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %109

91:                                               ; preds = %86
  %92 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %93 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @S_ISGITLINK(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %91
  %98 = call i64 (...) @should_update_submodules()
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %97
  %101 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %102 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %103 = call i32 @verify_uptodate(%struct.cache_entry* %101, %struct.unpack_trees_options* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %100
  %106 = load i32, i32* @CE_UPDATE, align 4
  %107 = load i32, i32* %8, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %8, align 4
  br label %109

109:                                              ; preds = %105, %100, %97, %91, %86
  %110 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %111 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @CE_STAGEMASK, align 4
  %114 = call i32 @add_entry(%struct.unpack_trees_options* %110, %struct.cache_entry* %111, i32 %112, i32 %113)
  store i32 0, i32* %3, align 4
  br label %120

115:                                              ; preds = %42, %39
  %116 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %117 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %118 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %119 = call i32 @merged_entry(%struct.cache_entry* %116, %struct.cache_entry* %117, %struct.unpack_trees_options* %118)
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %115, %109, %34, %20
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @deleted_entry(%struct.cache_entry*, %struct.cache_entry*, %struct.unpack_trees_options*) #1

declare dso_local i64 @same(%struct.cache_entry*, %struct.cache_entry*) #1

declare dso_local i32 @ce_uptodate(%struct.cache_entry*) #1

declare dso_local i32 @ce_skip_worktree(%struct.cache_entry*) #1

declare dso_local i64 @lstat(i32, %struct.stat*) #1

declare dso_local i64 @ie_match_stat(i32, %struct.cache_entry*, %struct.stat*, i32) #1

declare dso_local i64 @S_ISGITLINK(i32) #1

declare dso_local i64 @should_update_submodules(...) #1

declare dso_local i32 @verify_uptodate(%struct.cache_entry*, %struct.unpack_trees_options*) #1

declare dso_local i32 @add_entry(%struct.unpack_trees_options*, %struct.cache_entry*, i32, i32) #1

declare dso_local i32 @merged_entry(%struct.cache_entry*, %struct.cache_entry*, %struct.unpack_trees_options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
