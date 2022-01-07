; ModuleID = '/home/carl/AnghaBench/git/extr_diff-lib.c_do_oneway_diff.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff-lib.c_do_oneway_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unpack_trees_options = type { i64, %struct.rev_info* }
%struct.rev_info = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.cache_entry = type { i32, i32, i32, i32 }
%struct.diff_filepair = type { i32 }

@CE_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.unpack_trees_options*, %struct.cache_entry*, %struct.cache_entry*)* @do_oneway_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_oneway_diff(%struct.unpack_trees_options* %0, %struct.cache_entry* %1, %struct.cache_entry* %2) #0 {
  %4 = alloca %struct.unpack_trees_options*, align 8
  %5 = alloca %struct.cache_entry*, align 8
  %6 = alloca %struct.cache_entry*, align 8
  %7 = alloca %struct.rev_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.diff_filepair*, align 8
  store %struct.unpack_trees_options* %0, %struct.unpack_trees_options** %4, align 8
  store %struct.cache_entry* %1, %struct.cache_entry** %5, align 8
  store %struct.cache_entry* %2, %struct.cache_entry** %6, align 8
  %11 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %4, align 8
  %12 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %11, i32 0, i32 1
  %13 = load %struct.rev_info*, %struct.rev_info** %12, align 8
  store %struct.rev_info* %13, %struct.rev_info** %7, align 8
  %14 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %4, align 8
  %15 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %3
  %19 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %20 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %26 = icmp ne %struct.cache_entry* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %29 = call i64 @ce_intent_to_add(%struct.cache_entry* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  store %struct.cache_entry* null, %struct.cache_entry** %5, align 8
  %32 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %33 = icmp ne %struct.cache_entry* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  br label %125

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %35, %27, %24, %18, %3
  %37 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %4, align 8
  %38 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %59, label %41

41:                                               ; preds = %36
  %42 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %43 = icmp ne %struct.cache_entry* %42, null
  br i1 %43, label %44, label %57

44:                                               ; preds = %41
  %45 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %46 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @CE_VALID, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %44
  %52 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %53 = call i64 @ce_skip_worktree(%struct.cache_entry* %52)
  %54 = icmp ne i64 %53, 0
  br label %55

55:                                               ; preds = %51, %44
  %56 = phi i1 [ true, %44 ], [ %54, %51 ]
  br label %57

57:                                               ; preds = %55, %41
  %58 = phi i1 [ false, %41 ], [ %56, %55 ]
  br label %59

59:                                               ; preds = %57, %36
  %60 = phi i1 [ true, %36 ], [ %58, %57 ]
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %9, align 4
  %62 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %63 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %97

70:                                               ; preds = %59
  %71 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %72 = icmp ne %struct.cache_entry* %71, null
  br i1 %72, label %73, label %97

73:                                               ; preds = %70
  %74 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %75 = call i64 @ce_stage(%struct.cache_entry* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %97

77:                                               ; preds = %73
  %78 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %79 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %78, i32 0, i32 0
  %80 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %81 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call %struct.diff_filepair* @diff_unmerge(%struct.TYPE_2__* %79, i32 %82)
  store %struct.diff_filepair* %83, %struct.diff_filepair** %10, align 8
  %84 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %85 = icmp ne %struct.cache_entry* %84, null
  br i1 %85, label %86, label %96

86:                                               ; preds = %77
  %87 = load %struct.diff_filepair*, %struct.diff_filepair** %10, align 8
  %88 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %91 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %90, i32 0, i32 2
  %92 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %93 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @fill_filespec(i32 %89, i32* %91, i32 1, i32 %94)
  br label %96

96:                                               ; preds = %86, %77
  br label %125

97:                                               ; preds = %73, %70, %59
  %98 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %99 = icmp ne %struct.cache_entry* %98, null
  br i1 %99, label %106, label %100

100:                                              ; preds = %97
  %101 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %102 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @show_new_file(%struct.rev_info* %101, %struct.cache_entry* %102, i32 %103, i32 %104)
  br label %125

106:                                              ; preds = %97
  %107 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %108 = icmp ne %struct.cache_entry* %107, null
  br i1 %108, label %118, label %109

109:                                              ; preds = %106
  %110 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %111 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %112 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %113 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %112, i32 0, i32 2
  %114 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %115 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @diff_index_show_file(%struct.rev_info* %110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %struct.cache_entry* %111, i32* %113, i32 1, i32 %116, i32 0)
  br label %125

118:                                              ; preds = %106
  %119 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %120 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %121 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @show_modified(%struct.rev_info* %119, %struct.cache_entry* %120, %struct.cache_entry* %121, i32 1, i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %118, %109, %100, %96, %34
  ret void
}

declare dso_local i64 @ce_intent_to_add(%struct.cache_entry*) #1

declare dso_local i64 @ce_skip_worktree(%struct.cache_entry*) #1

declare dso_local i64 @ce_stage(%struct.cache_entry*) #1

declare dso_local %struct.diff_filepair* @diff_unmerge(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @fill_filespec(i32, i32*, i32, i32) #1

declare dso_local i32 @show_new_file(%struct.rev_info*, %struct.cache_entry*, i32, i32) #1

declare dso_local i32 @diff_index_show_file(%struct.rev_info*, i8*, %struct.cache_entry*, i32*, i32, i32, i32) #1

declare dso_local i32 @show_modified(%struct.rev_info*, %struct.cache_entry*, %struct.cache_entry*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
