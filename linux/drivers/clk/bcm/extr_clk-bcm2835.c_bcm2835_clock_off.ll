; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-bcm2835.c_bcm2835_clock_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-bcm2835.c_bcm2835_clock_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.bcm2835_clock = type { %struct.bcm2835_clock_data*, %struct.bcm2835_cprman* }
%struct.bcm2835_clock_data = type { i32 }
%struct.bcm2835_cprman = type { i32 }

@CM_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @bcm2835_clock_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_clock_off(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.bcm2835_clock*, align 8
  %4 = alloca %struct.bcm2835_cprman*, align 8
  %5 = alloca %struct.bcm2835_clock_data*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call %struct.bcm2835_clock* @bcm2835_clock_from_hw(%struct.clk_hw* %6)
  store %struct.bcm2835_clock* %7, %struct.bcm2835_clock** %3, align 8
  %8 = load %struct.bcm2835_clock*, %struct.bcm2835_clock** %3, align 8
  %9 = getelementptr inbounds %struct.bcm2835_clock, %struct.bcm2835_clock* %8, i32 0, i32 1
  %10 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %9, align 8
  store %struct.bcm2835_cprman* %10, %struct.bcm2835_cprman** %4, align 8
  %11 = load %struct.bcm2835_clock*, %struct.bcm2835_clock** %3, align 8
  %12 = getelementptr inbounds %struct.bcm2835_clock, %struct.bcm2835_clock* %11, i32 0, i32 0
  %13 = load %struct.bcm2835_clock_data*, %struct.bcm2835_clock_data** %12, align 8
  store %struct.bcm2835_clock_data* %13, %struct.bcm2835_clock_data** %5, align 8
  %14 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %4, align 8
  %15 = getelementptr inbounds %struct.bcm2835_cprman, %struct.bcm2835_cprman* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %4, align 8
  %18 = load %struct.bcm2835_clock_data*, %struct.bcm2835_clock_data** %5, align 8
  %19 = getelementptr inbounds %struct.bcm2835_clock_data, %struct.bcm2835_clock_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %4, align 8
  %22 = load %struct.bcm2835_clock_data*, %struct.bcm2835_clock_data** %5, align 8
  %23 = getelementptr inbounds %struct.bcm2835_clock_data, %struct.bcm2835_clock_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @cprman_read(%struct.bcm2835_cprman* %21, i32 %24)
  %26 = load i32, i32* @CM_ENABLE, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = call i32 @cprman_write(%struct.bcm2835_cprman* %17, i32 %20, i32 %28)
  %30 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %4, align 8
  %31 = getelementptr inbounds %struct.bcm2835_cprman, %struct.bcm2835_cprman* %30, i32 0, i32 0
  %32 = call i32 @spin_unlock(i32* %31)
  %33 = load %struct.bcm2835_clock*, %struct.bcm2835_clock** %3, align 8
  %34 = call i32 @bcm2835_clock_wait_busy(%struct.bcm2835_clock* %33)
  ret void
}

declare dso_local %struct.bcm2835_clock* @bcm2835_clock_from_hw(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cprman_write(%struct.bcm2835_cprman*, i32, i32) #1

declare dso_local i32 @cprman_read(%struct.bcm2835_cprman*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @bcm2835_clock_wait_busy(%struct.bcm2835_clock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
