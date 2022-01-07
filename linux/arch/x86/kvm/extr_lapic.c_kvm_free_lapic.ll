; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_kvm_free_lapic.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_kvm_free_lapic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.kvm_lapic* }
%struct.kvm_lapic = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MSR_IA32_APICBASE_ENABLE = common dso_local global i32 0, align 4
@apic_hw_disabled = common dso_local global i32 0, align 4
@apic_sw_disabled = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_free_lapic(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.kvm_lapic*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %4 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %5 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %7 = load %struct.kvm_lapic*, %struct.kvm_lapic** %6, align 8
  store %struct.kvm_lapic* %7, %struct.kvm_lapic** %3, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load %struct.kvm_lapic*, %struct.kvm_lapic** %10, align 8
  %12 = icmp ne %struct.kvm_lapic* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %48

14:                                               ; preds = %1
  %15 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %16 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call i32 @hrtimer_cancel(i32* %17)
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %20 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @MSR_IA32_APICBASE_ENABLE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %14
  %27 = call i32 @static_key_slow_dec_deferred(i32* @apic_hw_disabled)
  br label %28

28:                                               ; preds = %26, %14
  %29 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %30 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = call i32 @static_key_slow_dec_deferred(i32* @apic_sw_disabled)
  br label %35

35:                                               ; preds = %33, %28
  %36 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %37 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %42 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @free_page(i64 %43)
  br label %45

45:                                               ; preds = %40, %35
  %46 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %47 = call i32 @kfree(%struct.kvm_lapic* %46)
  br label %48

48:                                               ; preds = %45, %13
  ret void
}

declare dso_local i32 @hrtimer_cancel(i32*) #1

declare dso_local i32 @static_key_slow_dec_deferred(i32*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @kfree(%struct.kvm_lapic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
