; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_sigp.c___sigp_sense.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_sigp.c___sigp_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@CPUSTAT_STOPPED = common dso_local global i32 0, align 4
@SIGP_CC_ORDER_CODE_ACCEPTED = common dso_local global i32 0, align 4
@SIGP_STATUS_EXT_CALL_PENDING = common dso_local global i32 0, align 4
@SIGP_STATUS_STOPPED = common dso_local global i32 0, align 4
@SIGP_CC_STATUS_STORED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"sensed status of cpu %x rc %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_vcpu*, i32*)* @__sigp_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sigp_sense(%struct.kvm_vcpu* %0, %struct.kvm_vcpu* %1, i32* %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.kvm_vcpu* %1, %struct.kvm_vcpu** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %11 = load i32, i32* @CPUSTAT_STOPPED, align 4
  %12 = call i32 @kvm_s390_test_cpuflags(%struct.kvm_vcpu* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %14 = call i32 @kvm_s390_ext_call_pending(%struct.kvm_vcpu* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* @SIGP_CC_ORDER_CODE_ACCEPTED, align 4
  store i32 %21, i32* %8, align 4
  br label %45

22:                                               ; preds = %17, %3
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = and i64 %25, -4294967296
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %23, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load i32, i32* @SIGP_STATUS_EXT_CALL_PENDING, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %31
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %30, %22
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i32, i32* @SIGP_STATUS_STOPPED, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %39
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %38, %35
  %44 = load i32, i32* @SIGP_CC_STATUS_STORED, align 4
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %43, %20
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %48 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @VCPU_EVENT(%struct.kvm_vcpu* %46, i32 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load i32, i32* %8, align 4
  ret i32 %52
}

declare dso_local i32 @kvm_s390_test_cpuflags(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_s390_ext_call_pending(%struct.kvm_vcpu*) #1

declare dso_local i32 @VCPU_EVENT(%struct.kvm_vcpu*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
