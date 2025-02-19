; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_kvm_x2apic_msr_read.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_kvm_x2apic_msr_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvm_lapic* }
%struct.kvm_lapic = type { i32 }

@APIC_BASE_MSR = common dso_local global i32 0, align 4
@APIC_DFR = common dso_local global i32 0, align 4
@APIC_ICR2 = common dso_local global i32 0, align 4
@APIC_ICR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_x2apic_msr_read(%struct.kvm_vcpu* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.kvm_lapic*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %13 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.kvm_lapic*, %struct.kvm_lapic** %14, align 8
  store %struct.kvm_lapic* %15, %struct.kvm_lapic** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @APIC_BASE_MSR, align 4
  %18 = sub nsw i32 %16, %17
  %19 = shl i32 %18, 4
  store i32 %19, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %21 = call i32 @lapic_in_kernel(%struct.kvm_vcpu* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load %struct.kvm_lapic*, %struct.kvm_lapic** %8, align 8
  %25 = call i32 @apic_x2apic_mode(%struct.kvm_lapic* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23, %3
  store i32 1, i32* %4, align 4
  br label %57

28:                                               ; preds = %23
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @APIC_DFR, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @APIC_ICR2, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %28
  store i32 1, i32* %4, align 4
  br label %57

37:                                               ; preds = %32
  %38 = load %struct.kvm_lapic*, %struct.kvm_lapic** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i64 @kvm_lapic_reg_read(%struct.kvm_lapic* %38, i32 %39, i32 4, i32* %10)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 1, i32* %4, align 4
  br label %57

43:                                               ; preds = %37
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @APIC_ICR, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load %struct.kvm_lapic*, %struct.kvm_lapic** %8, align 8
  %49 = load i32, i32* @APIC_ICR2, align 4
  %50 = call i64 @kvm_lapic_reg_read(%struct.kvm_lapic* %48, i32 %49, i32 4, i32* %11)
  br label %51

51:                                               ; preds = %47, %43
  %52 = load i32, i32* %11, align 4
  %53 = shl i32 %52, 32
  %54 = load i32, i32* %10, align 4
  %55 = or i32 %53, %54
  %56 = load i32*, i32** %7, align 8
  store i32 %55, i32* %56, align 4
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %51, %42, %36, %27
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @lapic_in_kernel(%struct.kvm_vcpu*) #1

declare dso_local i32 @apic_x2apic_mode(%struct.kvm_lapic*) #1

declare dso_local i64 @kvm_lapic_reg_read(%struct.kvm_lapic*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
