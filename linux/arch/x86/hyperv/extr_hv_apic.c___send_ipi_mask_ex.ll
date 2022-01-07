; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/hyperv/extr_hv_apic.c___send_ipi_mask_ex.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/hyperv/extr_hv_apic.c___send_ipi_mask_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.cpumask = type { i32 }
%struct.hv_send_ipi_ex = type { i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i64 }

@ms_hyperv = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@HV_X64_EX_PROCESSOR_MASKS_RECOMMENDED = common dso_local global i32 0, align 4
@hyperv_pcpu_input_arg = common dso_local global i32 0, align 4
@cpu_present_mask = common dso_local global i32 0, align 4
@HV_GENERIC_SET_SPARSE_4K = common dso_local global i32 0, align 4
@HV_GENERIC_SET_ALL = common dso_local global i32 0, align 4
@HVCALL_SEND_IPI_EX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpumask*, i32)* @__send_ipi_mask_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__send_ipi_mask_ex(%struct.cpumask* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpumask*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hv_send_ipi_ex**, align 8
  %7 = alloca %struct.hv_send_ipi_ex*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cpumask* %0, %struct.cpumask** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ms_hyperv, i32 0, i32 0), align 4
  %12 = load i32, i32* @HV_X64_EX_PROCESSOR_MASKS_RECOMMENDED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %77

16:                                               ; preds = %2
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @local_irq_save(i64 %17)
  %19 = load i32, i32* @hyperv_pcpu_input_arg, align 4
  %20 = call i64 @this_cpu_ptr(i32 %19)
  %21 = inttoptr i64 %20 to %struct.hv_send_ipi_ex**
  store %struct.hv_send_ipi_ex** %21, %struct.hv_send_ipi_ex*** %6, align 8
  %22 = load %struct.hv_send_ipi_ex**, %struct.hv_send_ipi_ex*** %6, align 8
  %23 = load %struct.hv_send_ipi_ex*, %struct.hv_send_ipi_ex** %22, align 8
  store %struct.hv_send_ipi_ex* %23, %struct.hv_send_ipi_ex** %7, align 8
  %24 = load %struct.hv_send_ipi_ex*, %struct.hv_send_ipi_ex** %7, align 8
  %25 = icmp ne %struct.hv_send_ipi_ex* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %16
  br label %70

31:                                               ; preds = %16
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.hv_send_ipi_ex*, %struct.hv_send_ipi_ex** %7, align 8
  %34 = getelementptr inbounds %struct.hv_send_ipi_ex, %struct.hv_send_ipi_ex* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.hv_send_ipi_ex*, %struct.hv_send_ipi_ex** %7, align 8
  %36 = getelementptr inbounds %struct.hv_send_ipi_ex, %struct.hv_send_ipi_ex* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.hv_send_ipi_ex*, %struct.hv_send_ipi_ex** %7, align 8
  %38 = getelementptr inbounds %struct.hv_send_ipi_ex, %struct.hv_send_ipi_ex* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.cpumask*, %struct.cpumask** %4, align 8
  %41 = load i32, i32* @cpu_present_mask, align 4
  %42 = call i32 @cpumask_equal(%struct.cpumask* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %31
  %45 = load i32, i32* @HV_GENERIC_SET_SPARSE_4K, align 4
  %46 = load %struct.hv_send_ipi_ex*, %struct.hv_send_ipi_ex** %7, align 8
  %47 = getelementptr inbounds %struct.hv_send_ipi_ex, %struct.hv_send_ipi_ex* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load %struct.hv_send_ipi_ex*, %struct.hv_send_ipi_ex** %7, align 8
  %50 = getelementptr inbounds %struct.hv_send_ipi_ex, %struct.hv_send_ipi_ex* %49, i32 0, i32 1
  %51 = load %struct.cpumask*, %struct.cpumask** %4, align 8
  %52 = call i32 @cpumask_to_vpset(%struct.TYPE_4__* %50, %struct.cpumask* %51)
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %44, %31
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %70

57:                                               ; preds = %53
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* @HV_GENERIC_SET_ALL, align 4
  %62 = load %struct.hv_send_ipi_ex*, %struct.hv_send_ipi_ex** %7, align 8
  %63 = getelementptr inbounds %struct.hv_send_ipi_ex, %struct.hv_send_ipi_ex* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  br label %65

65:                                               ; preds = %60, %57
  %66 = load i32, i32* @HVCALL_SEND_IPI_EX, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.hv_send_ipi_ex*, %struct.hv_send_ipi_ex** %7, align 8
  %69 = call i32 @hv_do_rep_hypercall(i32 %66, i32 0, i32 %67, %struct.hv_send_ipi_ex* %68, i32* null)
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %65, %56, %30
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @local_irq_restore(i64 %71)
  %73 = load i32, i32* %10, align 4
  %74 = icmp eq i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 1, i32 0
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %70, %15
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @this_cpu_ptr(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cpumask_equal(%struct.cpumask*, i32) #1

declare dso_local i32 @cpumask_to_vpset(%struct.TYPE_4__*, %struct.cpumask*) #1

declare dso_local i32 @hv_do_rep_hypercall(i32, i32, i32, %struct.hv_send_ipi_ex*, i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
