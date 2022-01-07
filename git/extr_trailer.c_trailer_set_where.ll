; ModuleID = '/home/carl/AnghaBench/git/extr_trailer.c_trailer_set_where.c'
source_filename = "/home/carl/AnghaBench/git/extr_trailer.c_trailer_set_where.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WHERE_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"after\00", align 1
@WHERE_AFTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"before\00", align 1
@WHERE_BEFORE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@WHERE_END = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@WHERE_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trailer_set_where(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @WHERE_DEFAULT, align 4
  %10 = load i32*, i32** %4, align 8
  store i32 %9, i32* %10, align 4
  br label %44

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @strcasecmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* @WHERE_AFTER, align 4
  %17 = load i32*, i32** %4, align 8
  store i32 %16, i32* %17, align 4
  br label %43

18:                                               ; preds = %11
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @strcasecmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @WHERE_BEFORE, align 4
  %24 = load i32*, i32** %4, align 8
  store i32 %23, i32* %24, align 4
  br label %42

25:                                               ; preds = %18
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @strcasecmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @WHERE_END, align 4
  %31 = load i32*, i32** %4, align 8
  store i32 %30, i32* %31, align 4
  br label %41

32:                                               ; preds = %25
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @strcasecmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @WHERE_START, align 4
  %38 = load i32*, i32** %4, align 8
  store i32 %37, i32* %38, align 4
  br label %40

39:                                               ; preds = %32
  store i32 -1, i32* %3, align 4
  br label %45

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %40, %29
  br label %42

42:                                               ; preds = %41, %22
  br label %43

43:                                               ; preds = %42, %15
  br label %44

44:                                               ; preds = %43, %8
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %39
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
