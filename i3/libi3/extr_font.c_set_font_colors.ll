; ModuleID = '/home/carl/AnghaBench/i3/libi3/extr_font.c_set_font_colors.c'
source_filename = "/home/carl/AnghaBench/i3/libi3/extr_font.c_set_font_colors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }

@savedFont = common dso_local global %struct.TYPE_10__* null, align 8
@XCB_GC_FOREGROUND = common dso_local global i32 0, align 4
@XCB_GC_BACKGROUND = common dso_local global i32 0, align 4
@XCB_GC_FONT = common dso_local global i32 0, align 4
@conn = common dso_local global i32 0, align 4
@pango_font_red = common dso_local global i32 0, align 4
@pango_font_green = common dso_local global i32 0, align 4
@pango_font_blue = common dso_local global i32 0, align 4
@pango_font_alpha = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_font_colors(i32 %0, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %1, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [3 x i32], align 4
  store i32 %0, i32* %4, align 4
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** @savedFont, align 8
  %8 = icmp ne %struct.TYPE_10__* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** @savedFont, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %47 [
    i32 130, label %14
    i32 128, label %15
    i32 129, label %38
  ]

14:                                               ; preds = %3
  br label %47

15:                                               ; preds = %3
  %16 = load i32, i32* @XCB_GC_FOREGROUND, align 4
  %17 = load i32, i32* @XCB_GC_BACKGROUND, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @XCB_GC_FONT, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %5, align 4
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %21, align 4
  %24 = getelementptr inbounds i32, i32* %21, i64 1
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %24, align 4
  %27 = getelementptr inbounds i32, i32* %24, i64 1
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** @savedFont, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %27, align 4
  %33 = load i32, i32* @conn, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %37 = call i32 @xcb_change_gc(i32 %33, i32 %34, i32 %35, i32* %36)
  br label %47

38:                                               ; preds = %3
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* @pango_font_red, align 4
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* @pango_font_green, align 4
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* @pango_font_blue, align 4
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* @pango_font_alpha, align 4
  br label %47

47:                                               ; preds = %3, %38, %15, %14
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @xcb_change_gc(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
