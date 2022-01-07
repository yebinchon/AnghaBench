; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_interrupt.c_set_intercept_indicators_ext.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_interrupt.c_set_intercept_indicators_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@IRQ_PEND_EXT_MASK = common dso_local global i32 0, align 4
@CPUSTAT_EXT_INT = common dso_local global i32 0, align 4
@LCTL_CR0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @set_intercept_indicators_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_intercept_indicators_ext(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %3 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %4 = call i32 @pending_irqs_no_gisa(%struct.kvm_vcpu* %3)
  %5 = load i32, i32* @IRQ_PEND_EXT_MASK, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %26

9:                                                ; preds = %1
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %11 = call i64 @psw_extint_disabled(%struct.kvm_vcpu* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %15 = load i32, i32* @CPUSTAT_EXT_INT, align 4
  %16 = call i32 @kvm_s390_set_cpuflags(%struct.kvm_vcpu* %14, i32 %15)
  br label %26

17:                                               ; preds = %9
  %18 = load i32, i32* @LCTL_CR0, align 4
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %20 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %18
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %8, %17, %13
  ret void
}

declare dso_local i32 @pending_irqs_no_gisa(%struct.kvm_vcpu*) #1

declare dso_local i64 @psw_extint_disabled(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_s390_set_cpuflags(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
