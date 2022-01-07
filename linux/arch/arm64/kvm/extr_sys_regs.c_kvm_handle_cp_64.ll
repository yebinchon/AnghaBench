; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_kvm_handle_cp_64.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_kvm_handle_cp_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.sys_reg_desc = type { i32 }
%struct.sys_reg_params = type { i32, i32, i32, i32, i32, i32, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.sys_reg_desc*, i64, %struct.sys_reg_desc*, i64)* @kvm_handle_cp_64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_handle_cp_64(%struct.kvm_vcpu* %0, %struct.sys_reg_desc* %1, i64 %2, %struct.sys_reg_desc* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca %struct.sys_reg_desc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sys_reg_desc*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sys_reg_params, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %7, align 8
  store %struct.sys_reg_desc* %1, %struct.sys_reg_desc** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.sys_reg_desc* %3, %struct.sys_reg_desc** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %17 = call i32 @kvm_vcpu_get_hsr(%struct.kvm_vcpu* %16)
  store i32 %17, i32* %13, align 4
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %19 = call i32 @kvm_vcpu_sys_get_rt(%struct.kvm_vcpu* %18)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %13, align 4
  %21 = ashr i32 %20, 10
  %22 = and i32 %21, 31
  store i32 %22, i32* %15, align 4
  %23 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %12, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %12, i32 0, i32 1
  store i32 0, i32* %24, align 4
  %25 = load i32, i32* %13, align 4
  %26 = ashr i32 %25, 1
  %27 = and i32 %26, 15
  %28 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %12, i32 0, i32 2
  store i32 %27, i32* %28, align 8
  %29 = load i32, i32* %13, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %12, i32 0, i32 3
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %12, i32 0, i32 8
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* %13, align 4
  %36 = ashr i32 %35, 16
  %37 = and i32 %36, 15
  %38 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %12, i32 0, i32 4
  store i32 %37, i32* %38, align 8
  %39 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %12, i32 0, i32 7
  store i64 0, i64* %39, align 8
  %40 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %12, i32 0, i32 6
  store i64 0, i64* %40, align 8
  %41 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %12, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %5
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @vcpu_get_reg(%struct.kvm_vcpu* %45, i32 %46)
  %48 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %12, i32 0, i32 5
  store i32 %47, i32* %48, align 4
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %50 = load i32, i32* %15, align 4
  %51 = call i32 @vcpu_get_reg(%struct.kvm_vcpu* %49, i32 %50)
  %52 = shl i32 %51, 32
  %53 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %12, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %52
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %44, %5
  %57 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %58 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %10, align 8
  %59 = load i64, i64* %11, align 8
  %60 = call i32 @emulate_cp(%struct.kvm_vcpu* %57, %struct.sys_reg_params* %12, %struct.sys_reg_desc* %58, i64 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %64 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %8, align 8
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @emulate_cp(%struct.kvm_vcpu* %63, %struct.sys_reg_params* %12, %struct.sys_reg_desc* %64, i64 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %86, label %68

68:                                               ; preds = %62, %56
  %69 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %12, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %85, label %72

72:                                               ; preds = %68
  %73 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %74 = load i32, i32* %14, align 4
  %75 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %12, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @lower_32_bits(i32 %76)
  %78 = call i32 @vcpu_set_reg(%struct.kvm_vcpu* %73, i32 %74, i32 %77)
  %79 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %80 = load i32, i32* %15, align 4
  %81 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %12, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @upper_32_bits(i32 %82)
  %84 = call i32 @vcpu_set_reg(%struct.kvm_vcpu* %79, i32 %80, i32 %83)
  br label %85

85:                                               ; preds = %72, %68
  store i32 1, i32* %6, align 4
  br label %89

86:                                               ; preds = %62
  %87 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %88 = call i32 @unhandled_cp_access(%struct.kvm_vcpu* %87, %struct.sys_reg_params* %12)
  store i32 1, i32* %6, align 4
  br label %89

89:                                               ; preds = %86, %85
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @kvm_vcpu_get_hsr(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_vcpu_sys_get_rt(%struct.kvm_vcpu*) #1

declare dso_local i32 @vcpu_get_reg(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @emulate_cp(%struct.kvm_vcpu*, %struct.sys_reg_params*, %struct.sys_reg_desc*, i64) #1

declare dso_local i32 @vcpu_set_reg(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @unhandled_cp_access(%struct.kvm_vcpu*, %struct.sys_reg_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
