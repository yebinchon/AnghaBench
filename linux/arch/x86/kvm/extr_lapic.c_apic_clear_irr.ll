; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_apic_clear_irr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_apic_clear_irr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.kvm_vcpu*, i32)* }
%struct.kvm_vcpu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.kvm_lapic = type { i32, i64, %struct.kvm_vcpu* }

@APIC_IRR = common dso_local global i64 0, align 8
@kvm_x86_ops = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.kvm_lapic*)* @apic_clear_irr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apic_clear_irr(i32 %0, %struct.kvm_lapic* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_lapic*, align 8
  %5 = alloca %struct.kvm_vcpu*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.kvm_lapic* %1, %struct.kvm_lapic** %4, align 8
  %6 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %7 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %6, i32 0, i32 2
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  store %struct.kvm_vcpu* %8, %struct.kvm_vcpu** %5, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %18 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @APIC_IRR, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @kvm_lapic_clear_vector(i32 %16, i64 %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kvm_x86_ops, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32 (%struct.kvm_vcpu*, i32)*, i32 (%struct.kvm_vcpu*, i32)** %24, align 8
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %27 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %28 = call i32 @apic_find_highest_irr(%struct.kvm_lapic* %27)
  %29 = call i32 %25(%struct.kvm_vcpu* %26, i32 %28)
  br label %47

30:                                               ; preds = %2
  %31 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %32 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %35 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @APIC_IRR, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @kvm_lapic_clear_vector(i32 %33, i64 %38)
  %40 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %41 = call i32 @apic_search_irr(%struct.kvm_lapic* %40)
  %42 = icmp ne i32 %41, -1
  br i1 %42, label %43, label %46

43:                                               ; preds = %30
  %44 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %45 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  br label %46

46:                                               ; preds = %43, %30
  br label %47

47:                                               ; preds = %46, %15
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kvm_lapic_clear_vector(i32, i64) #1

declare dso_local i32 @apic_find_highest_irr(%struct.kvm_lapic*) #1

declare dso_local i32 @apic_search_irr(%struct.kvm_lapic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
