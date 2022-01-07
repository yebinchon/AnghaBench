; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_sched_yield.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_sched_yield.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.kvm_vcpu = type { i32 }
%struct.kvm_apic_map = type { i64, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.kvm_vcpu* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*, i64)* @kvm_sched_yield to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_sched_yield(%struct.kvm* %0, i64 %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca %struct.kvm_apic_map*, align 8
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.kvm_vcpu* null, %struct.kvm_vcpu** %5, align 8
  %7 = call i32 (...) @rcu_read_lock()
  %8 = load %struct.kvm*, %struct.kvm** %3, align 8
  %9 = getelementptr inbounds %struct.kvm, %struct.kvm* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.kvm_apic_map* @rcu_dereference(i32 %11)
  store %struct.kvm_apic_map* %12, %struct.kvm_apic_map** %6, align 8
  %13 = load %struct.kvm_apic_map*, %struct.kvm_apic_map** %6, align 8
  %14 = call i64 @likely(%struct.kvm_apic_map* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.kvm_apic_map*, %struct.kvm_apic_map** %6, align 8
  %19 = getelementptr inbounds %struct.kvm_apic_map, %struct.kvm_apic_map* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ule i64 %17, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %16
  %23 = load %struct.kvm_apic_map*, %struct.kvm_apic_map** %6, align 8
  %24 = getelementptr inbounds %struct.kvm_apic_map, %struct.kvm_apic_map* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %25, i64 %26
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = icmp ne %struct.TYPE_4__* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %22
  %31 = load %struct.kvm_apic_map*, %struct.kvm_apic_map** %6, align 8
  %32 = getelementptr inbounds %struct.kvm_apic_map, %struct.kvm_apic_map* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %32, align 8
  %34 = load i64, i64* %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %33, i64 %34
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %37, align 8
  store %struct.kvm_vcpu* %38, %struct.kvm_vcpu** %5, align 8
  br label %39

39:                                               ; preds = %30, %22, %16, %2
  %40 = call i32 (...) @rcu_read_unlock()
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %42 = icmp ne %struct.kvm_vcpu* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %45 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @READ_ONCE(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %51 = call i32 @kvm_vcpu_yield_to(%struct.kvm_vcpu* %50)
  br label %52

52:                                               ; preds = %49, %43, %39
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.kvm_apic_map* @rcu_dereference(i32) #1

declare dso_local i64 @likely(%struct.kvm_apic_map*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @kvm_vcpu_yield_to(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
