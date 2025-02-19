; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_apic_set_isr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_apic_set_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.kvm_vcpu*, i32)* }
%struct.kvm_vcpu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.kvm_lapic = type { i64, i32, %struct.kvm_vcpu*, i64 }

@APIC_ISR = common dso_local global i64 0, align 8
@kvm_x86_ops = common dso_local global %struct.TYPE_4__* null, align 8
@MAX_APIC_VECTOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.kvm_lapic*)* @apic_set_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apic_set_isr(i32 %0, %struct.kvm_lapic* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_lapic*, align 8
  %5 = alloca %struct.kvm_vcpu*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.kvm_lapic* %1, %struct.kvm_lapic** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %8 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @APIC_ISR, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i64 @__apic_test_and_set_vector(i32 %6, i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %47

15:                                               ; preds = %2
  %16 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %17 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %16, i32 0, i32 2
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %17, align 8
  store %struct.kvm_vcpu* %18, %struct.kvm_vcpu** %5, align 8
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %20 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %15
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kvm_x86_ops, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32 (%struct.kvm_vcpu*, i32)*, i32 (%struct.kvm_vcpu*, i32)** %27, align 8
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %30 = load i32, i32* %3, align 4
  %31 = call i32 %28(%struct.kvm_vcpu* %29, i32 %30)
  br label %47

32:                                               ; preds = %15
  %33 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %34 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %34, align 8
  %37 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %38 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @MAX_APIC_VECTOR, align 8
  %41 = icmp sgt i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @BUG_ON(i32 %42)
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %46 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %14, %32, %25
  ret void
}

declare dso_local i64 @__apic_test_and_set_vector(i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
