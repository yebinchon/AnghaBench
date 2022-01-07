; ModuleID = '/home/carl/AnghaBench/git/extr_pager.c_git_pager.c'
source_filename = "/home/carl/AnghaBench/git/extr_pager.c_git_pager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"GIT_PAGER\00", align 1
@pager_program = common dso_local global i8* null, align 8
@core_pager_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"PAGER\00", align 1
@DEFAULT_PAGER = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"cat\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @git_pager(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %41

8:                                                ; preds = %1
  %9 = call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %9, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %8
  %13 = load i8*, i8** @pager_program, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* @core_pager_config, align 4
  %17 = call i32 @read_early_config(i32 %16, i32* null)
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i8*, i8** @pager_program, align 8
  store i8* %19, i8** %4, align 8
  br label %20

20:                                               ; preds = %18, %8
  %21 = load i8*, i8** %4, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i8* %24, i8** %4, align 8
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i8*, i8** %4, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = load i8*, i8** @DEFAULT_PAGER, align 8
  store i8* %29, i8** %4, align 8
  br label %30

30:                                               ; preds = %28, %25
  %31 = load i8*, i8** %4, align 8
  %32 = load i8, i8* %31, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34, %30
  store i8* null, i8** %4, align 8
  br label %39

39:                                               ; preds = %38, %34
  %40 = load i8*, i8** %4, align 8
  store i8* %40, i8** %2, align 8
  br label %41

41:                                               ; preds = %39, %7
  %42 = load i8*, i8** %2, align 8
  ret i8* %42
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @read_early_config(i32, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
