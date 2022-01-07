; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/extr_driver.c___cpuidle_driver_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/extr_driver.c___cpuidle_driver_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_driver = type { i32, i32, %struct.TYPE_2__*, %struct.cpumask*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.cpumask = type { i32 }

@cpu_possible_mask = common dso_local global i64 0, align 8
@CPUIDLE_FLAG_TIMER_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuidle_driver*)* @__cpuidle_driver_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cpuidle_driver_init(%struct.cpuidle_driver* %0) #0 {
  %2 = alloca %struct.cpuidle_driver*, align 8
  %3 = alloca i32, align 4
  store %struct.cpuidle_driver* %0, %struct.cpuidle_driver** %2, align 8
  %4 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %2, align 8
  %5 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %4, i32 0, i32 4
  store i64 0, i64* %5, align 8
  %6 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %2, align 8
  %7 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %6, i32 0, i32 3
  %8 = load %struct.cpumask*, %struct.cpumask** %7, align 8
  %9 = icmp ne %struct.cpumask* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load i64, i64* @cpu_possible_mask, align 8
  %12 = inttoptr i64 %11 to %struct.cpumask*
  %13 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %2, align 8
  %14 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %13, i32 0, i32 3
  store %struct.cpumask* %12, %struct.cpumask** %14, align 8
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %2, align 8
  %17 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %39, %15
  %21 = load i32, i32* %3, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %20
  %24 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %2, align 8
  %25 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CPUIDLE_FLAG_TIMER_STOP, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %23
  %36 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %2, align 8
  %37 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %36, i32 0, i32 1
  store i32 1, i32* %37, align 4
  br label %42

38:                                               ; preds = %23
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %3, align 4
  br label %20

42:                                               ; preds = %35, %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
