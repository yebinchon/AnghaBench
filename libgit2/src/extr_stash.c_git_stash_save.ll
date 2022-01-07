; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_stash.c_git_stash_save.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_stash.c_git_stash_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"stash save\00", align 1
@GIT_STASH_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@GIT_STASH_INCLUDE_IGNORED = common dso_local global i32 0, align 4
@GIT_STASH_KEEP_INDEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_stash_save(i32* %0, i32* %1, i32* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  %18 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %18, i32* %16, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %5
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32*, i32** %9, align 8
  %26 = icmp ne i32* %25, null
  br label %27

27:                                               ; preds = %24, %21, %5
  %28 = phi i1 [ false, %21 ], [ false, %5 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @git_repository__ensure_not_bare(i32* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %32, i32* %17, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %17, align 4
  store i32 %35, i32* %6, align 4
  br label %129

36:                                               ; preds = %27
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @retrieve_base_commit_and_message(i32** %13, i32* %16, i32* %37)
  store i32 %38, i32* %17, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %118

41:                                               ; preds = %36
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @ensure_there_are_changes_to_stash(i32* %42, i32 %43)
  store i32 %44, i32* %17, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %118

47:                                               ; preds = %41
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @git_repository_index(i32** %12, i32* %48)
  store i32 %49, i32* %17, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %118

52:                                               ; preds = %47
  %53 = load i32*, i32** %8, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = call i32 @git_buf_cstr(i32* %16)
  %57 = load i32*, i32** %13, align 8
  %58 = call i32 @commit_index(i32** %14, i32* %53, i32* %54, i32* %55, i32 %56, i32* %57)
  store i32 %58, i32* %17, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %118

61:                                               ; preds = %52
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @GIT_STASH_INCLUDE_UNTRACKED, align 4
  %64 = load i32, i32* @GIT_STASH_INCLUDE_IGNORED, align 4
  %65 = or i32 %63, %64
  %66 = and i32 %62, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %61
  %69 = load i32*, i32** %8, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @git_buf_cstr(i32* %16)
  %72 = load i32*, i32** %14, align 8
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @commit_untracked(i32** %15, i32* %69, i32* %70, i32 %71, i32* %72, i32 %73)
  store i32 %74, i32* %17, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %118

77:                                               ; preds = %68, %61
  %78 = load i8*, i8** %10, align 8
  %79 = call i32 @prepare_worktree_commit_message(i32* %16, i8* %78)
  store i32 %79, i32* %17, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %118

82:                                               ; preds = %77
  %83 = load i32*, i32** %7, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = call i32 @git_buf_cstr(i32* %16)
  %87 = load i32*, i32** %14, align 8
  %88 = load i32*, i32** %13, align 8
  %89 = load i32*, i32** %15, align 8
  %90 = call i32 @commit_worktree(i32* %83, i32* %84, i32* %85, i32 %86, i32* %87, i32* %88, i32* %89)
  store i32 %90, i32* %17, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %82
  br label %118

93:                                               ; preds = %82
  %94 = call i32 @git_buf_rtrim(i32* %16)
  %95 = load i32*, i32** %7, align 8
  %96 = load i32*, i32** %8, align 8
  %97 = call i32 @git_buf_cstr(i32* %16)
  %98 = call i32 @update_reflog(i32* %95, i32* %96, i32 %97)
  store i32 %98, i32* %17, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  br label %118

101:                                              ; preds = %93
  %102 = load i32*, i32** %8, align 8
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* @GIT_STASH_KEEP_INDEX, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i32*, i32** %14, align 8
  br label %111

109:                                              ; preds = %101
  %110 = load i32*, i32** %13, align 8
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i32* [ %108, %107 ], [ %110, %109 ]
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @reset_index_and_workdir(i32* %102, i32* %112, i32 %113)
  store i32 %114, i32* %17, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %118

117:                                              ; preds = %111
  br label %118

118:                                              ; preds = %117, %116, %100, %92, %81, %76, %60, %51, %46, %40
  %119 = call i32 @git_buf_dispose(i32* %16)
  %120 = load i32*, i32** %14, align 8
  %121 = call i32 @git_commit_free(i32* %120)
  %122 = load i32*, i32** %13, align 8
  %123 = call i32 @git_commit_free(i32* %122)
  %124 = load i32*, i32** %15, align 8
  %125 = call i32 @git_commit_free(i32* %124)
  %126 = load i32*, i32** %12, align 8
  %127 = call i32 @git_index_free(i32* %126)
  %128 = load i32, i32* %17, align 4
  store i32 %128, i32* %6, align 4
  br label %129

129:                                              ; preds = %118, %34
  %130 = load i32, i32* %6, align 4
  ret i32 %130
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @git_repository__ensure_not_bare(i32*, i8*) #1

declare dso_local i32 @retrieve_base_commit_and_message(i32**, i32*, i32*) #1

declare dso_local i32 @ensure_there_are_changes_to_stash(i32*, i32) #1

declare dso_local i32 @git_repository_index(i32**, i32*) #1

declare dso_local i32 @commit_index(i32**, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @commit_untracked(i32**, i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @prepare_worktree_commit_message(i32*, i8*) #1

declare dso_local i32 @commit_worktree(i32*, i32*, i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @git_buf_rtrim(i32*) #1

declare dso_local i32 @update_reflog(i32*, i32*, i32) #1

declare dso_local i32 @reset_index_and_workdir(i32*, i32*, i32) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

declare dso_local i32 @git_commit_free(i32*) #1

declare dso_local i32 @git_index_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
