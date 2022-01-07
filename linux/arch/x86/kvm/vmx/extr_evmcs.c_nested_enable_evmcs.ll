; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_evmcs.c_nested_enable_evmcs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_evmcs.c_nested_enable_evmcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vcpu_vmx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@EVMCS1_UNSUPPORTED_PINCTRL = common dso_local global i32 0, align 4
@EVMCS1_UNSUPPORTED_VMENTRY_CTRL = common dso_local global i32 0, align 4
@EVMCS1_UNSUPPORTED_VMEXIT_CTRL = common dso_local global i32 0, align 4
@EVMCS1_UNSUPPORTED_2NDEXEC = common dso_local global i32 0, align 4
@EVMCS1_UNSUPPORTED_VMFUNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nested_enable_evmcs(%struct.kvm_vcpu* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.vcpu_vmx*, align 8
  %7 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %9 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %8)
  store %struct.vcpu_vmx* %9, %struct.vcpu_vmx** %6, align 8
  %10 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %11 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %15 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %21 = call i32 @nested_get_evmcs_version(%struct.kvm_vcpu* %20)
  %22 = load i32*, i32** %5, align 8
  store i32 %21, i32* %22, align 4
  br label %23

23:                                               ; preds = %19, %2
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %68

27:                                               ; preds = %23
  %28 = load i32, i32* @EVMCS1_UNSUPPORTED_PINCTRL, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %31 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %29
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* @EVMCS1_UNSUPPORTED_VMENTRY_CTRL, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %39 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %37
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* @EVMCS1_UNSUPPORTED_VMEXIT_CTRL, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %47 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %45
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* @EVMCS1_UNSUPPORTED_2NDEXEC, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %55 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %53
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* @EVMCS1_UNSUPPORTED_VMFUNC, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %63 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %61
  store i32 %67, i32* %65, align 4
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %27, %26
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @nested_get_evmcs_version(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
