; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_kvm_handle_cp_32.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_kvm_handle_cp_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.sys_reg_desc = type { i32 }
%struct.sys_reg_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.sys_reg_desc*, i64, %struct.sys_reg_desc*, i64)* @kvm_handle_cp_32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_handle_cp_32(%struct.kvm_vcpu* %0, %struct.sys_reg_desc* %1, i64 %2, %struct.sys_reg_desc* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca %struct.sys_reg_desc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sys_reg_desc*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sys_reg_params, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %7, align 8
  store %struct.sys_reg_desc* %1, %struct.sys_reg_desc** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.sys_reg_desc* %3, %struct.sys_reg_desc** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %16 = call i32 @kvm_vcpu_get_hsr(%struct.kvm_vcpu* %15)
  store i32 %16, i32* %13, align 4
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %18 = call i32 @kvm_vcpu_sys_get_rt(%struct.kvm_vcpu* %17)
  store i32 %18, i32* %14, align 4
  %19 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %12, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %12, i32 0, i32 1
  store i32 1, i32* %20, align 4
  %21 = load i32, i32* %13, align 4
  %22 = ashr i32 %21, 1
  %23 = and i32 %22, 15
  %24 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %12, i32 0, i32 2
  store i32 %23, i32* %24, align 8
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %26 = load i32, i32* %14, align 4
  %27 = call i32 @vcpu_get_reg(%struct.kvm_vcpu* %25, i32 %26)
  %28 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %12, i32 0, i32 7
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %13, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %12, i32 0, i32 3
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %13, align 4
  %35 = ashr i32 %34, 10
  %36 = and i32 %35, 15
  %37 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %12, i32 0, i32 4
  store i32 %36, i32* %37, align 8
  %38 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %12, i32 0, i32 8
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* %13, align 4
  %40 = ashr i32 %39, 14
  %41 = and i32 %40, 7
  %42 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %12, i32 0, i32 5
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %13, align 4
  %44 = ashr i32 %43, 17
  %45 = and i32 %44, 7
  %46 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %12, i32 0, i32 6
  store i32 %45, i32* %46, align 8
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %48 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %10, align 8
  %49 = load i64, i64* %11, align 8
  %50 = call i32 @emulate_cp(%struct.kvm_vcpu* %47, %struct.sys_reg_params* %12, %struct.sys_reg_desc* %48, i64 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %5
  %53 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %54 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %8, align 8
  %55 = load i64, i64* %9, align 8
  %56 = call i32 @emulate_cp(%struct.kvm_vcpu* %53, %struct.sys_reg_params* %12, %struct.sys_reg_desc* %54, i64 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %52, %5
  %59 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %12, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %58
  %63 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %64 = load i32, i32* %14, align 4
  %65 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %12, i32 0, i32 7
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @vcpu_set_reg(%struct.kvm_vcpu* %63, i32 %64, i32 %66)
  br label %68

68:                                               ; preds = %62, %58
  store i32 1, i32* %6, align 4
  br label %72

69:                                               ; preds = %52
  %70 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %71 = call i32 @unhandled_cp_access(%struct.kvm_vcpu* %70, %struct.sys_reg_params* %12)
  store i32 1, i32* %6, align 4
  br label %72

72:                                               ; preds = %69, %68
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local i32 @kvm_vcpu_get_hsr(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_vcpu_sys_get_rt(%struct.kvm_vcpu*) #1

declare dso_local i32 @vcpu_get_reg(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @emulate_cp(%struct.kvm_vcpu*, %struct.sys_reg_params*, %struct.sys_reg_desc*, i64) #1

declare dso_local i32 @vcpu_set_reg(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @unhandled_cp_access(%struct.kvm_vcpu*, %struct.sys_reg_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
