; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_BotCheckAir.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_BotCheckAir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64*, i32, i32 }

@INVENTORY_ENVIRONMENTSUIT = common dso_local global i64 0, align 8
@CONTENTS_WATER = common dso_local global i32 0, align 4
@CONTENTS_SLIME = common dso_local global i32 0, align 4
@CONTENTS_LAVA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotCheckAir(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %5 = load i64*, i64** %4, align 8
  %6 = load i64, i64* @INVENTORY_ENVIRONMENTSUIT, align 8
  %7 = getelementptr inbounds i64, i64* %5, i64 %6
  %8 = load i64, i64* %7, align 8
  %9 = icmp sle i64 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @trap_AAS_PointContents(i32 %13)
  %15 = load i32, i32* @CONTENTS_WATER, align 4
  %16 = load i32, i32* @CONTENTS_SLIME, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @CONTENTS_LAVA, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %14, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %10
  br label %28

23:                                               ; preds = %10
  br label %24

24:                                               ; preds = %23, %1
  %25 = call i32 (...) @FloatTime()
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %24, %22
  ret void
}

declare dso_local i32 @trap_AAS_PointContents(i32) #1

declare dso_local i32 @FloatTime(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
