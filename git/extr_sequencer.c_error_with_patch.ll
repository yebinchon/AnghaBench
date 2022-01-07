; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_error_with_patch.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_error_with_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.commit = type { i32 }
%struct.replay_opts = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"unable to copy '%s' to '%s'\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [133 x i8] c"You can amend the commit now, with\0A\0A  git commit --amend %s\0A\0AOnce you are satisfied with your changes, run\0A\0A  git rebase --continue\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Could not apply %s... %.*s\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Could not merge %.*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, %struct.commit*, i8*, i32, %struct.replay_opts*, i32, i32)* @error_with_patch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @error_with_patch(%struct.repository* %0, %struct.commit* %1, i8* %2, i32 %3, %struct.replay_opts* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.repository*, align 8
  %10 = alloca %struct.commit*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.replay_opts*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %9, align 8
  store %struct.commit* %1, %struct.commit** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.replay_opts* %4, %struct.replay_opts** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %16 = load %struct.commit*, %struct.commit** %10, align 8
  %17 = icmp ne %struct.commit* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %7
  %19 = load %struct.repository*, %struct.repository** %9, align 8
  %20 = load %struct.commit*, %struct.commit** %10, align 8
  %21 = load %struct.replay_opts*, %struct.replay_opts** %13, align 8
  %22 = call i64 @make_patch(%struct.repository* %19, %struct.commit* %20, %struct.replay_opts* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 -1, i32* %8, align 4
  br label %76

25:                                               ; preds = %18
  br label %39

26:                                               ; preds = %7
  %27 = call i8* (...) @rebase_path_message()
  %28 = load %struct.repository*, %struct.repository** %9, align 8
  %29 = call i32 @git_path_merge_msg(%struct.repository* %28)
  %30 = call i64 @copy_file(i8* %27, i32 %29, i32 438)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = call i8* @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.repository*, %struct.repository** %9, align 8
  %35 = call i32 @git_path_merge_msg(%struct.repository* %34)
  %36 = call i8* (...) @rebase_path_message()
  %37 = call i32 @error(i8* %33, i32 %35, i8* %36)
  store i32 %37, i32* %8, align 4
  br label %76

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38, %25
  %40 = load i32, i32* %15, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = call i64 (...) @intend_to_amend()
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 -1, i32* %8, align 4
  br label %76

46:                                               ; preds = %42
  %47 = load i32, i32* @stderr, align 4
  %48 = call i8* @_(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.replay_opts*, %struct.replay_opts** %13, align 8
  %50 = call i8* @gpg_sign_opt_quoted(%struct.replay_opts* %49)
  %51 = call i32 @fprintf(i32 %47, i8* %48, i8* %50)
  br label %74

52:                                               ; preds = %39
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %52
  %56 = load %struct.commit*, %struct.commit** %10, align 8
  %57 = icmp ne %struct.commit* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load i32, i32* @stderr, align 4
  %60 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %61 = load %struct.commit*, %struct.commit** %10, align 8
  %62 = call i32 @short_commit_name(%struct.commit* %61)
  %63 = load i32, i32* %12, align 4
  %64 = load i8*, i8** %11, align 8
  %65 = call i32 (i32, i8*, i32, ...) @fprintf_ln(i32 %59, i8* %60, i32 %62, i32 %63, i8* %64)
  br label %72

66:                                               ; preds = %55
  %67 = load i32, i32* @stderr, align 4
  %68 = call i8* @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %69 = load i32, i32* %12, align 4
  %70 = load i8*, i8** %11, align 8
  %71 = call i32 (i32, i8*, i32, ...) @fprintf_ln(i32 %67, i8* %68, i32 %69, i8* %70)
  br label %72

72:                                               ; preds = %66, %58
  br label %73

73:                                               ; preds = %72, %52
  br label %74

74:                                               ; preds = %73, %46
  %75 = load i32, i32* %14, align 4
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %74, %45, %32, %24
  %77 = load i32, i32* %8, align 4
  ret i32 %77
}

declare dso_local i64 @make_patch(%struct.repository*, %struct.commit*, %struct.replay_opts*) #1

declare dso_local i64 @copy_file(i8*, i32, i32) #1

declare dso_local i8* @rebase_path_message(...) #1

declare dso_local i32 @git_path_merge_msg(%struct.repository*) #1

declare dso_local i32 @error(i8*, i32, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i64 @intend_to_amend(...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @gpg_sign_opt_quoted(%struct.replay_opts*) #1

declare dso_local i32 @fprintf_ln(i32, i8*, i32, ...) #1

declare dso_local i32 @short_commit_name(%struct.commit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
