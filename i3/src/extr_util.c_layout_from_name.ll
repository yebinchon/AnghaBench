; ModuleID = '/home/carl/AnghaBench/i3/src/extr_util.c_layout_from_name.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_util.c_layout_from_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@L_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"stacked\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"stacking\00", align 1
@L_STACKED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"tabbed\00", align 1
@L_TABBED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"splitv\00", align 1
@L_SPLITV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"splith\00", align 1
@L_SPLITH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @layout_from_name(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i64 @strcmp(i8* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @L_DEFAULT, align 4
  %11 = load i32*, i32** %5, align 8
  store i32 %10, i32* %11, align 4
  store i32 1, i32* %3, align 4
  br label %49

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @strcasecmp(i8* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @strcasecmp(i8* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16, %12
  %21 = load i32, i32* @L_STACKED, align 4
  %22 = load i32*, i32** %5, align 8
  store i32 %21, i32* %22, align 4
  store i32 1, i32* %3, align 4
  br label %49

23:                                               ; preds = %16
  %24 = load i8*, i8** %4, align 8
  %25 = call i64 @strcasecmp(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @L_TABBED, align 4
  %29 = load i32*, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  store i32 1, i32* %3, align 4
  br label %49

30:                                               ; preds = %23
  %31 = load i8*, i8** %4, align 8
  %32 = call i64 @strcasecmp(i8* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @L_SPLITV, align 4
  %36 = load i32*, i32** %5, align 8
  store i32 %35, i32* %36, align 4
  store i32 1, i32* %3, align 4
  br label %49

37:                                               ; preds = %30
  %38 = load i8*, i8** %4, align 8
  %39 = call i64 @strcasecmp(i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @L_SPLITH, align 4
  %43 = load i32*, i32** %5, align 8
  store i32 %42, i32* %43, align 4
  store i32 1, i32* %3, align 4
  br label %49

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44
  br label %46

46:                                               ; preds = %45
  br label %47

47:                                               ; preds = %46
  br label %48

48:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %41, %34, %27, %20, %9
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
