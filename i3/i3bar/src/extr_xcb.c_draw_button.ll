; ModuleID = '/home/carl/AnghaBench/i3/i3bar/src/extr_xcb.c_draw_button.c'
source_filename = "/home/carl/AnghaBench/i3/i3bar/src/extr_xcb.c_draw_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@bar_height = common dso_local global i32 0, align 4
@font = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32, i32, i32, i32*)* @draw_button to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_button(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32* %7, i32** %16, align 8
  %18 = load i32, i32* @bar_height, align 4
  %19 = call i32 @logical_px(i32 1)
  %20 = mul nsw i32 2, %19
  %21 = sub nsw i32 %18, %20
  store i32 %21, i32* %17, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %13, align 4
  %25 = call i32 @logical_px(i32 1)
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* %17, align 4
  %28 = call i32 @draw_util_rectangle(i32* %22, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27)
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @logical_px(i32 1)
  %33 = add nsw i32 %31, %32
  %34 = call i32 @logical_px(i32 1)
  %35 = mul nsw i32 2, %34
  %36 = load i32, i32* %14, align 4
  %37 = call i32 @logical_px(i32 1)
  %38 = mul nsw i32 2, %37
  %39 = sub nsw i32 %36, %38
  %40 = load i32, i32* %17, align 4
  %41 = call i32 @logical_px(i32 1)
  %42 = mul nsw i32 2, %41
  %43 = sub nsw i32 %40, %42
  %44 = call i32 @draw_util_rectangle(i32* %29, i32 %30, i32 %33, i32 %35, i32 %39, i32 %43)
  %45 = load i32*, i32** %16, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %15, align 4
  %52 = sub nsw i32 %50, %51
  %53 = sdiv i32 %52, 2
  %54 = add nsw i32 %49, %53
  %55 = load i32, i32* @bar_height, align 4
  %56 = sdiv i32 %55, 2
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @font, i32 0, i32 0), align 4
  %58 = sdiv i32 %57, 2
  %59 = sub nsw i32 %56, %58
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @draw_util_text(i32* %45, i32* %46, i32 %47, i32 %48, i32 %54, i32 %59, i32 %60)
  ret void
}

declare dso_local i32 @logical_px(i32) #1

declare dso_local i32 @draw_util_rectangle(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @draw_util_text(i32*, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
