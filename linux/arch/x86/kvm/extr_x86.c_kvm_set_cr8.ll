; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_set_cr8.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_set_cr8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@CR8_RESERVED_BITS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_set_cr8(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @CR8_RESERVED_BITS, align 8
  %8 = and i64 %6, %7
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %25

11:                                               ; preds = %2
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %13 = call i64 @lapic_in_kernel(%struct.kvm_vcpu* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @kvm_lapic_set_tpr(%struct.kvm_vcpu* %16, i64 %17)
  br label %24

19:                                               ; preds = %11
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %22 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i64 %20, i64* %23, align 8
  br label %24

24:                                               ; preds = %19, %15
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %10
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i64 @lapic_in_kernel(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_lapic_set_tpr(%struct.kvm_vcpu*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
