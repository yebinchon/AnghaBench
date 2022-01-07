; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_access_gic_sgi.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_access_gic_sgi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.sys_reg_params = type { i32, i32, i32, i64, i32 }
%struct.sys_reg_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.sys_reg_params*, %struct.sys_reg_desc*)* @access_gic_sgi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @access_gic_sgi(%struct.kvm_vcpu* %0, %struct.sys_reg_params* %1, %struct.sys_reg_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca %struct.sys_reg_params*, align 8
  %7 = alloca %struct.sys_reg_desc*, align 8
  %8 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store %struct.sys_reg_params* %1, %struct.sys_reg_params** %6, align 8
  store %struct.sys_reg_desc* %2, %struct.sys_reg_desc** %7, align 8
  %9 = load %struct.sys_reg_params*, %struct.sys_reg_params** %6, align 8
  %10 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %15 = load %struct.sys_reg_params*, %struct.sys_reg_params** %6, align 8
  %16 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %7, align 8
  %17 = call i32 @read_from_write_only(%struct.kvm_vcpu* %14, %struct.sys_reg_params* %15, %struct.sys_reg_desc* %16)
  store i32 %17, i32* %4, align 4
  br label %46

18:                                               ; preds = %3
  %19 = load %struct.sys_reg_params*, %struct.sys_reg_params** %6, align 8
  %20 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.sys_reg_params*, %struct.sys_reg_params** %6, align 8
  %25 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %27 [
    i32 0, label %28
    i32 1, label %29
    i32 2, label %29
  ]

27:                                               ; preds = %23
  br label %28

28:                                               ; preds = %23, %27
  store i32 1, i32* %8, align 4
  br label %30

29:                                               ; preds = %23, %23
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %29, %28
  br label %39

31:                                               ; preds = %18
  %32 = load %struct.sys_reg_params*, %struct.sys_reg_params** %6, align 8
  %33 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %35 [
    i32 5, label %36
    i32 6, label %37
    i32 7, label %37
  ]

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %31, %35
  store i32 1, i32* %8, align 4
  br label %38

37:                                               ; preds = %31, %31
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %37, %36
  br label %39

39:                                               ; preds = %38, %30
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %41 = load %struct.sys_reg_params*, %struct.sys_reg_params** %6, align 8
  %42 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @vgic_v3_dispatch_sgi(%struct.kvm_vcpu* %40, i32 %43, i32 %44)
  store i32 1, i32* %4, align 4
  br label %46

46:                                               ; preds = %39, %13
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @read_from_write_only(%struct.kvm_vcpu*, %struct.sys_reg_params*, %struct.sys_reg_desc*) #1

declare dso_local i32 @vgic_v3_dispatch_sgi(%struct.kvm_vcpu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
