; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-bcm2835.c_bcm2835_clock_debug_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-bcm2835.c_bcm2835_clock_debug_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.dentry = type { i32 }
%struct.bcm2835_clock = type { %struct.bcm2835_clock_data*, %struct.bcm2835_cprman* }
%struct.bcm2835_clock_data = type { i32 }
%struct.bcm2835_cprman = type { i32 }

@bcm2835_debugfs_clock_reg32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*, %struct.dentry*)* @bcm2835_clock_debug_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_clock_debug_init(%struct.clk_hw* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.bcm2835_clock*, align 8
  %6 = alloca %struct.bcm2835_cprman*, align 8
  %7 = alloca %struct.bcm2835_clock_data*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %9 = call %struct.bcm2835_clock* @bcm2835_clock_from_hw(%struct.clk_hw* %8)
  store %struct.bcm2835_clock* %9, %struct.bcm2835_clock** %5, align 8
  %10 = load %struct.bcm2835_clock*, %struct.bcm2835_clock** %5, align 8
  %11 = getelementptr inbounds %struct.bcm2835_clock, %struct.bcm2835_clock* %10, i32 0, i32 1
  %12 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %11, align 8
  store %struct.bcm2835_cprman* %12, %struct.bcm2835_cprman** %6, align 8
  %13 = load %struct.bcm2835_clock*, %struct.bcm2835_clock** %5, align 8
  %14 = getelementptr inbounds %struct.bcm2835_clock, %struct.bcm2835_clock* %13, i32 0, i32 0
  %15 = load %struct.bcm2835_clock_data*, %struct.bcm2835_clock_data** %14, align 8
  store %struct.bcm2835_clock_data* %15, %struct.bcm2835_clock_data** %7, align 8
  %16 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %6, align 8
  %17 = load %struct.bcm2835_clock_data*, %struct.bcm2835_clock_data** %7, align 8
  %18 = getelementptr inbounds %struct.bcm2835_clock_data, %struct.bcm2835_clock_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @bcm2835_debugfs_clock_reg32, align 4
  %21 = load i32, i32* @bcm2835_debugfs_clock_reg32, align 4
  %22 = call i32 @ARRAY_SIZE(i32 %21)
  %23 = load %struct.dentry*, %struct.dentry** %4, align 8
  %24 = call i32 @bcm2835_debugfs_regset(%struct.bcm2835_cprman* %16, i32 %19, i32 %20, i32 %22, %struct.dentry* %23)
  ret void
}

declare dso_local %struct.bcm2835_clock* @bcm2835_clock_from_hw(%struct.clk_hw*) #1

declare dso_local i32 @bcm2835_debugfs_regset(%struct.bcm2835_cprman*, i32, i32, i32, %struct.dentry*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
