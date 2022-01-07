; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_synic_set_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_synic_set_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu_hv_synic = type { i32 }
%struct.kvm_vcpu = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.kvm_lapic_irq = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@APIC_DEST_SELF = common dso_local global i32 0, align 4
@APIC_DEST_PHYSICAL = common dso_local global i32 0, align 4
@APIC_DM_FIXED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu_hv_synic*, i32)* @synic_set_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @synic_set_irq(%struct.kvm_vcpu_hv_synic* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu_hv_synic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca %struct.kvm_lapic_irq, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kvm_vcpu_hv_synic* %0, %struct.kvm_vcpu_hv_synic** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.kvm_vcpu_hv_synic*, %struct.kvm_vcpu_hv_synic** %4, align 8
  %11 = call %struct.kvm_vcpu* @synic_to_vcpu(%struct.kvm_vcpu_hv_synic* %10)
  store %struct.kvm_vcpu* %11, %struct.kvm_vcpu** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.kvm_vcpu_hv_synic*, %struct.kvm_vcpu_hv_synic** %4, align 8
  %14 = getelementptr inbounds %struct.kvm_vcpu_hv_synic, %struct.kvm_vcpu_hv_synic* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ARRAY_SIZE(i32 %15)
  %17 = icmp sge i32 %12, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %59

21:                                               ; preds = %2
  %22 = load %struct.kvm_vcpu_hv_synic*, %struct.kvm_vcpu_hv_synic** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @synic_read_sint(%struct.kvm_vcpu_hv_synic* %22, i32 %23)
  %25 = call i32 @synic_get_sint_vector(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %59

31:                                               ; preds = %21
  %32 = call i32 @memset(%struct.kvm_lapic_irq* %7, i32 0, i32 20)
  %33 = load i32, i32* @APIC_DEST_SELF, align 4
  %34 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %7, i32 0, i32 4
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @APIC_DEST_PHYSICAL, align 4
  %36 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %7, i32 0, i32 3
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @APIC_DM_FIXED, align 4
  %38 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %7, i32 0, i32 2
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %9, align 4
  %40 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %7, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %7, i32 0, i32 1
  store i32 1, i32* %41, align 4
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %43 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %46 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @kvm_irq_delivery_to_apic(i32 %44, i32 %48, %struct.kvm_lapic_irq* %7, i32* null)
  store i32 %49, i32* %8, align 4
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %51 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %5, align 4
  %54 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %7, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @trace_kvm_hv_synic_set_irq(i32 %52, i32 %53, i32 %55, i32 %56)
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %31, %28, %18
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.kvm_vcpu* @synic_to_vcpu(%struct.kvm_vcpu_hv_synic*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @synic_get_sint_vector(i32) #1

declare dso_local i32 @synic_read_sint(%struct.kvm_vcpu_hv_synic*, i32) #1

declare dso_local i32 @memset(%struct.kvm_lapic_irq*, i32, i32) #1

declare dso_local i32 @kvm_irq_delivery_to_apic(i32, i32, %struct.kvm_lapic_irq*, i32*) #1

declare dso_local i32 @trace_kvm_hv_synic_set_irq(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
