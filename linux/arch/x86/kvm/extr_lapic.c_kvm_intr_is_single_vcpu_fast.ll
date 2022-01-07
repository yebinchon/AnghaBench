; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_kvm_intr_is_single_vcpu_fast.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_kvm_intr_is_single_vcpu_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.kvm_lapic_irq = type { i64 }
%struct.kvm_vcpu = type { i32 }
%struct.kvm_apic_map = type { i32 }
%struct.kvm_lapic = type { %struct.kvm_vcpu* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_intr_is_single_vcpu_fast(%struct.kvm* %0, %struct.kvm_lapic_irq* %1, %struct.kvm_vcpu** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca %struct.kvm_lapic_irq*, align 8
  %7 = alloca %struct.kvm_vcpu**, align 8
  %8 = alloca %struct.kvm_apic_map*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.kvm_lapic**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store %struct.kvm_lapic_irq* %1, %struct.kvm_lapic_irq** %6, align 8
  store %struct.kvm_vcpu** %2, %struct.kvm_vcpu*** %7, align 8
  store %struct.kvm_lapic** null, %struct.kvm_lapic*** %10, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.kvm_lapic_irq*, %struct.kvm_lapic_irq** %6, align 8
  %14 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %53

18:                                               ; preds = %3
  %19 = call i32 (...) @rcu_read_lock()
  %20 = load %struct.kvm*, %struct.kvm** %5, align 8
  %21 = getelementptr inbounds %struct.kvm, %struct.kvm* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.kvm_apic_map* @rcu_dereference(i32 %23)
  store %struct.kvm_apic_map* %24, %struct.kvm_apic_map** %8, align 8
  %25 = load %struct.kvm*, %struct.kvm** %5, align 8
  %26 = load %struct.kvm_lapic_irq*, %struct.kvm_lapic_irq** %6, align 8
  %27 = load %struct.kvm_apic_map*, %struct.kvm_apic_map** %8, align 8
  %28 = call i64 @kvm_apic_map_get_dest_lapic(%struct.kvm* %25, i32* null, %struct.kvm_lapic_irq* %26, %struct.kvm_apic_map* %27, %struct.kvm_lapic*** %10, i64* %9)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %18
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @hweight16(i64 %31)
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %50

34:                                               ; preds = %30
  %35 = call i64 @find_first_bit(i64* %9, i32 16)
  store i64 %35, i64* %12, align 8
  %36 = load %struct.kvm_lapic**, %struct.kvm_lapic*** %10, align 8
  %37 = load i64, i64* %12, align 8
  %38 = getelementptr inbounds %struct.kvm_lapic*, %struct.kvm_lapic** %36, i64 %37
  %39 = load %struct.kvm_lapic*, %struct.kvm_lapic** %38, align 8
  %40 = icmp ne %struct.kvm_lapic* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %34
  %42 = load %struct.kvm_lapic**, %struct.kvm_lapic*** %10, align 8
  %43 = load i64, i64* %12, align 8
  %44 = getelementptr inbounds %struct.kvm_lapic*, %struct.kvm_lapic** %42, i64 %43
  %45 = load %struct.kvm_lapic*, %struct.kvm_lapic** %44, align 8
  %46 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %45, i32 0, i32 0
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %46, align 8
  %48 = load %struct.kvm_vcpu**, %struct.kvm_vcpu*** %7, align 8
  store %struct.kvm_vcpu* %47, %struct.kvm_vcpu** %48, align 8
  store i32 1, i32* %11, align 4
  br label %49

49:                                               ; preds = %41, %34
  br label %50

50:                                               ; preds = %49, %30, %18
  %51 = call i32 (...) @rcu_read_unlock()
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %50, %17
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.kvm_apic_map* @rcu_dereference(i32) #1

declare dso_local i64 @kvm_apic_map_get_dest_lapic(%struct.kvm*, i32*, %struct.kvm_lapic_irq*, %struct.kvm_apic_map*, %struct.kvm_lapic***, i64*) #1

declare dso_local i32 @hweight16(i64) #1

declare dso_local i64 @find_first_bit(i64*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
