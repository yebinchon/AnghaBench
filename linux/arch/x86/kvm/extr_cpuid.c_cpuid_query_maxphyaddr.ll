; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_cpuid.c_cpuid_query_maxphyaddr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_cpuid.c_cpuid_query_maxphyaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_cpuid_entry2 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpuid_query_maxphyaddr(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_cpuid_entry2*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %6 = call %struct.kvm_cpuid_entry2* @kvm_find_cpuid_entry(%struct.kvm_vcpu* %5, i32 -2147483648, i32 0)
  store %struct.kvm_cpuid_entry2* %6, %struct.kvm_cpuid_entry2** %4, align 8
  %7 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %4, align 8
  %8 = icmp ne %struct.kvm_cpuid_entry2* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %4, align 8
  %11 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ult i32 %12, -2147483640
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %1
  br label %26

15:                                               ; preds = %9
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %17 = call %struct.kvm_cpuid_entry2* @kvm_find_cpuid_entry(%struct.kvm_vcpu* %16, i32 -2147483640, i32 0)
  store %struct.kvm_cpuid_entry2* %17, %struct.kvm_cpuid_entry2** %4, align 8
  %18 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %4, align 8
  %19 = icmp ne %struct.kvm_cpuid_entry2* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %4, align 8
  %22 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 255
  store i32 %24, i32* %2, align 4
  br label %27

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25, %14
  store i32 36, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %20
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.kvm_cpuid_entry2* @kvm_find_cpuid_entry(%struct.kvm_vcpu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
