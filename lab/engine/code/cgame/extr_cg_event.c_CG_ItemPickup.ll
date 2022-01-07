; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_event.c_CG_ItemPickup.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_event.c_CG_ItemPickup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64 }

@cg = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@bg_itemlist = common dso_local global %struct.TYPE_6__* null, align 8
@IT_WEAPON = common dso_local global i64 0, align 8
@cg_autoswitch = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@WP_MACHINEGUN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @CG_ItemPickup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_ItemPickup(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 0), align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 2), align 8
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 5), align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 2), align 8
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 4), align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bg_itemlist, align 8
  %7 = load i32, i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @IT_WEAPON, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %1
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg_autoswitch, i32 0, i32 0), align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %14
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bg_itemlist, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @WP_MACHINEGUN, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %17
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 2), align 8
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 3), align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bg_itemlist, align 8
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 1), align 8
  br label %34

34:                                               ; preds = %26, %17, %14
  br label %35

35:                                               ; preds = %34, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
