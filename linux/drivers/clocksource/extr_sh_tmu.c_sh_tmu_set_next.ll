; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_tmu.c_sh_tmu_set_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_tmu.c_sh_tmu_set_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_tmu_channel = type { i32 }

@TCR = common dso_local global i32 0, align 4
@TCR_UNIE = common dso_local global i64 0, align 8
@TCR_TPSC_CLK4 = common dso_local global i64 0, align 8
@TCOR = common dso_local global i32 0, align 4
@TCNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_tmu_channel*, i64, i32)* @sh_tmu_set_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_tmu_set_next(%struct.sh_tmu_channel* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.sh_tmu_channel*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.sh_tmu_channel* %0, %struct.sh_tmu_channel** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %4, align 8
  %8 = call i32 @sh_tmu_start_stop_ch(%struct.sh_tmu_channel* %7, i32 0)
  %9 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %4, align 8
  %10 = load i32, i32* @TCR, align 4
  %11 = call i32 @sh_tmu_read(%struct.sh_tmu_channel* %9, i32 %10)
  %12 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %4, align 8
  %13 = load i32, i32* @TCR, align 4
  %14 = load i64, i64* @TCR_UNIE, align 8
  %15 = load i64, i64* @TCR_TPSC_CLK4, align 8
  %16 = or i64 %14, %15
  %17 = call i32 @sh_tmu_write(%struct.sh_tmu_channel* %12, i32 %13, i64 %16)
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %4, align 8
  %22 = load i32, i32* @TCOR, align 4
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @sh_tmu_write(%struct.sh_tmu_channel* %21, i32 %22, i64 %23)
  br label %29

25:                                               ; preds = %3
  %26 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %4, align 8
  %27 = load i32, i32* @TCOR, align 4
  %28 = call i32 @sh_tmu_write(%struct.sh_tmu_channel* %26, i32 %27, i64 4294967295)
  br label %29

29:                                               ; preds = %25, %20
  %30 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %4, align 8
  %31 = load i32, i32* @TCNT, align 4
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @sh_tmu_write(%struct.sh_tmu_channel* %30, i32 %31, i64 %32)
  %34 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %4, align 8
  %35 = call i32 @sh_tmu_start_stop_ch(%struct.sh_tmu_channel* %34, i32 1)
  ret void
}

declare dso_local i32 @sh_tmu_start_stop_ch(%struct.sh_tmu_channel*, i32) #1

declare dso_local i32 @sh_tmu_read(%struct.sh_tmu_channel*, i32) #1

declare dso_local i32 @sh_tmu_write(%struct.sh_tmu_channel*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
