; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_splevel.c_UI_SPLevelMenu_ResetDraw.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_splevel.c_UI_SPLevelMenu_ResetDraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCREEN_WIDTH = common dso_local global i32 0, align 4
@PROP_HEIGHT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"WARNING: This resets all of the\00", align 1
@UI_CENTER = common dso_local global i32 0, align 4
@UI_SMALLFONT = common dso_local global i32 0, align 4
@color_yellow = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"single player game variables.\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Do this only if you want to\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"start over from the beginning.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @UI_SPLevelMenu_ResetDraw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_SPLevelMenu_ResetDraw() #0 {
  %1 = load i32, i32* @SCREEN_WIDTH, align 4
  %2 = sdiv i32 %1, 2
  %3 = load i32, i32* @PROP_HEIGHT, align 4
  %4 = mul nsw i32 %3, 0
  %5 = add nsw i32 356, %4
  %6 = load i32, i32* @UI_CENTER, align 4
  %7 = load i32, i32* @UI_SMALLFONT, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @color_yellow, align 4
  %10 = call i32 @UI_DrawProportionalString(i32 %2, i32 %5, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %9)
  %11 = load i32, i32* @SCREEN_WIDTH, align 4
  %12 = sdiv i32 %11, 2
  %13 = load i32, i32* @PROP_HEIGHT, align 4
  %14 = mul nsw i32 %13, 1
  %15 = add nsw i32 356, %14
  %16 = load i32, i32* @UI_CENTER, align 4
  %17 = load i32, i32* @UI_SMALLFONT, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @color_yellow, align 4
  %20 = call i32 @UI_DrawProportionalString(i32 %12, i32 %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load i32, i32* @SCREEN_WIDTH, align 4
  %22 = sdiv i32 %21, 2
  %23 = load i32, i32* @PROP_HEIGHT, align 4
  %24 = mul nsw i32 %23, 2
  %25 = add nsw i32 356, %24
  %26 = load i32, i32* @UI_CENTER, align 4
  %27 = load i32, i32* @UI_SMALLFONT, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @color_yellow, align 4
  %30 = call i32 @UI_DrawProportionalString(i32 %22, i32 %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load i32, i32* @SCREEN_WIDTH, align 4
  %32 = sdiv i32 %31, 2
  %33 = load i32, i32* @PROP_HEIGHT, align 4
  %34 = mul nsw i32 %33, 3
  %35 = add nsw i32 356, %34
  %36 = load i32, i32* @UI_CENTER, align 4
  %37 = load i32, i32* @UI_SMALLFONT, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @color_yellow, align 4
  %40 = call i32 @UI_DrawProportionalString(i32 %32, i32 %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %38, i32 %39)
  ret void
}

declare dso_local i32 @UI_DrawProportionalString(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
