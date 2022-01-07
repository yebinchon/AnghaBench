; ModuleID = '/home/carl/AnghaBench/i3/src/extr_output.c_get_output_from_string.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_output.c_get_output_from_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"current\00", align 1
@focused = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@D_LEFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@D_RIGHT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@D_UP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@D_DOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_output_from_string(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = call i64 @strcasecmp(i8* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @focused, align 4
  %11 = call i32* @get_output_for_con(i32 %10)
  store i32* %11, i32** %3, align 8
  br label %51

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @strcasecmp(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i32, i32* @D_LEFT, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = call i32* @get_output_next_wrap(i32 %17, i32* %18)
  store i32* %19, i32** %3, align 8
  br label %51

20:                                               ; preds = %12
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @strcasecmp(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* @D_RIGHT, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = call i32* @get_output_next_wrap(i32 %25, i32* %26)
  store i32* %27, i32** %3, align 8
  br label %51

28:                                               ; preds = %20
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 @strcasecmp(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* @D_UP, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = call i32* @get_output_next_wrap(i32 %33, i32* %34)
  store i32* %35, i32** %3, align 8
  br label %51

36:                                               ; preds = %28
  %37 = load i8*, i8** %5, align 8
  %38 = call i64 @strcasecmp(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32, i32* @D_DOWN, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = call i32* @get_output_next_wrap(i32 %41, i32* %42)
  store i32* %43, i32** %3, align 8
  br label %51

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44
  br label %46

46:                                               ; preds = %45
  br label %47

47:                                               ; preds = %46
  br label %48

48:                                               ; preds = %47
  %49 = load i8*, i8** %5, align 8
  %50 = call i32* @get_output_by_name(i8* %49, i32 1)
  store i32* %50, i32** %3, align 8
  br label %51

51:                                               ; preds = %48, %40, %32, %24, %16, %9
  %52 = load i32*, i32** %3, align 8
  ret i32* %52
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32* @get_output_for_con(i32) #1

declare dso_local i32* @get_output_next_wrap(i32, i32*) #1

declare dso_local i32* @get_output_by_name(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
