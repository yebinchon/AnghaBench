; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_vgic-sys-reg-v3.c_access_gic_aprn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_vgic-sys-reg-v3.c_access_gic_aprn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.sys_reg_params = type { i64, i32 }
%struct.sys_reg_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.sys_reg_params*, %struct.sys_reg_desc*, i64)* @access_gic_aprn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @access_gic_aprn(%struct.kvm_vcpu* %0, %struct.sys_reg_params* %1, %struct.sys_reg_desc* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca %struct.sys_reg_params*, align 8
  %8 = alloca %struct.sys_reg_desc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %6, align 8
  store %struct.sys_reg_params* %1, %struct.sys_reg_params** %7, align 8
  store %struct.sys_reg_desc* %2, %struct.sys_reg_desc** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %8, align 8
  %12 = getelementptr inbounds %struct.sys_reg_desc, %struct.sys_reg_desc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 3
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %10, align 8
  %16 = load i64, i64* %10, align 8
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %18 = call i64 @vgic_v3_max_apr_idx(%struct.kvm_vcpu* %17)
  %19 = icmp sgt i64 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %27

21:                                               ; preds = %4
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %23 = load %struct.sys_reg_params*, %struct.sys_reg_params** %7, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @vgic_v3_access_apr_reg(%struct.kvm_vcpu* %22, %struct.sys_reg_params* %23, i64 %24, i64 %25)
  store i32 1, i32* %5, align 4
  br label %36

27:                                               ; preds = %20
  %28 = load %struct.sys_reg_params*, %struct.sys_reg_params** %7, align 8
  %29 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load %struct.sys_reg_params*, %struct.sys_reg_params** %7, align 8
  %34 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %32, %27
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %21
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i64 @vgic_v3_max_apr_idx(%struct.kvm_vcpu*) #1

declare dso_local i32 @vgic_v3_access_apr_reg(%struct.kvm_vcpu*, %struct.sys_reg_params*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
