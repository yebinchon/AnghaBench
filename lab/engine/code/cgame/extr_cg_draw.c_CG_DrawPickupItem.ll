; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_draw.c_CG_DrawPickupItem.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_draw.c_CG_DrawPickupItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@cg = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@STAT_HEALTH = common dso_local global i64 0, align 8
@ICON_SIZE = common dso_local global i32 0, align 4
@cg_items = common dso_local global %struct.TYPE_8__* null, align 8
@BIGCHAR_HEIGHT = common dso_local global i32 0, align 4
@bg_itemlist = common dso_local global %struct.TYPE_10__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @CG_DrawPickupItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CG_DrawPickupItem(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 2), align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = load i64, i64* @STAT_HEALTH, align 8
  %11 = getelementptr inbounds i64, i64* %9, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = icmp sle i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  store i32 %15, i32* %2, align 4
  br label %66

16:                                               ; preds = %1
  %17 = load i32, i32* @ICON_SIZE, align 4
  %18 = load i32, i32* %3, align 4
  %19 = sub nsw i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 0), align 8
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %64

23:                                               ; preds = %16
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 1), align 4
  %25 = call float* @CG_FadeColor(i32 %24, i32 3000)
  store float* %25, float** %5, align 8
  %26 = load float*, float** %5, align 8
  %27 = icmp ne float* %26, null
  br i1 %27, label %28, label %63

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @CG_RegisterItemVisuals(i32 %29)
  %31 = load float*, float** %5, align 8
  %32 = call i32 @trap_R_SetColor(float* %31)
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @ICON_SIZE, align 4
  %35 = load i32, i32* @ICON_SIZE, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cg_items, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @CG_DrawPic(i32 8, i32 %33, i32 %34, i32 %35, i32 %41)
  %43 = load i32, i32* @ICON_SIZE, align 4
  %44 = add nsw i32 %43, 16
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @ICON_SIZE, align 4
  %47 = sdiv i32 %46, 2
  %48 = load i32, i32* @BIGCHAR_HEIGHT, align 4
  %49 = sdiv i32 %48, 2
  %50 = sub nsw i32 %47, %49
  %51 = add nsw i32 %45, %50
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bg_itemlist, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load float*, float** %5, align 8
  %59 = getelementptr inbounds float, float* %58, i64 0
  %60 = load float, float* %59, align 4
  %61 = call i32 @CG_DrawBigString(i32 %44, i32 %51, i32 %57, float %60)
  %62 = call i32 @trap_R_SetColor(float* null)
  br label %63

63:                                               ; preds = %28, %23
  br label %64

64:                                               ; preds = %63, %16
  %65 = load i32, i32* %3, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %14
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local float* @CG_FadeColor(i32, i32) #1

declare dso_local i32 @CG_RegisterItemVisuals(i32) #1

declare dso_local i32 @trap_R_SetColor(float*) #1

declare dso_local i32 @CG_DrawPic(i32, i32, i32, i32, i32) #1

declare dso_local i32 @CG_DrawBigString(i32, i32, i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
