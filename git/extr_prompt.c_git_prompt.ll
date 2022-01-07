; ModuleID = '/home/carl/AnghaBench/git/extr_prompt.c_git_prompt.c'
source_filename = "/home/carl/AnghaBench/git/extr_prompt.c_git_prompt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROMPT_ASKPASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"GIT_ASKPASS\00", align 1
@askpass_program = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"SSH_ASKPASS\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"GIT_TERMINAL_PROMPT\00", align 1
@PROMPT_ECHO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"terminal prompts disabled\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"could not read %s%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @git_prompt(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8* null, i8** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @PROMPT_ASKPASS, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %2
  %13 = call i8* @getenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load i8*, i8** @askpass_program, align 8
  store i8* %17, i8** %6, align 8
  br label %18

18:                                               ; preds = %16, %12
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = call i8* @getenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i8* %22, i8** %6, align 8
  br label %23

23:                                               ; preds = %21, %18
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load i8*, i8** %6, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i8*, i8** %6, align 8
  %33 = load i8*, i8** %3, align 8
  %34 = call i8* @do_askpass(i8* %32, i8* %33)
  store i8* %34, i8** %5, align 8
  br label %35

35:                                               ; preds = %31, %26, %23
  br label %36

36:                                               ; preds = %35, %2
  %37 = load i8*, i8** %5, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %59, label %39

39:                                               ; preds = %36
  %40 = call i64 @git_env_bool(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load i8*, i8** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @PROMPT_ECHO, align 4
  %46 = and i32 %44, %45
  %47 = call i8* @git_terminal_prompt(i8* %43, i32 %46)
  store i8* %47, i8** %5, align 8
  %48 = load i32, i32* @errno, align 4
  %49 = call i8* @strerror(i32 %48)
  store i8* %49, i8** %7, align 8
  br label %51

50:                                               ; preds = %39
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %51

51:                                               ; preds = %50, %42
  %52 = load i8*, i8** %5, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = load i8*, i8** %3, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @die(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %55, i8* %56)
  br label %58

58:                                               ; preds = %54, %51
  br label %59

59:                                               ; preds = %58, %36
  %60 = load i8*, i8** %5, align 8
  ret i8* %60
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @do_askpass(i8*, i8*) #1

declare dso_local i64 @git_env_bool(i8*, i32) #1

declare dso_local i8* @git_terminal_prompt(i8*, i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @die(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
