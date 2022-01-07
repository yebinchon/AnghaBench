; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_kvm_handle_sys_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_kvm_handle_sys_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_run = type { i32 }
%struct.sys_reg_params = type { i32, i32, i64, i64, i64, i64, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_handle_sys_reg(%struct.kvm_vcpu* %0, %struct.kvm_run* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_run*, align 8
  %5 = alloca %struct.sys_reg_params, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_run* %1, %struct.kvm_run** %4, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = call i64 @kvm_vcpu_get_hsr(%struct.kvm_vcpu* %9)
  store i64 %10, i64* %6, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %12 = call i32 @kvm_vcpu_sys_get_rt(%struct.kvm_vcpu* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @trace_kvm_handle_sys_reg(i64 %13)
  %15 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %5, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %5, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = load i64, i64* %6, align 8
  %18 = lshr i64 %17, 20
  %19 = and i64 %18, 3
  %20 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %5, i32 0, i32 2
  store i64 %19, i64* %20, align 8
  %21 = load i64, i64* %6, align 8
  %22 = lshr i64 %21, 14
  %23 = and i64 %22, 7
  %24 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %5, i32 0, i32 3
  store i64 %23, i64* %24, align 8
  %25 = load i64, i64* %6, align 8
  %26 = lshr i64 %25, 10
  %27 = and i64 %26, 15
  %28 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %5, i32 0, i32 4
  store i64 %27, i64* %28, align 8
  %29 = load i64, i64* %6, align 8
  %30 = lshr i64 %29, 1
  %31 = and i64 %30, 15
  %32 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %5, i32 0, i32 5
  store i64 %31, i64* %32, align 8
  %33 = load i64, i64* %6, align 8
  %34 = lshr i64 %33, 17
  %35 = and i64 %34, 7
  %36 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %5, i32 0, i32 6
  store i64 %35, i64* %36, align 8
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @vcpu_get_reg(%struct.kvm_vcpu* %37, i32 %38)
  %40 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %5, i32 0, i32 8
  store i32 %39, i32* %40, align 4
  %41 = load i64, i64* %6, align 8
  %42 = and i64 %41, 1
  %43 = icmp ne i64 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %5, i32 0, i32 7
  store i32 %45, i32* %46, align 8
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %48 = call i32 @emulate_sys_reg(%struct.kvm_vcpu* %47, %struct.sys_reg_params* %5)
  store i32 %48, i32* %8, align 4
  %49 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %5, i32 0, i32 7
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %2
  %53 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %54 = load i32, i32* %7, align 4
  %55 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %5, i32 0, i32 8
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @vcpu_set_reg(%struct.kvm_vcpu* %53, i32 %54, i32 %56)
  br label %58

58:                                               ; preds = %52, %2
  %59 = load i32, i32* %8, align 4
  ret i32 %59
}

declare dso_local i64 @kvm_vcpu_get_hsr(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_vcpu_sys_get_rt(%struct.kvm_vcpu*) #1

declare dso_local i32 @trace_kvm_handle_sys_reg(i64) #1

declare dso_local i32 @vcpu_get_reg(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @emulate_sys_reg(%struct.kvm_vcpu*, %struct.sys_reg_params*) #1

declare dso_local i32 @vcpu_set_reg(%struct.kvm_vcpu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
