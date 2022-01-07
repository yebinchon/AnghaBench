; ModuleID = '/home/carl/AnghaBench/git/extr_unpack-trees.c_verify_uptodate_1.c'
source_filename = "/home/carl/AnghaBench/git/extr_unpack-trees.c_verify_uptodate_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32, i32, i32, i32 }
%struct.unpack_trees_options = type { i32, i64, i64 }
%struct.stat = type { i32 }

@CE_VALID = common dso_local global i32 0, align 4
@CE_MATCH_IGNORE_VALID = common dso_local global i32 0, align 4
@CE_MATCH_IGNORE_SKIP_WORKTREE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_entry*, %struct.unpack_trees_options*, i32)* @verify_uptodate_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_uptodate_1(%struct.cache_entry* %0, %struct.unpack_trees_options* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cache_entry*, align 8
  %6 = alloca %struct.unpack_trees_options*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cache_entry* %0, %struct.cache_entry** %5, align 8
  store %struct.unpack_trees_options* %1, %struct.unpack_trees_options** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %13 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %100

17:                                               ; preds = %3
  %18 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %19 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CE_VALID, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %26 = call i64 @ce_skip_worktree(%struct.cache_entry* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %17
  br label %40

29:                                               ; preds = %24
  %30 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %31 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %36 = call i64 @ce_uptodate(%struct.cache_entry* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34, %29
  store i32 0, i32* %4, align 4
  br label %100

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %39, %28
  %41 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %42 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @lstat(i32 %43, %struct.stat* %8)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %88, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @CE_MATCH_IGNORE_VALID, align 4
  %48 = load i32, i32* @CE_MATCH_IGNORE_SKIP_WORKTREE, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %9, align 4
  %50 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %51 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @ie_match_stat(i32 %52, %struct.cache_entry* %53, %struct.stat* %8, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %57 = call i64 @submodule_from_ce(%struct.cache_entry* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %46
  %60 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %61 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %62 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %61, i32 0, i32 3
  %63 = call i32 @oid_to_hex(i32* %62)
  %64 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %65 = call i32 @check_submodule_move_head(%struct.cache_entry* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %63, %struct.unpack_trees_options* %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %59
  %69 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %72 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @add_rejected_path(%struct.unpack_trees_options* %69, i32 %70, i32 %73)
  store i32 %74, i32* %4, align 4
  br label %100

75:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %100

76:                                               ; preds = %46
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %76
  store i32 0, i32* %4, align 4
  br label %100

80:                                               ; preds = %76
  %81 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %82 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @S_ISGITLINK(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  store i32 0, i32* %4, align 4
  br label %100

87:                                               ; preds = %80
  store i64 0, i64* @errno, align 8
  br label %88

88:                                               ; preds = %87, %40
  %89 = load i64, i64* @errno, align 8
  %90 = load i64, i64* @ENOENT, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  store i32 0, i32* %4, align 4
  br label %100

93:                                               ; preds = %88
  %94 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %97 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @add_rejected_path(%struct.unpack_trees_options* %94, i32 %95, i32 %98)
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %93, %92, %86, %79, %75, %68, %38, %16
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i64 @ce_skip_worktree(%struct.cache_entry*) #1

declare dso_local i64 @ce_uptodate(%struct.cache_entry*) #1

declare dso_local i32 @lstat(i32, %struct.stat*) #1

declare dso_local i32 @ie_match_stat(i32, %struct.cache_entry*, %struct.stat*, i32) #1

declare dso_local i64 @submodule_from_ce(%struct.cache_entry*) #1

declare dso_local i32 @check_submodule_move_head(%struct.cache_entry*, i8*, i32, %struct.unpack_trees_options*) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i32 @add_rejected_path(%struct.unpack_trees_options*, i32, i32) #1

declare dso_local i64 @S_ISGITLINK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
