; ModuleID = '/home/carl/AnghaBench/i3/i3-nagbar/extr_main.c_handle_expose.c'
source_filename = "/home/carl/AnghaBench/i3/i3-nagbar/extr_main.c_handle_expose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }

@bar = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@color_background = common dso_local global i32 0, align 4
@prompt = common dso_local global i32 0, align 4
@color_text = common dso_local global i32 0, align 4
@MSG_PADDING = common dso_local global i32 0, align 4
@BTN_BORDER = common dso_local global i32 0, align 4
@BTN_PADDING = common dso_local global i32 0, align 4
@btn_close = common dso_local global i32 0, align 4
@CLOSE_BTN_GAP = common dso_local global i64 0, align 8
@buttoncnt = common dso_local global i32 0, align 4
@BTN_GAP = common dso_local global i64 0, align 8
@buttons = common dso_local global i32* null, align 8
@color_border_bottom = common dso_local global i32 0, align 4
@BAR_BORDER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @handle_expose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_expose(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* @color_background, align 4
  %8 = call i32 @draw_util_clear_surface(%struct.TYPE_5__* @bar, i32 %7)
  %9 = load i32, i32* @prompt, align 4
  %10 = load i32, i32* @color_text, align 4
  %11 = load i32, i32* @color_background, align 4
  %12 = load i32, i32* @MSG_PADDING, align 4
  %13 = load i32, i32* @MSG_PADDING, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @bar, i32 0, i32 0), align 8
  %15 = load i32, i32* @MSG_PADDING, align 4
  %16 = mul nsw i32 2, %15
  %17 = sub nsw i32 %14, %16
  %18 = call i32 @draw_util_text(i32 %9, %struct.TYPE_5__* @bar, i32 %10, i32 %11, i32 %12, i32 %13, i32 %17)
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @bar, i32 0, i32 0), align 8
  %20 = load i32, i32* @MSG_PADDING, align 4
  %21 = load i32, i32* @BTN_BORDER, align 4
  %22 = sub nsw i32 %20, %21
  %23 = load i32, i32* @BTN_PADDING, align 4
  %24 = sub nsw i32 %22, %23
  %25 = sub nsw i32 %19, %24
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @button_draw(i32* @btn_close, i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = sub nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %5, align 4
  %32 = load i64, i64* @CLOSE_BTN_GAP, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = sub nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %57, %2
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @buttoncnt, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %37
  %42 = load i64, i64* @BTN_GAP, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = sub nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %5, align 4
  %47 = load i32*, i32** @buttons, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %5, align 4
  %52 = call i64 @button_draw(i32* %50, i32 %51)
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = sub nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %41
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %37

60:                                               ; preds = %37
  %61 = load i32, i32* @color_border_bottom, align 4
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @bar, i32 0, i32 1), align 8
  %63 = load i64, i64* @BAR_BORDER, align 8
  %64 = sub nsw i64 %62, %63
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @bar, i32 0, i32 0), align 8
  %66 = load i64, i64* @BAR_BORDER, align 8
  %67 = call i32 @draw_util_rectangle(%struct.TYPE_5__* @bar, i32 %61, i32 0, i64 %64, i32 %65, i64 %66)
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 @xcb_flush(i32* %68)
  ret i32 1
}

declare dso_local i32 @draw_util_clear_surface(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @draw_util_text(i32, %struct.TYPE_5__*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @button_draw(i32*, i32) #1

declare dso_local i32 @draw_util_rectangle(%struct.TYPE_5__*, i32, i32, i64, i32, i64) #1

declare dso_local i32 @xcb_flush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
