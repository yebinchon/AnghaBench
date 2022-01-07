; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_access_vm_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_access_vm_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.sys_reg_params = type { i32, i32, i64, i32 }
%struct.sys_reg_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.sys_reg_params*, %struct.sys_reg_desc*)* @access_vm_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @access_vm_reg(%struct.kvm_vcpu* %0, %struct.sys_reg_params* %1, %struct.sys_reg_desc* %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.sys_reg_params*, align 8
  %6 = alloca %struct.sys_reg_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.sys_reg_params* %1, %struct.sys_reg_params** %5, align 8
  store %struct.sys_reg_desc* %2, %struct.sys_reg_desc** %6, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %11 = call i32 @vcpu_has_cache_enabled(%struct.kvm_vcpu* %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %6, align 8
  %13 = getelementptr inbounds %struct.sys_reg_desc, %struct.sys_reg_desc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.sys_reg_params*, %struct.sys_reg_params** %5, align 8
  %16 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.sys_reg_params*, %struct.sys_reg_params** %5, align 8
  %23 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %6, align 8
  %28 = getelementptr inbounds %struct.sys_reg_desc, %struct.sys_reg_desc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %29, 2
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %26, %3
  %32 = load %struct.sys_reg_params*, %struct.sys_reg_params** %5, align 8
  %33 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.sys_reg_params*, %struct.sys_reg_params** %5, align 8
  %38 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %36, %31
  %42 = load %struct.sys_reg_params*, %struct.sys_reg_params** %5, align 8
  %43 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %8, align 4
  br label %73

45:                                               ; preds = %36
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @vcpu_read_sys_reg(%struct.kvm_vcpu* %46, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %6, align 8
  %50 = getelementptr inbounds %struct.sys_reg_desc, %struct.sys_reg_desc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = srem i32 %51, 2
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %45
  %55 = load %struct.sys_reg_params*, %struct.sys_reg_params** %5, align 8
  %56 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = shl i32 %57, 32
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @lower_32_bits(i32 %59)
  %61 = or i32 %58, %60
  store i32 %61, i32* %8, align 4
  br label %72

62:                                               ; preds = %45
  %63 = load i32, i32* %8, align 4
  %64 = call i64 @upper_32_bits(i32 %63)
  %65 = trunc i64 %64 to i32
  %66 = shl i32 %65, 32
  %67 = load %struct.sys_reg_params*, %struct.sys_reg_params** %5, align 8
  %68 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @lower_32_bits(i32 %69)
  %71 = or i32 %66, %70
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %62, %54
  br label %73

73:                                               ; preds = %72, %41
  %74 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @vcpu_write_sys_reg(%struct.kvm_vcpu* %74, i32 %75, i32 %76)
  %78 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @kvm_toggle_cache(%struct.kvm_vcpu* %78, i32 %79)
  ret i32 1
}

declare dso_local i32 @vcpu_has_cache_enabled(%struct.kvm_vcpu*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @vcpu_read_sys_reg(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i64 @upper_32_bits(i32) #1

declare dso_local i32 @vcpu_write_sys_reg(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @kvm_toggle_cache(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
