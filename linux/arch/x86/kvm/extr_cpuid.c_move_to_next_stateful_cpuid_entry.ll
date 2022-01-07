; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_cpuid.c_move_to_next_stateful_cpuid_entry.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_cpuid.c_move_to_next_stateful_cpuid_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.kvm_cpuid_entry2* }
%struct.kvm_cpuid_entry2 = type { i64, i32 }

@KVM_CPUID_FLAG_STATE_READ_NEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32)* @move_to_next_stateful_cpuid_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @move_to_next_stateful_cpuid_entry(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_cpuid_entry2*, align 8
  %6 = alloca %struct.kvm_cpuid_entry2*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %12, i64 %14
  store %struct.kvm_cpuid_entry2* %15, %struct.kvm_cpuid_entry2** %5, align 8
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* @KVM_CPUID_FLAG_STATE_READ_NEXT, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %5, align 8
  %24 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 8
  br label %27

27:                                               ; preds = %39, %2
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  %30 = load i32, i32* %8, align 4
  %31 = srem i32 %29, %30
  store i32 %31, i32* %7, align 4
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %33 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %35, i64 %37
  store %struct.kvm_cpuid_entry2* %38, %struct.kvm_cpuid_entry2** %6, align 8
  br label %39

39:                                               ; preds = %27
  %40 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %6, align 8
  %41 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %5, align 8
  %44 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %27, label %47

47:                                               ; preds = %39
  %48 = load i32, i32* @KVM_CPUID_FLAG_STATE_READ_NEXT, align 4
  %49 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %6, align 8
  %50 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
