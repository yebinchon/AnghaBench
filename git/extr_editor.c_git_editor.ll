; ModuleID = '/home/carl/AnghaBench/git/extr_editor.c_git_editor.c'
source_filename = "/home/carl/AnghaBench/git/extr_editor.c_git_editor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"GIT_EDITOR\00", align 1
@editor_program = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"VISUAL\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"EDITOR\00", align 1
@DEFAULT_EDITOR = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @git_editor() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %4, i8** %2, align 8
  %5 = call i32 (...) @is_terminal_dumb()
  store i32 %5, i32* %3, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %0
  %9 = load i8*, i8** @editor_program, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load i8*, i8** @editor_program, align 8
  store i8* %12, i8** %2, align 8
  br label %13

13:                                               ; preds = %11, %8, %0
  %14 = load i8*, i8** %2, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i8* %20, i8** %2, align 8
  br label %21

21:                                               ; preds = %19, %16, %13
  %22 = load i8*, i8** %2, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i8* %25, i8** %2, align 8
  br label %26

26:                                               ; preds = %24, %21
  %27 = load i8*, i8** %2, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i8* null, i8** %1, align 8
  br label %40

33:                                               ; preds = %29, %26
  %34 = load i8*, i8** %2, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = load i8*, i8** @DEFAULT_EDITOR, align 8
  store i8* %37, i8** %2, align 8
  br label %38

38:                                               ; preds = %36, %33
  %39 = load i8*, i8** %2, align 8
  store i8* %39, i8** %1, align 8
  br label %40

40:                                               ; preds = %38, %32
  %41 = load i8*, i8** %1, align 8
  ret i8* %41
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @is_terminal_dumb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
