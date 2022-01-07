; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_evmcs.c_nested_enlightened_vmentry.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_evmcs.c_nested_enlightened_vmentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.hv_vp_assist_page = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nested_enlightened_vmentry(%struct.kvm_vcpu* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.hv_vp_assist_page, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load i64*, i64** %5, align 8
  store i64 -1, i64* %7, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %9 = call i32 @kvm_hv_get_assist_page(%struct.kvm_vcpu* %8, %struct.hv_vp_assist_page* %6)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.hv_vp_assist_page, %struct.hv_vp_assist_page* %6, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %29

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.hv_vp_assist_page, %struct.hv_vp_assist_page* %6, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64*, i64** %5, align 8
  store i64 %27, i64* %28, align 8
  store i32 1, i32* %3, align 4
  br label %29

29:                                               ; preds = %25, %24, %15
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kvm_hv_get_assist_page(%struct.kvm_vcpu*, %struct.hv_vp_assist_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
