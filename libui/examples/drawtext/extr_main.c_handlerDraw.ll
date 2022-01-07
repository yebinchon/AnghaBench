; ModuleID = '/home/carl/AnghaBench/libui/examples/drawtext/extr_main.c_handlerDraw.c'
source_filename = "/home/carl/AnghaBench/libui/examples/drawtext/extr_main.c_handlerDraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64, i32, i32*, i32 }

@attrstr = common dso_local global i32 0, align 4
@fontButton = common dso_local global i32 0, align 4
@alignment = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_6__*)* @handlerDraw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handlerDraw(i32* %0, i32* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  %10 = load i32, i32* @attrstr, align 4
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 3
  store i32 %10, i32* %11, align 8
  %12 = load i32, i32* @fontButton, align 4
  %13 = call i32 @uiFontButtonFont(i32 %12, i32* %8)
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  store i32* %8, i32** %14, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* @alignment, align 4
  %20 = call i64 @uiComboboxSelected(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store i64 %20, i64* %21, align 8
  %22 = call i32* @uiDrawNewTextLayout(%struct.TYPE_5__* %9)
  store i32* %22, i32** %7, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @uiDrawText(i32 %25, i32* %26, i32 0, i32 0)
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @uiDrawFreeTextLayout(i32* %28)
  %30 = call i32 @uiFreeFontButtonFont(i32* %8)
  ret void
}

declare dso_local i32 @uiFontButtonFont(i32, i32*) #1

declare dso_local i64 @uiComboboxSelected(i32) #1

declare dso_local i32* @uiDrawNewTextLayout(%struct.TYPE_5__*) #1

declare dso_local i32 @uiDrawText(i32, i32*, i32, i32) #1

declare dso_local i32 @uiDrawFreeTextLayout(i32*) #1

declare dso_local i32 @uiFreeFontButtonFont(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
