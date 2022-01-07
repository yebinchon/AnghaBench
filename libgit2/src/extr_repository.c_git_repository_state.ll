; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_repository.c_git_repository_state.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_repository.c_git_repository_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@GIT_REPOSITORY_STATE_NONE = common dso_local global i32 0, align 4
@GIT_REBASE_MERGE_INTERACTIVE_FILE = common dso_local global i32 0, align 4
@GIT_REPOSITORY_STATE_REBASE_INTERACTIVE = common dso_local global i32 0, align 4
@GIT_REBASE_MERGE_DIR = common dso_local global i32 0, align 4
@GIT_REPOSITORY_STATE_REBASE_MERGE = common dso_local global i32 0, align 4
@GIT_REBASE_APPLY_REBASING_FILE = common dso_local global i32 0, align 4
@GIT_REPOSITORY_STATE_REBASE = common dso_local global i32 0, align 4
@GIT_REBASE_APPLY_APPLYING_FILE = common dso_local global i32 0, align 4
@GIT_REPOSITORY_STATE_APPLY_MAILBOX = common dso_local global i32 0, align 4
@GIT_REBASE_APPLY_DIR = common dso_local global i32 0, align 4
@GIT_REPOSITORY_STATE_APPLY_MAILBOX_OR_REBASE = common dso_local global i32 0, align 4
@GIT_MERGE_HEAD_FILE = common dso_local global i32 0, align 4
@GIT_REPOSITORY_STATE_MERGE = common dso_local global i32 0, align 4
@GIT_REVERT_HEAD_FILE = common dso_local global i32 0, align 4
@GIT_REPOSITORY_STATE_REVERT = common dso_local global i32 0, align 4
@GIT_SEQUENCER_TODO_FILE = common dso_local global i32 0, align 4
@GIT_REPOSITORY_STATE_REVERT_SEQUENCE = common dso_local global i32 0, align 4
@GIT_CHERRYPICK_HEAD_FILE = common dso_local global i32 0, align 4
@GIT_REPOSITORY_STATE_CHERRYPICK = common dso_local global i32 0, align 4
@GIT_REPOSITORY_STATE_CHERRYPICK_SEQUENCE = common dso_local global i32 0, align 4
@GIT_BISECT_LOG_FILE = common dso_local global i32 0, align 4
@GIT_REPOSITORY_STATE_BISECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_repository_state(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %6 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* @GIT_REPOSITORY_STATE_NONE, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = call i32 @assert(%struct.TYPE_4__* %8)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @git_buf_puts(i32* %4, i32 %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %93

16:                                               ; preds = %1
  %17 = load i32, i32* @GIT_REBASE_MERGE_INTERACTIVE_FILE, align 4
  %18 = call i64 @git_path_contains_file(i32* %4, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @GIT_REPOSITORY_STATE_REBASE_INTERACTIVE, align 4
  store i32 %21, i32* %5, align 4
  br label %90

22:                                               ; preds = %16
  %23 = load i32, i32* @GIT_REBASE_MERGE_DIR, align 4
  %24 = call i64 @git_path_contains_dir(i32* %4, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @GIT_REPOSITORY_STATE_REBASE_MERGE, align 4
  store i32 %27, i32* %5, align 4
  br label %89

28:                                               ; preds = %22
  %29 = load i32, i32* @GIT_REBASE_APPLY_REBASING_FILE, align 4
  %30 = call i64 @git_path_contains_file(i32* %4, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @GIT_REPOSITORY_STATE_REBASE, align 4
  store i32 %33, i32* %5, align 4
  br label %88

34:                                               ; preds = %28
  %35 = load i32, i32* @GIT_REBASE_APPLY_APPLYING_FILE, align 4
  %36 = call i64 @git_path_contains_file(i32* %4, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @GIT_REPOSITORY_STATE_APPLY_MAILBOX, align 4
  store i32 %39, i32* %5, align 4
  br label %87

40:                                               ; preds = %34
  %41 = load i32, i32* @GIT_REBASE_APPLY_DIR, align 4
  %42 = call i64 @git_path_contains_dir(i32* %4, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @GIT_REPOSITORY_STATE_APPLY_MAILBOX_OR_REBASE, align 4
  store i32 %45, i32* %5, align 4
  br label %86

46:                                               ; preds = %40
  %47 = load i32, i32* @GIT_MERGE_HEAD_FILE, align 4
  %48 = call i64 @git_path_contains_file(i32* %4, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @GIT_REPOSITORY_STATE_MERGE, align 4
  store i32 %51, i32* %5, align 4
  br label %85

52:                                               ; preds = %46
  %53 = load i32, i32* @GIT_REVERT_HEAD_FILE, align 4
  %54 = call i64 @git_path_contains_file(i32* %4, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = load i32, i32* @GIT_REPOSITORY_STATE_REVERT, align 4
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* @GIT_SEQUENCER_TODO_FILE, align 4
  %59 = call i64 @git_path_contains_file(i32* %4, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* @GIT_REPOSITORY_STATE_REVERT_SEQUENCE, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %61, %56
  br label %84

64:                                               ; preds = %52
  %65 = load i32, i32* @GIT_CHERRYPICK_HEAD_FILE, align 4
  %66 = call i64 @git_path_contains_file(i32* %4, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %64
  %69 = load i32, i32* @GIT_REPOSITORY_STATE_CHERRYPICK, align 4
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* @GIT_SEQUENCER_TODO_FILE, align 4
  %71 = call i64 @git_path_contains_file(i32* %4, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* @GIT_REPOSITORY_STATE_CHERRYPICK_SEQUENCE, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %73, %68
  br label %83

76:                                               ; preds = %64
  %77 = load i32, i32* @GIT_BISECT_LOG_FILE, align 4
  %78 = call i64 @git_path_contains_file(i32* %4, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* @GIT_REPOSITORY_STATE_BISECT, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %80, %76
  br label %83

83:                                               ; preds = %82, %75
  br label %84

84:                                               ; preds = %83, %63
  br label %85

85:                                               ; preds = %84, %50
  br label %86

86:                                               ; preds = %85, %44
  br label %87

87:                                               ; preds = %86, %38
  br label %88

88:                                               ; preds = %87, %32
  br label %89

89:                                               ; preds = %88, %26
  br label %90

90:                                               ; preds = %89, %20
  %91 = call i32 @git_buf_dispose(i32* %4)
  %92 = load i32, i32* %5, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %90, %15
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @assert(%struct.TYPE_4__*) #1

declare dso_local i64 @git_buf_puts(i32*, i32) #1

declare dso_local i64 @git_path_contains_file(i32*, i32) #1

declare dso_local i64 @git_path_contains_dir(i32*, i32) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
