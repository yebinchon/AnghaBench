; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_draw.c_CG_DrawHoldableItem.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_draw.c_CG_DrawHoldableItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_7__ = type { i32 }

@cg = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@STAT_HOLDABLE_ITEM = common dso_local global i64 0, align 8
@ICON_SIZE = common dso_local global i32 0, align 4
@SCREEN_HEIGHT = common dso_local global i32 0, align 4
@cg_items = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CG_DrawHoldableItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_DrawHoldableItem() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 0), align 8
  %3 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* @STAT_HOLDABLE_ITEM, align 8
  %7 = getelementptr inbounds i32, i32* %5, i64 %6
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %0
  %12 = load i32, i32* %1, align 4
  %13 = call i32 @CG_RegisterItemVisuals(i32 %12)
  %14 = load i32, i32* @ICON_SIZE, align 4
  %15 = sub nsw i32 640, %14
  %16 = load i32, i32* @SCREEN_HEIGHT, align 4
  %17 = load i32, i32* @ICON_SIZE, align 4
  %18 = sub nsw i32 %16, %17
  %19 = sdiv i32 %18, 2
  %20 = load i32, i32* @ICON_SIZE, align 4
  %21 = load i32, i32* @ICON_SIZE, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cg_items, align 8
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @CG_DrawPic(i32 %15, i32 %19, i32 %20, i32 %21, i32 %27)
  br label %29

29:                                               ; preds = %11, %0
  ret void
}

declare dso_local i32 @CG_RegisterItemVisuals(i32) #1

declare dso_local i32 @CG_DrawPic(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
