; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_parse_color_moved.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_parse_color_moved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COLOR_MOVED_NO = common dso_local global i32 0, align 4
@COLOR_MOVED_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"plain\00", align 1
@COLOR_MOVED_PLAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"blocks\00", align 1
@COLOR_MOVED_BLOCKS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"zebra\00", align 1
@COLOR_MOVED_ZEBRA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"dimmed-zebra\00", align 1
@COLOR_MOVED_ZEBRA_DIM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"dimmed_zebra\00", align 1
@.str.7 = private unnamed_addr constant [95 x i8] c"color moved setting must be one of 'no', 'default', 'blocks', 'zebra', 'dimmed-zebra', 'plain'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @parse_color_moved to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_color_moved(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i32 @git_parse_maybe_bool(i8* %4)
  switch i32 %5, label %10 [
    i32 0, label %6
    i32 1, label %8
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @COLOR_MOVED_NO, align 4
  store i32 %7, i32* %2, align 4
  br label %56

8:                                                ; preds = %1
  %9 = load i32, i32* @COLOR_MOVED_DEFAULT, align 4
  store i32 %9, i32* %2, align 4
  br label %56

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %10
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* @COLOR_MOVED_NO, align 4
  store i32 %16, i32* %2, align 4
  br label %56

17:                                               ; preds = %11
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @COLOR_MOVED_PLAIN, align 4
  store i32 %22, i32* %2, align 4
  br label %56

23:                                               ; preds = %17
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @COLOR_MOVED_BLOCKS, align 4
  store i32 %28, i32* %2, align 4
  br label %56

29:                                               ; preds = %23
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @COLOR_MOVED_ZEBRA, align 4
  store i32 %34, i32* %2, align 4
  br label %56

35:                                               ; preds = %29
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @COLOR_MOVED_DEFAULT, align 4
  store i32 %40, i32* %2, align 4
  br label %56

41:                                               ; preds = %35
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @COLOR_MOVED_ZEBRA_DIM, align 4
  store i32 %46, i32* %2, align 4
  br label %56

47:                                               ; preds = %41
  %48 = load i8*, i8** %3, align 8
  %49 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* @COLOR_MOVED_ZEBRA_DIM, align 4
  store i32 %52, i32* %2, align 4
  br label %56

53:                                               ; preds = %47
  %54 = call i32 @_(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.7, i64 0, i64 0))
  %55 = call i32 @error(i32 %54)
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %53, %51, %45, %39, %33, %27, %21, %15, %8, %6
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @git_parse_maybe_bool(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @error(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
