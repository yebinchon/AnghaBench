; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_parisc-agp.c_parisc_agp_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_parisc-agp.c_parisc_agp_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._parisc_agp_info = type { i64, i64 }
%struct.agp_bridge_data = type { i32 }

@parisc_agp_info = common dso_local global %struct._parisc_agp_info zeroinitializer, align 8
@PCI_AGP_STATUS = common dso_local global i64 0, align 8
@PCI_AGP_COMMAND = common dso_local global i64 0, align 8
@AGP8X_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agp_bridge_data*, i32)* @parisc_agp_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parisc_agp_enable(%struct.agp_bridge_data* %0, i32 %1) #0 {
  %3 = alloca %struct.agp_bridge_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._parisc_agp_info*, align 8
  %6 = alloca i32, align 4
  store %struct.agp_bridge_data* %0, %struct.agp_bridge_data** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct._parisc_agp_info* @parisc_agp_info, %struct._parisc_agp_info** %5, align 8
  %7 = load %struct._parisc_agp_info*, %struct._parisc_agp_info** %5, align 8
  %8 = getelementptr inbounds %struct._parisc_agp_info, %struct._parisc_agp_info* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load %struct._parisc_agp_info*, %struct._parisc_agp_info** %5, align 8
  %11 = getelementptr inbounds %struct._parisc_agp_info, %struct._parisc_agp_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %9, %12
  %14 = load i64, i64* @PCI_AGP_STATUS, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @agp_collect_device_status(%struct.agp_bridge_data* %17, i32 %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, 256
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load %struct._parisc_agp_info*, %struct._parisc_agp_info** %5, align 8
  %25 = getelementptr inbounds %struct._parisc_agp_info, %struct._parisc_agp_info* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct._parisc_agp_info*, %struct._parisc_agp_info** %5, align 8
  %28 = getelementptr inbounds %struct._parisc_agp_info, %struct._parisc_agp_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  %31 = load i64, i64* @PCI_AGP_COMMAND, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel(i32 %23, i64 %32)
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @AGP8X_MODE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @agp_device_command(i32 %34, i32 %39)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @agp_collect_device_status(%struct.agp_bridge_data*, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @agp_device_command(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
