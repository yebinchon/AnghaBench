; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_firmware.c_pdc_mem_pdt_read_entries.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_firmware.c_pdc_mem_pdt_read_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdc_mem_read_pdt = type { i32 }

@pdc_lock = common dso_local global i32 0, align 4
@PDC_MEM = common dso_local global i32 0, align 4
@PDC_MEM_READ_PDT = common dso_local global i32 0, align 4
@pdc_result = common dso_local global i64* null, align 8
@PDC_OK = common dso_local global i32 0, align 4
@PDC_ERROR = common dso_local global i32 0, align 4
@parisc_narrow_firmware = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pdc_mem_pdt_read_entries(%struct.pdc_mem_read_pdt* %0, i64* %1) #0 {
  %3 = alloca %struct.pdc_mem_read_pdt*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.pdc_mem_read_pdt* %0, %struct.pdc_mem_read_pdt** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = load i64, i64* %6, align 8
  %8 = call i32 @spin_lock_irqsave(i32* @pdc_lock, i64 %7)
  %9 = load i32, i32* @PDC_MEM, align 4
  %10 = load i32, i32* @PDC_MEM_READ_PDT, align 4
  %11 = load i64*, i64** @pdc_result, align 8
  %12 = call i32 @__pa(i64* %11)
  %13 = load i64*, i64** %4, align 8
  %14 = call i32 @__pa(i64* %13)
  %15 = call i32 @mem_pdc_call(i32 %9, i32 %10, i32 %12, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @PDC_OK, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load i64*, i64** @pdc_result, align 8
  %21 = call i32 @convert_to_wide(i64* %20)
  %22 = load %struct.pdc_mem_read_pdt*, %struct.pdc_mem_read_pdt** %3, align 8
  %23 = load i64*, i64** @pdc_result, align 8
  %24 = call i32 @memcpy(%struct.pdc_mem_read_pdt* %22, i64* %23, i32 4)
  br label %25

25:                                               ; preds = %19, %2
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* @pdc_lock, i64 %26)
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mem_pdc_call(i32, i32, i32, i32) #1

declare dso_local i32 @__pa(i64*) #1

declare dso_local i32 @convert_to_wide(i64*) #1

declare dso_local i32 @memcpy(%struct.pdc_mem_read_pdt*, i64*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
