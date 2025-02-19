; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_tmu.c_sh_tmu_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_tmu.c_sh_tmu_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_tmu_channel = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_tmu_channel*)* @sh_tmu_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_tmu_enable(%struct.sh_tmu_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sh_tmu_channel*, align 8
  store %struct.sh_tmu_channel* %0, %struct.sh_tmu_channel** %3, align 8
  %4 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %3, align 8
  %5 = getelementptr inbounds %struct.sh_tmu_channel, %struct.sh_tmu_channel* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* %5, align 8
  %8 = icmp sgt i32 %6, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

10:                                               ; preds = %1
  %11 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %3, align 8
  %12 = getelementptr inbounds %struct.sh_tmu_channel, %struct.sh_tmu_channel* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = call i32 @pm_runtime_get_sync(i32* %16)
  %18 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %3, align 8
  %19 = getelementptr inbounds %struct.sh_tmu_channel, %struct.sh_tmu_channel* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = call i32 @dev_pm_syscore_device(i32* %23, i32 1)
  %25 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %3, align 8
  %26 = call i32 @__sh_tmu_enable(%struct.sh_tmu_channel* %25)
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %10, %9
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @dev_pm_syscore_device(i32*, i32) #1

declare dso_local i32 @__sh_tmu_enable(%struct.sh_tmu_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
