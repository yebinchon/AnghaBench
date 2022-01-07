; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/mm/extr_fault.c___load_new_mm_context.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/mm/extr_fault.c___load_new_mm_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i64*, i64 }
%struct.pcb_struct = type { i64, i64 }
%struct.TYPE_2__ = type { %struct.pcb_struct }

@HARDWARE_ASN_MASK = common dso_local global i64 0, align 8
@IDENT_ADDR = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__load_new_mm_context(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.pcb_struct*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  %5 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %6 = call i64 (...) @smp_processor_id()
  %7 = call i64 @__get_new_mm_context(%struct.mm_struct* %5, i64 %6)
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %10 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = call i64 (...) @smp_processor_id()
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  store i64 %8, i64* %13, align 8
  %14 = call %struct.TYPE_2__* (...) @current_thread_info()
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.pcb_struct* %15, %struct.pcb_struct** %4, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @HARDWARE_ASN_MASK, align 8
  %18 = and i64 %16, %17
  %19 = load %struct.pcb_struct*, %struct.pcb_struct** %4, align 8
  %20 = getelementptr inbounds %struct.pcb_struct, %struct.pcb_struct* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %22 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IDENT_ADDR, align 8
  %25 = sub i64 %23, %24
  %26 = load i64, i64* @PAGE_SHIFT, align 8
  %27 = lshr i64 %25, %26
  %28 = load %struct.pcb_struct*, %struct.pcb_struct** %4, align 8
  %29 = getelementptr inbounds %struct.pcb_struct, %struct.pcb_struct* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load %struct.pcb_struct*, %struct.pcb_struct** %4, align 8
  %31 = call i32 @__reload_thread(%struct.pcb_struct* %30)
  ret void
}

declare dso_local i64 @__get_new_mm_context(%struct.mm_struct*, i64) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local %struct.TYPE_2__* @current_thread_info(...) #1

declare dso_local i32 @__reload_thread(%struct.pcb_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
