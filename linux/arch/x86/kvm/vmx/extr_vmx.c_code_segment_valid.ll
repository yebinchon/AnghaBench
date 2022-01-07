; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_code_segment_valid.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_code_segment_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_segment = type { i32, i32, i32, i32, i32, i64 }

@VCPU_SREG_CS = common dso_local global i32 0, align 4
@SEGMENT_RPL_MASK = common dso_local global i32 0, align 4
@VMX_AR_TYPE_CODE_MASK = common dso_local global i32 0, align 4
@VMX_AR_TYPE_ACCESSES_MASK = common dso_local global i32 0, align 4
@VMX_AR_TYPE_WRITEABLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @code_segment_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @code_segment_valid(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_segment, align 8
  %5 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %7 = load i32, i32* @VCPU_SREG_CS, align 4
  %8 = call i32 @vmx_get_segment(%struct.kvm_vcpu* %6, %struct.kvm_segment* %4, i32 %7)
  %9 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %4, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @SEGMENT_RPL_MASK, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %5, align 4
  %13 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %4, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %58

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %4, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* @VMX_AR_TYPE_CODE_MASK, align 4
  %22 = load i32, i32* @VMX_AR_TYPE_ACCESSES_MASK, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %58

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %4, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %58

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %4, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @VMX_AR_TYPE_WRITEABLE_MASK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %4, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = icmp ugt i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %58

44:                                               ; preds = %38
  br label %52

45:                                               ; preds = %32
  %46 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %4, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %58

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %44
  %53 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %4, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %58

57:                                               ; preds = %52
  store i32 1, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %56, %50, %43, %31, %26, %16
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @vmx_get_segment(%struct.kvm_vcpu*, %struct.kvm_segment*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
