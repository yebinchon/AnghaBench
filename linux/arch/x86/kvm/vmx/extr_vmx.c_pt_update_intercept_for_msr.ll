; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_pt_update_intercept_for_msr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_pt_update_intercept_for_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_vmx = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64* }

@RTIT_CTL_TRACEEN = common dso_local global i32 0, align 4
@MSR_IA32_RTIT_STATUS = common dso_local global i64 0, align 8
@MSR_TYPE_RW = common dso_local global i32 0, align 4
@MSR_IA32_RTIT_OUTPUT_BASE = common dso_local global i64 0, align 8
@MSR_IA32_RTIT_OUTPUT_MASK = common dso_local global i64 0, align 8
@MSR_IA32_RTIT_CR3_MATCH = common dso_local global i64 0, align 8
@MSR_IA32_RTIT_ADDR0_A = common dso_local global i64 0, align 8
@MSR_IA32_RTIT_ADDR0_B = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pt_update_intercept_for_msr(%struct.vcpu_vmx* %0) #0 {
  %2 = alloca %struct.vcpu_vmx*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vcpu_vmx* %0, %struct.vcpu_vmx** %2, align 8
  %6 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %7 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  store i64* %9, i64** %3, align 8
  %10 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %11 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @RTIT_CTL_TRACEEN, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %4, align 4
  %20 = load i64*, i64** %3, align 8
  %21 = load i64, i64* @MSR_IA32_RTIT_STATUS, align 8
  %22 = load i32, i32* @MSR_TYPE_RW, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @vmx_set_intercept_for_msr(i64* %20, i64 %21, i32 %22, i32 %23)
  %25 = load i64*, i64** %3, align 8
  %26 = load i64, i64* @MSR_IA32_RTIT_OUTPUT_BASE, align 8
  %27 = load i32, i32* @MSR_TYPE_RW, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @vmx_set_intercept_for_msr(i64* %25, i64 %26, i32 %27, i32 %28)
  %30 = load i64*, i64** %3, align 8
  %31 = load i64, i64* @MSR_IA32_RTIT_OUTPUT_MASK, align 8
  %32 = load i32, i32* @MSR_TYPE_RW, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @vmx_set_intercept_for_msr(i64* %30, i64 %31, i32 %32, i32 %33)
  %35 = load i64*, i64** %3, align 8
  %36 = load i64, i64* @MSR_IA32_RTIT_CR3_MATCH, align 8
  %37 = load i32, i32* @MSR_TYPE_RW, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @vmx_set_intercept_for_msr(i64* %35, i64 %36, i32 %37, i32 %38)
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %66, %1
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %43 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %41, %45
  br i1 %46, label %47, label %69

47:                                               ; preds = %40
  %48 = load i64*, i64** %3, align 8
  %49 = load i64, i64* @MSR_IA32_RTIT_ADDR0_A, align 8
  %50 = load i32, i32* %5, align 4
  %51 = mul nsw i32 %50, 2
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %49, %52
  %54 = load i32, i32* @MSR_TYPE_RW, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @vmx_set_intercept_for_msr(i64* %48, i64 %53, i32 %54, i32 %55)
  %57 = load i64*, i64** %3, align 8
  %58 = load i64, i64* @MSR_IA32_RTIT_ADDR0_B, align 8
  %59 = load i32, i32* %5, align 4
  %60 = mul nsw i32 %59, 2
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %58, %61
  %63 = load i32, i32* @MSR_TYPE_RW, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @vmx_set_intercept_for_msr(i64* %57, i64 %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %47
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %40

69:                                               ; preds = %40
  ret void
}

declare dso_local i32 @vmx_set_intercept_for_msr(i64*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
