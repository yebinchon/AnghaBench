; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_clear_atomic_switch_msr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_clear_atomic_switch_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_vmx = type { %struct.msr_autoload }
%struct.msr_autoload = type { %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32* }

@VM_ENTRY_LOAD_IA32_EFER = common dso_local global i32 0, align 4
@VM_EXIT_LOAD_IA32_EFER = common dso_local global i32 0, align 4
@VM_ENTRY_LOAD_IA32_PERF_GLOBAL_CTRL = common dso_local global i32 0, align 4
@VM_EXIT_LOAD_IA32_PERF_GLOBAL_CTRL = common dso_local global i32 0, align 4
@VM_ENTRY_MSR_LOAD_COUNT = common dso_local global i32 0, align 4
@VM_EXIT_MSR_LOAD_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vcpu_vmx*, i32)* @clear_atomic_switch_msr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_atomic_switch_msr(%struct.vcpu_vmx* %0, i32 %1) #0 {
  %3 = alloca %struct.vcpu_vmx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.msr_autoload*, align 8
  store %struct.vcpu_vmx* %0, %struct.vcpu_vmx** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %8 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %7, i32 0, i32 0
  store %struct.msr_autoload* %8, %struct.msr_autoload** %6, align 8
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %28 [
    i32 128, label %10
    i32 129, label %19
  ]

10:                                               ; preds = %2
  %11 = call i32 (...) @cpu_has_load_ia32_efer()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %15 = load i32, i32* @VM_ENTRY_LOAD_IA32_EFER, align 4
  %16 = load i32, i32* @VM_EXIT_LOAD_IA32_EFER, align 4
  %17 = call i32 @clear_atomic_switch_msr_special(%struct.vcpu_vmx* %14, i32 %15, i32 %16)
  br label %102

18:                                               ; preds = %10
  br label %28

19:                                               ; preds = %2
  %20 = call i32 (...) @cpu_has_load_perf_global_ctrl()
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %24 = load i32, i32* @VM_ENTRY_LOAD_IA32_PERF_GLOBAL_CTRL, align 4
  %25 = load i32, i32* @VM_EXIT_LOAD_IA32_PERF_GLOBAL_CTRL, align 4
  %26 = call i32 @clear_atomic_switch_msr_special(%struct.vcpu_vmx* %23, i32 %24, i32 %25)
  br label %102

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %2, %27, %18
  %29 = load %struct.msr_autoload*, %struct.msr_autoload** %6, align 8
  %30 = getelementptr inbounds %struct.msr_autoload, %struct.msr_autoload* %29, i32 0, i32 1
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @find_msr(%struct.TYPE_2__* %30, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %65

36:                                               ; preds = %28
  %37 = load %struct.msr_autoload*, %struct.msr_autoload** %6, align 8
  %38 = getelementptr inbounds %struct.msr_autoload, %struct.msr_autoload* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %40, -1
  store i64 %41, i64* %39, align 8
  %42 = load %struct.msr_autoload*, %struct.msr_autoload** %6, align 8
  %43 = getelementptr inbounds %struct.msr_autoload, %struct.msr_autoload* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.msr_autoload*, %struct.msr_autoload** %6, align 8
  %47 = getelementptr inbounds %struct.msr_autoload, %struct.msr_autoload* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.msr_autoload*, %struct.msr_autoload** %6, align 8
  %53 = getelementptr inbounds %struct.msr_autoload, %struct.msr_autoload* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %51, i32* %58, align 4
  %59 = load i32, i32* @VM_ENTRY_MSR_LOAD_COUNT, align 4
  %60 = load %struct.msr_autoload*, %struct.msr_autoload** %6, align 8
  %61 = getelementptr inbounds %struct.msr_autoload, %struct.msr_autoload* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @vmcs_write32(i32 %59, i64 %63)
  br label %65

65:                                               ; preds = %36, %35
  %66 = load %struct.msr_autoload*, %struct.msr_autoload** %6, align 8
  %67 = getelementptr inbounds %struct.msr_autoload, %struct.msr_autoload* %66, i32 0, i32 0
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @find_msr(%struct.TYPE_2__* %67, i32 %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %102

73:                                               ; preds = %65
  %74 = load %struct.msr_autoload*, %struct.msr_autoload** %6, align 8
  %75 = getelementptr inbounds %struct.msr_autoload, %struct.msr_autoload* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add i64 %77, -1
  store i64 %78, i64* %76, align 8
  %79 = load %struct.msr_autoload*, %struct.msr_autoload** %6, align 8
  %80 = getelementptr inbounds %struct.msr_autoload, %struct.msr_autoload* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.msr_autoload*, %struct.msr_autoload** %6, align 8
  %84 = getelementptr inbounds %struct.msr_autoload, %struct.msr_autoload* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i32, i32* %82, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.msr_autoload*, %struct.msr_autoload** %6, align 8
  %90 = getelementptr inbounds %struct.msr_autoload, %struct.msr_autoload* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %88, i32* %95, align 4
  %96 = load i32, i32* @VM_EXIT_MSR_LOAD_COUNT, align 4
  %97 = load %struct.msr_autoload*, %struct.msr_autoload** %6, align 8
  %98 = getelementptr inbounds %struct.msr_autoload, %struct.msr_autoload* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @vmcs_write32(i32 %96, i64 %100)
  br label %102

102:                                              ; preds = %73, %72, %22, %13
  ret void
}

declare dso_local i32 @cpu_has_load_ia32_efer(...) #1

declare dso_local i32 @clear_atomic_switch_msr_special(%struct.vcpu_vmx*, i32, i32) #1

declare dso_local i32 @cpu_has_load_perf_global_ctrl(...) #1

declare dso_local i32 @find_msr(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @vmcs_write32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
