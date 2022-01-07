; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_kvm_hv_vapic_msr_write.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_kvm_hv_vapic_msr_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvm_lapic* }
%struct.kvm_lapic = type { i32 }

@APIC_ICR = common dso_local global i32 0, align 4
@APIC_ICR2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_hv_vapic_msr_write(%struct.kvm_vcpu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.kvm_lapic*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.kvm_lapic*, %struct.kvm_lapic** %11, align 8
  store %struct.kvm_lapic* %12, %struct.kvm_lapic** %8, align 8
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %14 = call i32 @lapic_in_kernel(%struct.kvm_vcpu* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %32

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @APIC_ICR, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load %struct.kvm_lapic*, %struct.kvm_lapic** %8, align 8
  %23 = load i32, i32* @APIC_ICR2, align 4
  %24 = load i32, i32* %7, align 4
  %25 = ashr i32 %24, 32
  %26 = call i32 @kvm_lapic_reg_write(%struct.kvm_lapic* %22, i32 %23, i32 %25)
  br label %27

27:                                               ; preds = %21, %17
  %28 = load %struct.kvm_lapic*, %struct.kvm_lapic** %8, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @kvm_lapic_reg_write(%struct.kvm_lapic* %28, i32 %29, i32 %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %27, %16
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @lapic_in_kernel(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_lapic_reg_write(%struct.kvm_lapic*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
