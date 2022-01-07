; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_kvm_x2apic_msr_write.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_kvm_x2apic_msr_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvm_lapic* }
%struct.kvm_lapic = type { i32 }

@APIC_BASE_MSR = common dso_local global i32 0, align 4
@APIC_ICR2 = common dso_local global i32 0, align 4
@APIC_ICR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_x2apic_msr_write(%struct.kvm_vcpu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.kvm_lapic*, align 8
  %9 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %11 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.kvm_lapic*, %struct.kvm_lapic** %12, align 8
  store %struct.kvm_lapic* %13, %struct.kvm_lapic** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @APIC_BASE_MSR, align 4
  %16 = sub nsw i32 %14, %15
  %17 = shl i32 %16, 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %19 = call i32 @lapic_in_kernel(%struct.kvm_vcpu* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.kvm_lapic*, %struct.kvm_lapic** %8, align 8
  %23 = call i32 @apic_x2apic_mode(%struct.kvm_lapic* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21, %3
  store i32 1, i32* %4, align 4
  br label %46

26:                                               ; preds = %21
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @APIC_ICR2, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 1, i32* %4, align 4
  br label %46

31:                                               ; preds = %26
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @APIC_ICR, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load %struct.kvm_lapic*, %struct.kvm_lapic** %8, align 8
  %37 = load i32, i32* @APIC_ICR2, align 4
  %38 = load i32, i32* %7, align 4
  %39 = ashr i32 %38, 32
  %40 = call i32 @kvm_lapic_reg_write(%struct.kvm_lapic* %36, i32 %37, i32 %39)
  br label %41

41:                                               ; preds = %35, %31
  %42 = load %struct.kvm_lapic*, %struct.kvm_lapic** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @kvm_lapic_reg_write(%struct.kvm_lapic* %42, i32 %43, i32 %44)
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %41, %30, %25
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @lapic_in_kernel(%struct.kvm_vcpu*) #1

declare dso_local i32 @apic_x2apic_mode(%struct.kvm_lapic*) #1

declare dso_local i32 @kvm_lapic_reg_write(%struct.kvm_lapic*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
