; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_interrupt.c___reset_intercept_indicators.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_interrupt.c___reset_intercept_indicators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@CPUSTAT_IO_INT = common dso_local global i32 0, align 4
@CPUSTAT_EXT_INT = common dso_local global i32 0, align 4
@CPUSTAT_STOP_INT = common dso_local global i32 0, align 4
@ICTL_LPSW = common dso_local global i32 0, align 4
@ICTL_STCTL = common dso_local global i32 0, align 4
@ICTL_PINT = common dso_local global i32 0, align 4
@LCTL_CR0 = common dso_local global i32 0, align 4
@LCTL_CR9 = common dso_local global i32 0, align 4
@LCTL_CR10 = common dso_local global i32 0, align 4
@LCTL_CR11 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @__reset_intercept_indicators to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__reset_intercept_indicators(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %3 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %4 = load i32, i32* @CPUSTAT_IO_INT, align 4
  %5 = load i32, i32* @CPUSTAT_EXT_INT, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @CPUSTAT_STOP_INT, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @kvm_s390_clear_cpuflags(%struct.kvm_vcpu* %3, i32 %8)
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %11 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* @ICTL_LPSW, align 4
  %16 = load i32, i32* @ICTL_STCTL, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @ICTL_PINT, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %22 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %20
  store i32 %27, i32* %25, align 4
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %29 = call i64 @guestdbg_enabled(%struct.kvm_vcpu* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %1
  %32 = load i32, i32* @LCTL_CR0, align 4
  %33 = load i32, i32* @LCTL_CR9, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @LCTL_CR10, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @LCTL_CR11, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %40 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %38
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* @ICTL_STCTL, align 4
  %47 = load i32, i32* @ICTL_PINT, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %50 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %48
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %31, %1
  ret void
}

declare dso_local i32 @kvm_s390_clear_cpuflags(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @guestdbg_enabled(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
