; ModuleID = '/home/carl/AnghaBench/i3/i3-nagbar/extr_main.c_button_draw.c'
source_filename = "/home/carl/AnghaBench/i3/i3-nagbar/extr_main.c_button_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@BTN_PADDING = common dso_local global i32 0, align 4
@BTN_BORDER = common dso_local global i32 0, align 4
@bar = common dso_local global i32 0, align 4
@color_border = common dso_local global i32 0, align 4
@MSG_PADDING = common dso_local global i32 0, align 4
@font = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@color_button_background = common dso_local global i32 0, align 4
@color_text = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @button_draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @button_draw(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @predict_text_width(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @BTN_PADDING, align 4
  %12 = mul nsw i32 2, %11
  %13 = add nsw i32 %10, %12
  %14 = load i32, i32* @BTN_BORDER, align 4
  %15 = mul nsw i32 2, %14
  %16 = add nsw i32 %13, %15
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %19, %22
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @color_border, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %27, %30
  %32 = load i32, i32* @MSG_PADDING, align 4
  %33 = load i32, i32* @BTN_PADDING, align 4
  %34 = sub nsw i32 %32, %33
  %35 = load i32, i32* @BTN_BORDER, align 4
  %36 = sub nsw i32 %34, %35
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @font, i32 0, i32 0), align 8
  %41 = load i32, i32* @BTN_PADDING, align 4
  %42 = mul nsw i32 2, %41
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %40, %43
  %45 = load i32, i32* @BTN_BORDER, align 4
  %46 = mul nsw i32 2, %45
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %44, %47
  %49 = call i32 @draw_util_rectangle(i32* @bar, i32 %26, i32 %31, i32 %36, i32 %39, i64 %48)
  %50 = load i32, i32* @color_button_background, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %51, %54
  %56 = load i32, i32* @BTN_BORDER, align 4
  %57 = add nsw i32 %55, %56
  %58 = load i32, i32* @MSG_PADDING, align 4
  %59 = load i32, i32* @BTN_PADDING, align 4
  %60 = sub nsw i32 %58, %59
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @BTN_PADDING, align 4
  %63 = mul nsw i32 2, %62
  %64 = add nsw i32 %61, %63
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @font, i32 0, i32 0), align 8
  %66 = load i32, i32* @BTN_PADDING, align 4
  %67 = mul nsw i32 2, %66
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %65, %68
  %70 = call i32 @draw_util_rectangle(i32* @bar, i32 %50, i32 %57, i32 %60, i32 %64, i64 %69)
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @color_text, align 4
  %75 = load i32, i32* @color_button_background, align 4
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %76, %79
  %81 = load i32, i32* @BTN_BORDER, align 4
  %82 = add nsw i32 %80, %81
  %83 = load i32, i32* @BTN_PADDING, align 4
  %84 = add nsw i32 %82, %83
  %85 = load i32, i32* @MSG_PADDING, align 4
  %86 = call i32 @draw_util_text(i32 %73, i32* @bar, i32 %74, i32 %75, i32 %84, i32 %85, i32 200)
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  ret i32 %89
}

declare dso_local i32 @predict_text_width(i32) #1

declare dso_local i32 @draw_util_rectangle(i32*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @draw_util_text(i32, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
