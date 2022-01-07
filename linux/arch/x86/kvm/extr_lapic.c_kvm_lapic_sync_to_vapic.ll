; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_kvm_lapic_sync_to_vapic.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_kvm_lapic_sync_to_vapic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.kvm_lapic*, i32 }
%struct.kvm_lapic = type { i32 }

@KVM_APIC_CHECK_VAPIC = common dso_local global i32 0, align 4
@APIC_TASKPRI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_lapic_sync_to_vapic(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_lapic*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.kvm_lapic*, %struct.kvm_lapic** %10, align 8
  store %struct.kvm_lapic* %11, %struct.kvm_lapic** %7, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %13 = load %struct.kvm_lapic*, %struct.kvm_lapic** %7, align 8
  %14 = call i32 @apic_sync_pv_eoi_to_guest(%struct.kvm_vcpu* %12, %struct.kvm_lapic* %13)
  %15 = load i32, i32* @KVM_APIC_CHECK_VAPIC, align 4
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %17 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = call i32 @test_bit(i32 %15, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %57

22:                                               ; preds = %1
  %23 = load %struct.kvm_lapic*, %struct.kvm_lapic** %7, align 8
  %24 = load i32, i32* @APIC_TASKPRI, align 4
  %25 = call i32 @kvm_lapic_get_reg(%struct.kvm_lapic* %23, i32 %24)
  %26 = and i32 %25, 255
  store i32 %26, i32* %4, align 4
  %27 = load %struct.kvm_lapic*, %struct.kvm_lapic** %7, align 8
  %28 = call i32 @apic_find_highest_irr(%struct.kvm_lapic* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %31, %22
  %33 = load %struct.kvm_lapic*, %struct.kvm_lapic** %7, align 8
  %34 = call i32 @apic_find_highest_isr(%struct.kvm_lapic* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %37, %32
  %39 = load i32, i32* %4, align 4
  %40 = and i32 %39, 255
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, 240
  %43 = shl i32 %42, 8
  %44 = or i32 %40, %43
  %45 = load i32, i32* %5, align 4
  %46 = shl i32 %45, 24
  %47 = or i32 %44, %46
  store i32 %47, i32* %3, align 4
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %49 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %52 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load %struct.kvm_lapic*, %struct.kvm_lapic** %53, align 8
  %55 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %54, i32 0, i32 0
  %56 = call i32 @kvm_write_guest_cached(i32 %50, i32* %55, i32* %3, i32 4)
  br label %57

57:                                               ; preds = %38, %21
  ret void
}

declare dso_local i32 @apic_sync_pv_eoi_to_guest(%struct.kvm_vcpu*, %struct.kvm_lapic*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @kvm_lapic_get_reg(%struct.kvm_lapic*, i32) #1

declare dso_local i32 @apic_find_highest_irr(%struct.kvm_lapic*) #1

declare dso_local i32 @apic_find_highest_isr(%struct.kvm_lapic*) #1

declare dso_local i32 @kvm_write_guest_cached(i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
