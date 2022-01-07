; ModuleID = '/home/carl/AnghaBench/git/extr_rebase-interactive.c_append_todo_help.c'
source_filename = "/home/carl/AnghaBench/git/extr_rebase-interactive.c_append_todo_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [881 x i8] c"\0ACommands:\0Ap, pick <commit> = use commit\0Ar, reword <commit> = use commit, but edit the commit message\0Ae, edit <commit> = use commit, but stop for amending\0As, squash <commit> = use commit, but meld into previous commit\0Af, fixup <commit> = like \22squash\22, but discard this commit's log message\0Ax, exec <command> = run command (the rest of the line) using shell\0Ab, break = stop here (continue rebase later with 'git rebase --continue')\0Ad, drop <commit> = remove commit\0Al, label <label> = label current HEAD with a name\0At, reset <label> = reset HEAD to a label\0Am, merge [-C <commit> | -c <commit>] <label> [# <oneline>]\0A.       create a merge commit using the original merge commit's\0A.       message (or the oneline, if no original merge commit was\0A.       specified). Use -c <commit> to reword the commit message.\0A\0AThese lines can be re-ordered; they are executed from top to bottom.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Rebase %s onto %s (%d command)\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Rebase %s onto %s (%d commands)\00", align 1
@MISSING_COMMIT_CHECK_ERROR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [68 x i8] c"\0ADo not remove any line. Use 'drop' explicitly to remove a commit.\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"\0AIf you remove a line here THAT COMMIT WILL BE LOST.\0A\00", align 1
@.str.5 = private unnamed_addr constant [132 x i8] c"\0AYou are editing the todo file of an ongoing interactive rebase.\0ATo continue rebase after editing, run:\0A    git rebase --continue\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [66 x i8] c"\0AHowever, if you remove everything, the rebase will be aborted.\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Note that empty commits are commented out\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @append_todo_help(i32 %0, i32 %1, i8* %2, i8* %3, %struct.strbuf* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.strbuf*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.strbuf* %4, %struct.strbuf** %10, align 8
  %13 = call i8* @_(i8* getelementptr inbounds ([881 x i8], [881 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %11, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = load i8*, i8** %9, align 8
  %18 = icmp ne i8* %17, null
  br label %19

19:                                               ; preds = %16, %5
  %20 = phi i1 [ false, %5 ], [ %18, %16 ]
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %19
  %26 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %27 = call i32 @strbuf_addch(%struct.strbuf* %26, i8 signext 10)
  %28 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @Q_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = load i8*, i8** %8, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @strbuf_commented_addf(%struct.strbuf* %28, i32 %30, i8* %31, i8* %32, i32 %33)
  br label %35

35:                                               ; preds = %25, %19
  %36 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = call i32 @strlen(i8* %38)
  %40 = call i32 @strbuf_add_commented_lines(%struct.strbuf* %36, i8* %37, i32 %39)
  %41 = call i64 (...) @get_missing_commit_check_level()
  %42 = load i64, i64* @MISSING_COMMIT_CHECK_ERROR, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = call i8* @_(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0))
  store i8* %45, i8** %11, align 8
  br label %48

46:                                               ; preds = %35
  %47 = call i8* @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  store i8* %47, i8** %11, align 8
  br label %48

48:                                               ; preds = %46, %44
  %49 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = call i32 @strlen(i8* %51)
  %53 = call i32 @strbuf_add_commented_lines(%struct.strbuf* %49, i8* %50, i32 %52)
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = call i8* @_(i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.5, i64 0, i64 0))
  store i8* %57, i8** %11, align 8
  br label %60

58:                                               ; preds = %48
  %59 = call i8* @_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i64 0, i64 0))
  store i8* %59, i8** %11, align 8
  br label %60

60:                                               ; preds = %58, %56
  %61 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = call i32 @strlen(i8* %63)
  %65 = call i32 @strbuf_add_commented_lines(%struct.strbuf* %61, i8* %62, i32 %64)
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %60
  %69 = call i8* @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  store i8* %69, i8** %11, align 8
  %70 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = call i32 @strlen(i8* %72)
  %74 = call i32 @strbuf_add_commented_lines(%struct.strbuf* %70, i8* %71, i32 %73)
  br label %75

75:                                               ; preds = %68, %60
  ret void
}

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @strbuf_commented_addf(%struct.strbuf*, i32, i8*, i8*, i32) #1

declare dso_local i32 @Q_(i8*, i8*, i32) #1

declare dso_local i32 @strbuf_add_commented_lines(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @get_missing_commit_check_level(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
