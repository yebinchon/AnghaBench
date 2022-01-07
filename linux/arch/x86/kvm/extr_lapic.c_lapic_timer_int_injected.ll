; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_lapic_timer_int_injected.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_lapic_timer_int_injected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.kvm_lapic* }
%struct.kvm_lapic = type { i8* }

@APIC_LVTT = common dso_local global i32 0, align 4
@APIC_VECTOR_MASK = common dso_local global i32 0, align 4
@APIC_ISR = common dso_local global i32 0, align 4
@APIC_IRR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @lapic_timer_int_injected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lapic_timer_int_injected(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_lapic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.kvm_lapic*, %struct.kvm_lapic** %10, align 8
  store %struct.kvm_lapic* %11, %struct.kvm_lapic** %4, align 8
  %12 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %13 = load i32, i32* @APIC_LVTT, align 4
  %14 = call i32 @kvm_lapic_get_reg(%struct.kvm_lapic* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %16 = call i64 @kvm_apic_hw_enabled(%struct.kvm_lapic* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %47

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @APIC_VECTOR_MASK, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %6, align 4
  %22 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %23 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load i32, i32* @APIC_ISR, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr i8, i8* %24, i64 %26
  store i8* %27, i8** %7, align 8
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %29 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %18
  %34 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %35 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i32, i32* @APIC_IRR, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr i8, i8* %36, i64 %38
  store i8* %39, i8** %7, align 8
  br label %40

40:                                               ; preds = %33, %18
  %41 = load i32, i32* %6, align 4
  %42 = load i8*, i8** %7, align 8
  %43 = call i64 @apic_test_vector(i32 %41, i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 1, i32* %2, align 4
  br label %48

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46, %1
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %45
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @kvm_lapic_get_reg(%struct.kvm_lapic*, i32) #1

declare dso_local i64 @kvm_apic_hw_enabled(%struct.kvm_lapic*) #1

declare dso_local i64 @apic_test_vector(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
