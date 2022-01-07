; ModuleID = '/home/carl/AnghaBench/lede/package/boot/uboot-oxnas/src/arch/arm/cpu/arm1136/nas782x/extr_timer.c_get_timer_masked.c'
source_filename = "/home/carl/AnghaBench/lede/package/boot/uboot-oxnas/src/arch/arm/cpu/arm1136/nas782x/extr_timer.c_get_timer_masked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@READ_TIMER = common dso_local global i32 0, align 4
@gd = common dso_local global %struct.TYPE_4__* null, align 8
@TIMER_LOAD_VAL = common dso_local global i32 0, align 4
@TIMER_CLOCK = common dso_local global i32 0, align 4
@CONFIG_SYS_HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_timer_masked() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @READ_TIMER, align 4
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gd, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp sge i32 %3, %7
  br i1 %8, label %9, label %21

9:                                                ; preds = %0
  %10 = load i32, i32* %1, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gd, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %10, %14
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gd, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, %15
  store i32 %20, i32* %18, align 4
  br label %39

21:                                               ; preds = %0
  %22 = load i32, i32* @TIMER_LOAD_VAL, align 4
  %23 = load i32, i32* @TIMER_CLOCK, align 4
  %24 = load i32, i32* @CONFIG_SYS_HZ, align 4
  %25 = sdiv i32 %23, %24
  %26 = sdiv i32 %22, %25
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gd, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %26, %30
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %31, %32
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gd, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, %33
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %21, %9
  %40 = load i32, i32* %1, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gd, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gd, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
