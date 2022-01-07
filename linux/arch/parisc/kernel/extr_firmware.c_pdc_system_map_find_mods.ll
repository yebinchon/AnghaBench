; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_firmware.c_pdc_system_map_find_mods.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_firmware.c_pdc_system_map_find_mods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdc_system_map_mod_info = type { i32 }
%struct.pdc_module_path = type { i32 }

@pdc_lock = common dso_local global i32 0, align 4
@PDC_SYSTEM_MAP = common dso_local global i32 0, align 4
@PDC_FIND_MODULE = common dso_local global i32 0, align 4
@pdc_result = common dso_local global i32 0, align 4
@pdc_result2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pdc_system_map_find_mods(%struct.pdc_system_map_mod_info* %0, %struct.pdc_module_path* %1, i64 %2) #0 {
  %4 = alloca %struct.pdc_system_map_mod_info*, align 8
  %5 = alloca %struct.pdc_module_path*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.pdc_system_map_mod_info* %0, %struct.pdc_system_map_mod_info** %4, align 8
  store %struct.pdc_module_path* %1, %struct.pdc_module_path** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @spin_lock_irqsave(i32* @pdc_lock, i64 %9)
  %11 = load i32, i32* @PDC_SYSTEM_MAP, align 4
  %12 = load i32, i32* @PDC_FIND_MODULE, align 4
  %13 = load i32, i32* @pdc_result, align 4
  %14 = call i32 @__pa(i32 %13)
  %15 = load i32, i32* @pdc_result2, align 4
  %16 = call i32 @__pa(i32 %15)
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @mem_pdc_call(i32 %11, i32 %12, i32 %14, i32 %16, i64 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @pdc_result, align 4
  %20 = call i32 @convert_to_wide(i32 %19)
  %21 = load %struct.pdc_system_map_mod_info*, %struct.pdc_system_map_mod_info** %4, align 8
  %22 = load i32, i32* @pdc_result, align 4
  %23 = call i32 @memcpy(%struct.pdc_system_map_mod_info* %21, i32 %22, i32 4)
  %24 = load %struct.pdc_module_path*, %struct.pdc_module_path** %5, align 8
  %25 = bitcast %struct.pdc_module_path* %24 to %struct.pdc_system_map_mod_info*
  %26 = load i32, i32* @pdc_result2, align 4
  %27 = call i32 @memcpy(%struct.pdc_system_map_mod_info* %25, i32 %26, i32 4)
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* @pdc_lock, i64 %28)
  %30 = load %struct.pdc_system_map_mod_info*, %struct.pdc_system_map_mod_info** %4, align 8
  %31 = getelementptr inbounds %struct.pdc_system_map_mod_info, %struct.pdc_system_map_mod_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @f_extend(i32 %32)
  %34 = load %struct.pdc_system_map_mod_info*, %struct.pdc_system_map_mod_info** %4, align 8
  %35 = getelementptr inbounds %struct.pdc_system_map_mod_info, %struct.pdc_system_map_mod_info* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %7, align 4
  ret i32 %36
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mem_pdc_call(i32, i32, i32, i32, i64) #1

declare dso_local i32 @__pa(i32) #1

declare dso_local i32 @convert_to_wide(i32) #1

declare dso_local i32 @memcpy(%struct.pdc_system_map_mod_info*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @f_extend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
