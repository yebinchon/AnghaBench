; ModuleID = '/home/carl/AnghaBench/git/extr_unpack-trees.c_merged_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_unpack-trees.c_merged_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32, i32 }
%struct.unpack_trees_options = type { i32 }

@CE_UPDATE = common dso_local global i32 0, align 4
@CE_ADDED = common dso_local global i32 0, align 4
@CE_NEW_SKIP_WORKTREE = common dso_local global i32 0, align 4
@ERROR_WOULD_LOSE_UNTRACKED_OVERWRITTEN = common dso_local global i32 0, align 4
@CE_CONFLICTED = common dso_local global i32 0, align 4
@CE_SKIP_WORKTREE = common dso_local global i32 0, align 4
@CE_STAGEMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_entry*, %struct.cache_entry*, %struct.unpack_trees_options*)* @merged_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @merged_entry(%struct.cache_entry* %0, %struct.cache_entry* %1, %struct.unpack_trees_options* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cache_entry*, align 8
  %6 = alloca %struct.cache_entry*, align 8
  %7 = alloca %struct.unpack_trees_options*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cache_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cache_entry* %0, %struct.cache_entry** %5, align 8
  store %struct.cache_entry* %1, %struct.cache_entry** %6, align 8
  store %struct.unpack_trees_options* %2, %struct.unpack_trees_options** %7, align 8
  %12 = load i32, i32* @CE_UPDATE, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %14 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %7, align 8
  %15 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %14, i32 0, i32 0
  %16 = call %struct.cache_entry* @dup_cache_entry(%struct.cache_entry* %13, i32* %15)
  store %struct.cache_entry* %16, %struct.cache_entry** %9, align 8
  %17 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %18 = icmp ne %struct.cache_entry* %17, null
  br i1 %18, label %56, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @CE_ADDED, align 4
  %21 = load i32, i32* %8, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* @CE_NEW_SKIP_WORKTREE, align 4
  %24 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %25 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %29 = load i32, i32* @ERROR_WOULD_LOSE_UNTRACKED_OVERWRITTEN, align 4
  %30 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %7, align 8
  %31 = call i64 @verify_absent(%struct.cache_entry* %28, i32 %29, %struct.unpack_trees_options* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %19
  %34 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %35 = call i32 @discard_cache_entry(%struct.cache_entry* %34)
  store i32 -1, i32* %4, align 4
  br label %124

36:                                               ; preds = %19
  %37 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %38 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %7, align 8
  %39 = call i32 @invalidate_ce_path(%struct.cache_entry* %37, %struct.unpack_trees_options* %38)
  %40 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %41 = call i64 @submodule_from_ce(%struct.cache_entry* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %36
  %44 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %45 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %46 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %45, i32 0, i32 1
  %47 = call i32* @oid_to_hex(i32* %46)
  %48 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %7, align 8
  %49 = call i32 @check_submodule_move_head(%struct.cache_entry* %44, i32* null, i32* %47, %struct.unpack_trees_options* %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %4, align 4
  br label %124

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %54, %36
  br label %118

56:                                               ; preds = %3
  %57 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %58 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @CE_CONFLICTED, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %113, label %63

63:                                               ; preds = %56
  %64 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %65 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %66 = call i64 @same(%struct.cache_entry* %64, %struct.cache_entry* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %70 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %71 = call i32 @copy_cache_entry(%struct.cache_entry* %69, %struct.cache_entry* %70)
  store i32 0, i32* %8, align 4
  br label %93

72:                                               ; preds = %63
  %73 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %74 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %7, align 8
  %75 = call i64 @verify_uptodate(%struct.cache_entry* %73, %struct.unpack_trees_options* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %79 = call i32 @discard_cache_entry(%struct.cache_entry* %78)
  store i32 -1, i32* %4, align 4
  br label %124

80:                                               ; preds = %72
  %81 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %82 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @CE_SKIP_WORKTREE, align 4
  %85 = load i32, i32* @CE_NEW_SKIP_WORKTREE, align 4
  %86 = or i32 %84, %85
  %87 = and i32 %83, %86
  %88 = load i32, i32* %8, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %8, align 4
  %90 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %91 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %7, align 8
  %92 = call i32 @invalidate_ce_path(%struct.cache_entry* %90, %struct.unpack_trees_options* %91)
  br label %93

93:                                               ; preds = %80, %68
  %94 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %95 = call i64 @submodule_from_ce(%struct.cache_entry* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %93
  %98 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %99 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %100 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %99, i32 0, i32 1
  %101 = call i32* @oid_to_hex(i32* %100)
  %102 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %103 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %102, i32 0, i32 1
  %104 = call i32* @oid_to_hex(i32* %103)
  %105 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %7, align 8
  %106 = call i32 @check_submodule_move_head(%struct.cache_entry* %98, i32* %101, i32* %104, %struct.unpack_trees_options* %105)
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %97
  %110 = load i32, i32* %11, align 4
  store i32 %110, i32* %4, align 4
  br label %124

111:                                              ; preds = %97
  br label %112

112:                                              ; preds = %111, %93
  br label %117

113:                                              ; preds = %56
  %114 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %115 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %7, align 8
  %116 = call i32 @invalidate_ce_path(%struct.cache_entry* %114, %struct.unpack_trees_options* %115)
  br label %117

117:                                              ; preds = %113, %112
  br label %118

118:                                              ; preds = %117, %55
  %119 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %7, align 8
  %120 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* @CE_STAGEMASK, align 4
  %123 = call i32 @do_add_entry(%struct.unpack_trees_options* %119, %struct.cache_entry* %120, i32 %121, i32 %122)
  store i32 1, i32* %4, align 4
  br label %124

124:                                              ; preds = %118, %109, %77, %52, %33
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local %struct.cache_entry* @dup_cache_entry(%struct.cache_entry*, i32*) #1

declare dso_local i64 @verify_absent(%struct.cache_entry*, i32, %struct.unpack_trees_options*) #1

declare dso_local i32 @discard_cache_entry(%struct.cache_entry*) #1

declare dso_local i32 @invalidate_ce_path(%struct.cache_entry*, %struct.unpack_trees_options*) #1

declare dso_local i64 @submodule_from_ce(%struct.cache_entry*) #1

declare dso_local i32 @check_submodule_move_head(%struct.cache_entry*, i32*, i32*, %struct.unpack_trees_options*) #1

declare dso_local i32* @oid_to_hex(i32*) #1

declare dso_local i64 @same(%struct.cache_entry*, %struct.cache_entry*) #1

declare dso_local i32 @copy_cache_entry(%struct.cache_entry*, %struct.cache_entry*) #1

declare dso_local i64 @verify_uptodate(%struct.cache_entry*, %struct.unpack_trees_options*) #1

declare dso_local i32 @do_add_entry(%struct.unpack_trees_options*, %struct.cache_entry*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
