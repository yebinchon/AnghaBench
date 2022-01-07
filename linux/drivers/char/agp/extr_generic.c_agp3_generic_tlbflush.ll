; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_generic.c_agp3_generic_tlbflush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_generic.c_agp3_generic_tlbflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.agp_memory = type { i32 }

@agp_bridge = common dso_local global %struct.TYPE_2__* null, align 8
@AGPCTRL = common dso_local global i64 0, align 8
@AGPCTRL_GTLBEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @agp3_generic_tlbflush(%struct.agp_memory* %0) #0 {
  %2 = alloca %struct.agp_memory*, align 8
  %3 = alloca i32, align 4
  store %struct.agp_memory* %0, %struct.agp_memory** %2, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @AGPCTRL, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @pci_read_config_dword(i32 %6, i64 %11, i32* %3)
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AGPCTRL, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @AGPCTRL_GTLBEN, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  %25 = call i32 @pci_write_config_dword(i32 %15, i64 %20, i32 %24)
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @AGPCTRL, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @pci_write_config_dword(i32 %28, i64 %33, i32 %34)
  ret void
}

declare dso_local i32 @pci_read_config_dword(i32, i64, i32*) #1

declare dso_local i32 @pci_write_config_dword(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
