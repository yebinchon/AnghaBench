; ModuleID = '/home/carl/AnghaBench/git/extr_trailer.c_trailer_set_if_exists.c'
source_filename = "/home/carl/AnghaBench/git/extr_trailer.c_trailer_set_if_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXISTS_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"addIfDifferent\00", align 1
@EXISTS_ADD_IF_DIFFERENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"addIfDifferentNeighbor\00", align 1
@EXISTS_ADD_IF_DIFFERENT_NEIGHBOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@EXISTS_ADD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"replace\00", align 1
@EXISTS_REPLACE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"doNothing\00", align 1
@EXISTS_DO_NOTHING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trailer_set_if_exists(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @EXISTS_DEFAULT, align 4
  %10 = load i32*, i32** %4, align 8
  store i32 %9, i32* %10, align 4
  br label %52

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @strcasecmp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* @EXISTS_ADD_IF_DIFFERENT, align 4
  %17 = load i32*, i32** %4, align 8
  store i32 %16, i32* %17, align 4
  br label %51

18:                                               ; preds = %11
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @strcasecmp(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @EXISTS_ADD_IF_DIFFERENT_NEIGHBOR, align 4
  %24 = load i32*, i32** %4, align 8
  store i32 %23, i32* %24, align 4
  br label %50

25:                                               ; preds = %18
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @strcasecmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @EXISTS_ADD, align 4
  %31 = load i32*, i32** %4, align 8
  store i32 %30, i32* %31, align 4
  br label %49

32:                                               ; preds = %25
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @strcasecmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @EXISTS_REPLACE, align 4
  %38 = load i32*, i32** %4, align 8
  store i32 %37, i32* %38, align 4
  br label %48

39:                                               ; preds = %32
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @strcasecmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @EXISTS_DO_NOTHING, align 4
  %45 = load i32*, i32** %4, align 8
  store i32 %44, i32* %45, align 4
  br label %47

46:                                               ; preds = %39
  store i32 -1, i32* %3, align 4
  br label %53

47:                                               ; preds = %43
  br label %48

48:                                               ; preds = %47, %36
  br label %49

49:                                               ; preds = %48, %29
  br label %50

50:                                               ; preds = %49, %22
  br label %51

51:                                               ; preds = %50, %15
  br label %52

52:                                               ; preds = %51, %8
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %46
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
