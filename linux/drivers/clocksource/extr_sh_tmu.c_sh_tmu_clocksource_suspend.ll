; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_tmu.c_sh_tmu_clocksource_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_tmu.c_sh_tmu_clocksource_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clocksource = type { i32 }
%struct.sh_tmu_channel = type { i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clocksource*)* @sh_tmu_clocksource_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_tmu_clocksource_suspend(%struct.clocksource* %0) #0 {
  %2 = alloca %struct.clocksource*, align 8
  %3 = alloca %struct.sh_tmu_channel*, align 8
  store %struct.clocksource* %0, %struct.clocksource** %2, align 8
  %4 = load %struct.clocksource*, %struct.clocksource** %2, align 8
  %5 = call %struct.sh_tmu_channel* @cs_to_sh_tmu(%struct.clocksource* %4)
  store %struct.sh_tmu_channel* %5, %struct.sh_tmu_channel** %3, align 8
  %6 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %3, align 8
  %7 = getelementptr inbounds %struct.sh_tmu_channel, %struct.sh_tmu_channel* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %27

11:                                               ; preds = %1
  %12 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %3, align 8
  %13 = getelementptr inbounds %struct.sh_tmu_channel, %struct.sh_tmu_channel* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, -1
  store i64 %15, i64* %13, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %11
  %18 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %3, align 8
  %19 = call i32 @__sh_tmu_disable(%struct.sh_tmu_channel* %18)
  %20 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %3, align 8
  %21 = getelementptr inbounds %struct.sh_tmu_channel, %struct.sh_tmu_channel* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = call i32 @pm_genpd_syscore_poweroff(i32* %25)
  br label %27

27:                                               ; preds = %10, %17, %11
  ret void
}

declare dso_local %struct.sh_tmu_channel* @cs_to_sh_tmu(%struct.clocksource*) #1

declare dso_local i32 @__sh_tmu_disable(%struct.sh_tmu_channel*) #1

declare dso_local i32 @pm_genpd_syscore_poweroff(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
