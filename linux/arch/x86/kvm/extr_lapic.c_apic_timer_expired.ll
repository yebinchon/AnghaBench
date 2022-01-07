; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_apic_timer_expired.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_apic_timer_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_lapic = type { %struct.kvm_timer, %struct.kvm_vcpu* }
%struct.kvm_timer = type { i32, i64, i32, i32, i64 }
%struct.kvm_vcpu = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_lapic*)* @apic_timer_expired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apic_timer_expired(%struct.kvm_lapic* %0) #0 {
  %2 = alloca %struct.kvm_lapic*, align 8
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_timer*, align 8
  store %struct.kvm_lapic* %0, %struct.kvm_lapic** %2, align 8
  %5 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %6 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %5, i32 0, i32 1
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  store %struct.kvm_vcpu* %7, %struct.kvm_vcpu** %3, align 8
  %8 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %9 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %8, i32 0, i32 0
  store %struct.kvm_timer* %9, %struct.kvm_timer** %4, align 8
  %10 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %11 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.kvm_timer, %struct.kvm_timer* %11, i32 0, i32 0
  %13 = call i64 @atomic_read(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %56

16:                                               ; preds = %1
  %17 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %18 = call i64 @apic_lvtt_tscdeadline(%struct.kvm_lapic* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = load %struct.kvm_timer*, %struct.kvm_timer** %4, align 8
  %22 = getelementptr inbounds %struct.kvm_timer, %struct.kvm_timer* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20, %16
  %26 = load %struct.kvm_timer*, %struct.kvm_timer** %4, align 8
  %27 = getelementptr inbounds %struct.kvm_timer, %struct.kvm_timer* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.kvm_timer*, %struct.kvm_timer** %4, align 8
  %30 = getelementptr inbounds %struct.kvm_timer, %struct.kvm_timer* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %25, %20
  %32 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %33 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %32, i32 0, i32 1
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %33, align 8
  %35 = call i64 @kvm_use_posted_timer_interrupt(%struct.kvm_vcpu* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %31
  %38 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %39 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.kvm_timer, %struct.kvm_timer* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %45 = call i32 @__kvm_wait_lapic_expire(%struct.kvm_vcpu* %44)
  br label %46

46:                                               ; preds = %43, %37
  %47 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %48 = call i32 @kvm_apic_inject_pending_timer_irqs(%struct.kvm_lapic* %47)
  br label %56

49:                                               ; preds = %31
  %50 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %51 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.kvm_timer, %struct.kvm_timer* %51, i32 0, i32 0
  %53 = call i32 @atomic_inc(i32* %52)
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %55 = call i32 @kvm_set_pending_timer(%struct.kvm_vcpu* %54)
  br label %56

56:                                               ; preds = %49, %46, %15
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @apic_lvtt_tscdeadline(%struct.kvm_lapic*) #1

declare dso_local i64 @kvm_use_posted_timer_interrupt(%struct.kvm_vcpu*) #1

declare dso_local i32 @__kvm_wait_lapic_expire(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_apic_inject_pending_timer_irqs(%struct.kvm_lapic*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @kvm_set_pending_timer(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
