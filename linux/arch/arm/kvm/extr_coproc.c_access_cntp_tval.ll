; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kvm/extr_coproc.c_access_cntp_tval.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kvm/extr_coproc.c_access_cntp_tval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.coproc_params = type { i32, i64 }
%struct.coproc_reg = type { i32 }

@TIMER_PTIMER = common dso_local global i32 0, align 4
@TIMER_REG_TVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.coproc_params*, %struct.coproc_reg*)* @access_cntp_tval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @access_cntp_tval(%struct.kvm_vcpu* %0, %struct.coproc_params* %1, %struct.coproc_reg* %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.coproc_params*, align 8
  %6 = alloca %struct.coproc_reg*, align 8
  %7 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.coproc_params* %1, %struct.coproc_params** %5, align 8
  store %struct.coproc_reg* %2, %struct.coproc_reg** %6, align 8
  %8 = load %struct.coproc_params*, %struct.coproc_params** %5, align 8
  %9 = getelementptr inbounds %struct.coproc_params, %struct.coproc_params* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %3
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %14 = load %struct.coproc_params*, %struct.coproc_params** %5, align 8
  %15 = getelementptr inbounds %struct.coproc_params, %struct.coproc_params* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32* @vcpu_reg(%struct.kvm_vcpu* %13, i32 %16)
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %20 = load i32, i32* @TIMER_PTIMER, align 4
  %21 = load i32, i32* @TIMER_REG_TVAL, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @kvm_arm_timer_write_sysreg(%struct.kvm_vcpu* %19, i32 %20, i32 %21, i32 %22)
  br label %35

24:                                               ; preds = %3
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %26 = load i32, i32* @TIMER_PTIMER, align 4
  %27 = load i32, i32* @TIMER_REG_TVAL, align 4
  %28 = call i32 @kvm_arm_timer_read_sysreg(%struct.kvm_vcpu* %25, i32 %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %31 = load %struct.coproc_params*, %struct.coproc_params** %5, align 8
  %32 = getelementptr inbounds %struct.coproc_params, %struct.coproc_params* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32* @vcpu_reg(%struct.kvm_vcpu* %30, i32 %33)
  store i32 %29, i32* %34, align 4
  br label %35

35:                                               ; preds = %24, %12
  ret i32 1
}

declare dso_local i32* @vcpu_reg(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_arm_timer_write_sysreg(%struct.kvm_vcpu*, i32, i32, i32) #1

declare dso_local i32 @kvm_arm_timer_read_sysreg(%struct.kvm_vcpu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
