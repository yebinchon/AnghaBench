; ModuleID = '/home/carl/AnghaBench/htop/extr_CRT.c_CRT_setColors.c'
source_filename = "/home/carl/AnghaBench/htop/extr_CRT.c_CRT_setColors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CRT_colorScheme = common dso_local global i32 0, align 4
@ColorPairGrayBlack = common dso_local global i64 0, align 8
@COLORSCHEME_BLACKNIGHT = common dso_local global i32 0, align 4
@COLORS = common dso_local global i32 0, align 4
@ColorIndexGrayBlack = common dso_local global i64 0, align 8
@CRT_colorSchemes = common dso_local global i32* null, align 8
@CRT_colors = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CRT_setColors(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  store i32 %8, i32* @CRT_colorScheme, align 4
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %49, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 8
  br i1 %11, label %12, label %52

12:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %45, %12
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 8
  br i1 %15, label %16, label %48

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @ColorIndex(i32 %17, i32 %18)
  %20 = load i64, i64* @ColorPairGrayBlack, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %44

22:                                               ; preds = %16
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @COLORSCHEME_BLACKNIGHT, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %32

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  br label %32

32:                                               ; preds = %30, %29
  %33 = phi i32 [ -1, %29 ], [ %31, %30 ]
  br label %36

34:                                               ; preds = %22
  %35 = load i32, i32* %4, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i64 @ColorIndex(i32 %38, i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @init_pair(i64 %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %36, %16
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %13

48:                                               ; preds = %13
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %9

52:                                               ; preds = %9
  %53 = load i32, i32* @COLORS, align 4
  %54 = icmp sgt i32 %53, 8
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 8, i32 0
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* @COLORSCHEME_BLACKNIGHT, align 4
  %59 = icmp ne i32 %57, %58
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 -1, i32 0
  store i32 %61, i32* %7, align 4
  %62 = load i64, i64* @ColorIndexGrayBlack, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @init_pair(i64 %62, i32 %63, i32 %64)
  %66 = load i32*, i32** @CRT_colorSchemes, align 8
  %67 = load i32, i32* %2, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* @CRT_colors, align 4
  ret void
}

declare dso_local i64 @ColorIndex(i32, i32) #1

declare dso_local i32 @init_pair(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
