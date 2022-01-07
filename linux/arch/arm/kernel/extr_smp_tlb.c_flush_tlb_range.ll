; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_smp_tlb.c_flush_tlb_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_smp_tlb.c_flush_tlb_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }
%struct.tlb_args = type { i64, i64, %struct.vm_area_struct* }

@ipi_flush_tlb_range = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_tlb_range(%struct.vm_area_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.tlb_args, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = call i64 (...) @tlb_ops_need_broadcast()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %3
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %12 = getelementptr inbounds %struct.tlb_args, %struct.tlb_args* %7, i32 0, i32 2
  store %struct.vm_area_struct* %11, %struct.vm_area_struct** %12, align 8
  %13 = load i64, i64* %5, align 8
  %14 = getelementptr inbounds %struct.tlb_args, %struct.tlb_args* %7, i32 0, i32 0
  store i64 %13, i64* %14, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds %struct.tlb_args, %struct.tlb_args* %7, i32 0, i32 1
  store i64 %15, i64* %16, align 8
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %18 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @mm_cpumask(i32 %19)
  %21 = load i32, i32* @ipi_flush_tlb_range, align 4
  %22 = call i32 @on_each_cpu_mask(i32 %20, i32 %21, %struct.tlb_args* %7, i32 1)
  br label %28

23:                                               ; preds = %3
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @local_flush_tlb_range(%struct.vm_area_struct* %24, i64 %25, i64 %26)
  br label %28

28:                                               ; preds = %23, %10
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %30 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @broadcast_tlb_mm_a15_erratum(i32 %31)
  ret void
}

declare dso_local i64 @tlb_ops_need_broadcast(...) #1

declare dso_local i32 @on_each_cpu_mask(i32, i32, %struct.tlb_args*, i32) #1

declare dso_local i32 @mm_cpumask(i32) #1

declare dso_local i32 @local_flush_tlb_range(%struct.vm_area_struct*, i64, i64) #1

declare dso_local i32 @broadcast_tlb_mm_a15_erratum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
