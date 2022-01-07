; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_merge_driver.c_merge_driver_name_for_path.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_merge_driver.c_merge_driver_name_for_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"merge\00", align 1
@merge_driver_name__text = common dso_local global i8* null, align 8
@merge_driver_name__binary = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*, i8*, i8*)* @merge_driver_name_for_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @merge_driver_name_for_path(i8** %0, i32* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i8**, i8*** %6, align 8
  store i8* null, i8** %12, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 @git_attr_get(i8** %10, i32* %13, i32 0, i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %11, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %5, align 4
  br label %57

19:                                               ; preds = %4
  %20 = load i8*, i8** %10, align 8
  %21 = call i64 @GIT_ATTR_IS_TRUE(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i8*, i8** @merge_driver_name__text, align 8
  %25 = load i8**, i8*** %6, align 8
  store i8* %24, i8** %25, align 8
  br label %56

26:                                               ; preds = %19
  %27 = load i8*, i8** %10, align 8
  %28 = call i64 @GIT_ATTR_IS_FALSE(i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i8*, i8** @merge_driver_name__binary, align 8
  %32 = load i8**, i8*** %6, align 8
  store i8* %31, i8** %32, align 8
  br label %55

33:                                               ; preds = %26
  %34 = load i8*, i8** %10, align 8
  %35 = call i64 @GIT_ATTR_IS_UNSPECIFIED(i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i8*, i8** %9, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i8*, i8** %9, align 8
  %42 = load i8**, i8*** %6, align 8
  store i8* %41, i8** %42, align 8
  br label %54

43:                                               ; preds = %37, %33
  %44 = load i8*, i8** %10, align 8
  %45 = call i64 @GIT_ATTR_IS_UNSPECIFIED(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i8*, i8** @merge_driver_name__text, align 8
  %49 = load i8**, i8*** %6, align 8
  store i8* %48, i8** %49, align 8
  br label %53

50:                                               ; preds = %43
  %51 = load i8*, i8** %10, align 8
  %52 = load i8**, i8*** %6, align 8
  store i8* %51, i8** %52, align 8
  br label %53

53:                                               ; preds = %50, %47
  br label %54

54:                                               ; preds = %53, %40
  br label %55

55:                                               ; preds = %54, %30
  br label %56

56:                                               ; preds = %55, %23
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %56, %17
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @git_attr_get(i8**, i32*, i32, i8*, i8*) #1

declare dso_local i64 @GIT_ATTR_IS_TRUE(i8*) #1

declare dso_local i64 @GIT_ATTR_IS_FALSE(i8*) #1

declare dso_local i64 @GIT_ATTR_IS_UNSPECIFIED(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
