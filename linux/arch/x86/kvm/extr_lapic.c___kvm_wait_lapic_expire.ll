; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c___kvm_wait_lapic_expire.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c___kvm_wait_lapic_expire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.kvm_lapic* }
%struct.kvm_lapic = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@lapic_timer_advance_dynamic = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @__kvm_wait_lapic_expire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__kvm_wait_lapic_expire(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.kvm_lapic*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %7 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.kvm_lapic*, %struct.kvm_lapic** %8, align 8
  store %struct.kvm_lapic* %9, %struct.kvm_lapic** %3, align 8
  %10 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %11 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %52

16:                                               ; preds = %1
  %17 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %18 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %5, align 8
  %21 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %22 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %25 = call i32 (...) @rdtsc()
  %26 = call i64 @kvm_read_l1_tsc(%struct.kvm_vcpu* %24, i32 %25)
  store i64 %26, i64* %4, align 8
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = sub nsw i64 %27, %28
  %30 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %31 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i64 %29, i64* %32, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %16
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %4, align 8
  %40 = sub nsw i64 %38, %39
  %41 = call i32 @__wait_lapic_expire(%struct.kvm_vcpu* %37, i64 %40)
  br label %42

42:                                               ; preds = %36, %16
  %43 = load i64, i64* @lapic_timer_advance_dynamic, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %47 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %48 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @adjust_lapic_timer_advance(%struct.kvm_vcpu* %46, i64 %50)
  br label %52

52:                                               ; preds = %15, %45, %42
  ret void
}

declare dso_local i64 @kvm_read_l1_tsc(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @rdtsc(...) #1

declare dso_local i32 @__wait_lapic_expire(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @adjust_lapic_timer_advance(%struct.kvm_vcpu*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
