; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_firmware.c_pdc_system_map_find_addrs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_firmware.c_pdc_system_map_find_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdc_system_map_addr_info = type { i32 }

@pdc_lock = common dso_local global i32 0, align 4
@PDC_SYSTEM_MAP = common dso_local global i32 0, align 4
@PDC_FIND_ADDRESS = common dso_local global i32 0, align 4
@pdc_result = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pdc_system_map_find_addrs(%struct.pdc_system_map_addr_info* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.pdc_system_map_addr_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.pdc_system_map_addr_info* %0, %struct.pdc_system_map_addr_info** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @spin_lock_irqsave(i32* @pdc_lock, i64 %9)
  %11 = load i32, i32* @PDC_SYSTEM_MAP, align 4
  %12 = load i32, i32* @PDC_FIND_ADDRESS, align 4
  %13 = load i32, i32* @pdc_result, align 4
  %14 = call i32 @__pa(i32 %13)
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @mem_pdc_call(i32 %11, i32 %12, i32 %14, i64 %15, i64 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @pdc_result, align 4
  %19 = call i32 @convert_to_wide(i32 %18)
  %20 = load %struct.pdc_system_map_addr_info*, %struct.pdc_system_map_addr_info** %4, align 8
  %21 = load i32, i32* @pdc_result, align 4
  %22 = call i32 @memcpy(%struct.pdc_system_map_addr_info* %20, i32 %21, i32 4)
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* @pdc_lock, i64 %23)
  %25 = load %struct.pdc_system_map_addr_info*, %struct.pdc_system_map_addr_info** %4, align 8
  %26 = getelementptr inbounds %struct.pdc_system_map_addr_info, %struct.pdc_system_map_addr_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @f_extend(i32 %27)
  %29 = load %struct.pdc_system_map_addr_info*, %struct.pdc_system_map_addr_info** %4, align 8
  %30 = getelementptr inbounds %struct.pdc_system_map_addr_info, %struct.pdc_system_map_addr_info* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %7, align 4
  ret i32 %31
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mem_pdc_call(i32, i32, i32, i64, i64) #1

declare dso_local i32 @__pa(i32) #1

declare dso_local i32 @convert_to_wide(i32) #1

declare dso_local i32 @memcpy(%struct.pdc_system_map_addr_info*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @f_extend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
