; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_newdraw.c_CG_DrawCTFPowerUp.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_newdraw.c_CG_DrawCTFPowerUp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@cgs = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@GT_CTF = common dso_local global i64 0, align 8
@cg = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@STAT_PERSISTANT_POWERUP = common dso_local global i64 0, align 8
@cg_items = common dso_local global %struct.TYPE_12__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @CG_DrawCTFPowerUp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_DrawCTFPowerUp(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cgs, i32 0, i32 0), align 8
  %5 = load i64, i64* @GT_CTF, align 8
  %6 = icmp slt i64 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %40

8:                                                ; preds = %1
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 0), align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* @STAT_PERSISTANT_POWERUP, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @CG_RegisterItemVisuals(i32 %19)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** @cg_items, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @CG_DrawPic(i32 %23, i32 %26, i32 %29, i32 %32, i32 %38)
  br label %40

40:                                               ; preds = %7, %18, %8
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
