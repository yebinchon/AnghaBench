; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_emulate_sys_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_emulate_sys_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sys_reg_desc = type { i32 }
%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sys_reg_params = type { i32 }

@sys_reg_descs = common dso_local global %struct.sys_reg_desc* null, align 8
@.str = private unnamed_addr constant [50 x i8] c"Unsupported guest sys_reg access at: %lx [%08lx]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.sys_reg_params*)* @emulate_sys_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulate_sys_reg(%struct.kvm_vcpu* %0, %struct.sys_reg_params* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.sys_reg_params*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sys_reg_desc*, align 8
  %7 = alloca %struct.sys_reg_desc*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.sys_reg_params* %1, %struct.sys_reg_params** %4, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.sys_reg_desc* @get_target_table(i32 %11, i32 1, i64* %5)
  store %struct.sys_reg_desc* %12, %struct.sys_reg_desc** %6, align 8
  %13 = load %struct.sys_reg_params*, %struct.sys_reg_params** %4, align 8
  %14 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %6, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call %struct.sys_reg_desc* @find_reg(%struct.sys_reg_params* %13, %struct.sys_reg_desc* %14, i64 %15)
  store %struct.sys_reg_desc* %16, %struct.sys_reg_desc** %7, align 8
  %17 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %7, align 8
  %18 = icmp ne %struct.sys_reg_desc* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %2
  %20 = load %struct.sys_reg_params*, %struct.sys_reg_params** %4, align 8
  %21 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** @sys_reg_descs, align 8
  %22 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** @sys_reg_descs, align 8
  %23 = call i64 @ARRAY_SIZE(%struct.sys_reg_desc* %22)
  %24 = call %struct.sys_reg_desc* @find_reg(%struct.sys_reg_params* %20, %struct.sys_reg_desc* %21, i64 %23)
  store %struct.sys_reg_desc* %24, %struct.sys_reg_desc** %7, align 8
  br label %25

25:                                               ; preds = %19, %2
  %26 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %7, align 8
  %27 = call i64 @likely(%struct.sys_reg_desc* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %31 = load %struct.sys_reg_params*, %struct.sys_reg_params** %4, align 8
  %32 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %7, align 8
  %33 = call i32 @perform_access(%struct.kvm_vcpu* %30, %struct.sys_reg_params* %31, %struct.sys_reg_desc* %32)
  br label %46

34:                                               ; preds = %25
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %36 = call i32* @vcpu_pc(%struct.kvm_vcpu* %35)
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %39 = call i32* @vcpu_cpsr(%struct.kvm_vcpu* %38)
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @kvm_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40)
  %42 = load %struct.sys_reg_params*, %struct.sys_reg_params** %4, align 8
  %43 = call i32 @print_sys_reg_instr(%struct.sys_reg_params* %42)
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %45 = call i32 @kvm_inject_undefined(%struct.kvm_vcpu* %44)
  br label %46

46:                                               ; preds = %34, %29
  ret i32 1
}

declare dso_local %struct.sys_reg_desc* @get_target_table(i32, i32, i64*) #1

declare dso_local %struct.sys_reg_desc* @find_reg(%struct.sys_reg_params*, %struct.sys_reg_desc*, i64) #1

declare dso_local i64 @ARRAY_SIZE(%struct.sys_reg_desc*) #1

declare dso_local i64 @likely(%struct.sys_reg_desc*) #1

declare dso_local i32 @perform_access(%struct.kvm_vcpu*, %struct.sys_reg_params*, %struct.sys_reg_desc*) #1

declare dso_local i32 @kvm_err(i8*, i32, i32) #1

declare dso_local i32* @vcpu_pc(%struct.kvm_vcpu*) #1

declare dso_local i32* @vcpu_cpsr(%struct.kvm_vcpu*) #1

declare dso_local i32 @print_sys_reg_instr(%struct.sys_reg_params*) #1

declare dso_local i32 @kvm_inject_undefined(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
