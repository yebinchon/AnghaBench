; ModuleID = '/home/carl/AnghaBench/git/extr_shell.c_do_generic_cmd.c'
source_filename = "/home/carl/AnghaBench/git/extr_shell.c_do_generic_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"bad argument\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"git-\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"bad command\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @do_generic_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_generic_cmd(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [4 x i8*], align 16
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = call i32 (...) @setup_path()
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = call i8* @sq_dequote(i8* %10)
  store i8* %11, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load i8*, i8** %4, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 45
  br i1 %17, label %18, label %20

18:                                               ; preds = %13, %9, %2
  %19 = call i32 @die(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %13
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @starts_with(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = call i32 @die(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %20
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 4
  %29 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 0
  store i8* %28, i8** %29, align 16
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 1
  store i8* %30, i8** %31, align 8
  %32 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 2
  store i8* null, i8** %32, align 16
  %33 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 0
  %34 = call i32 @execv_git_cmd(i8** %33)
  ret i32 %34
}

declare dso_local i32 @setup_path(...) #1

declare dso_local i8* @sq_dequote(i8*) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @starts_with(i8*, i8*) #1

declare dso_local i32 @execv_git_cmd(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
