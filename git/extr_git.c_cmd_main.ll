; ModuleID = '/home/carl/AnghaBench/git/extr_git.c_cmd_main.c'
source_filename = "/home/carl/AnghaBench/git/extr_git.c_cmd_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"git-help\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"git-\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"cannot handle %s as a builtin\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"usage: %s\0A\0A\00", align 1
@git_usage_string = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1
@git_more_info_string = common dso_local global i8* null, align 8
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [59 x i8] c"expansion of alias '%s' failed; '%s' is not a git command\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"failed to run command '%s': %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load i8**, i8*** %4, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %24

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = call i8* @find_last_dir_sep(i8* %16)
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i8*, i8** %7, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  store i8* %22, i8** %5, align 8
  br label %23

23:                                               ; preds = %20, %15
  br label %24

24:                                               ; preds = %23, %14
  %25 = load i8**, i8*** %4, align 8
  %26 = call i32 @trace_command_performance(i8** %25)
  %27 = load i8*, i8** %5, align 8
  %28 = call i64 @skip_prefix(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %5)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load i8*, i8** %5, align 8
  %32 = load i8**, i8*** %4, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 0
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* %3, align 4
  %35 = load i8**, i8*** %4, align 8
  %36 = call i32 @handle_builtin(i32 %34, i8** %35)
  %37 = call i8* @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @die(i8* %37, i8* %38)
  br label %40

40:                                               ; preds = %30, %24
  %41 = load i8**, i8*** %4, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i32 1
  store i8** %42, i8*** %4, align 8
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %3, align 4
  %45 = call i32 @handle_options(i8*** %4, i32* %3, i32* null)
  %46 = load i32, i32* %3, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %40
  %49 = load i8**, i8*** %4, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i8**, i8*** %4, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 0
  %54 = call i64 @skip_prefix(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %53)
  br label %65

55:                                               ; preds = %40
  %56 = call i32 (...) @commit_pager_choice()
  %57 = call i8* @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %58 = load i8*, i8** @git_usage_string, align 8
  %59 = call i32 @printf(i8* %57, i8* %58)
  %60 = call i32 (...) @list_common_cmds_help()
  %61 = load i8*, i8** @git_more_info_string, align 8
  %62 = call i8* @_(i8* %61)
  %63 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %62)
  %64 = call i32 @exit(i32 1) #3
  unreachable

65:                                               ; preds = %48
  %66 = load i8**, i8*** %4, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 0
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %5, align 8
  %69 = call i32 (...) @setup_path()
  br label %70

70:                                               ; preds = %65, %97
  %71 = call i32 @run_argv(i32* %3, i8*** %4)
  store i32 %71, i32* %8, align 4
  %72 = load i64, i64* @errno, align 8
  %73 = load i64, i64* @ENOENT, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %98

76:                                               ; preds = %70
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %76
  %80 = load i32, i32* @stderr, align 4
  %81 = call i8* @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0))
  %82 = load i8*, i8** %5, align 8
  %83 = load i8**, i8*** %4, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @fprintf(i32 %80, i8* %81, i8* %82, i8* %85)
  %87 = call i32 @exit(i32 1) #3
  unreachable

88:                                               ; preds = %76
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %88
  %92 = load i8*, i8** %5, align 8
  %93 = call i8* @help_unknown_cmd(i8* %92)
  %94 = load i8**, i8*** %4, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 0
  store i8* %93, i8** %95, align 8
  store i8* %93, i8** %5, align 8
  store i32 1, i32* %6, align 4
  br label %97

96:                                               ; preds = %88
  br label %98

97:                                               ; preds = %91
  br label %70

98:                                               ; preds = %96, %75
  %99 = load i32, i32* @stderr, align 4
  %100 = call i8* @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %101 = load i8*, i8** %5, align 8
  %102 = load i64, i64* @errno, align 8
  %103 = call i8* @strerror(i64 %102)
  %104 = call i32 @fprintf(i32 %99, i8* %100, i8* %101, i8* %103)
  ret i32 1
}

declare dso_local i8* @find_last_dir_sep(i8*) #1

declare dso_local i32 @trace_command_performance(i8**) #1

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i32 @handle_builtin(i32, i8**) #1

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @handle_options(i8***, i32*, i32*) #1

declare dso_local i32 @commit_pager_choice(...) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @list_common_cmds_help(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @setup_path(...) #1

declare dso_local i32 @run_argv(i32*, i8***) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @help_unknown_cmd(i8*) #1

declare dso_local i8* @strerror(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
