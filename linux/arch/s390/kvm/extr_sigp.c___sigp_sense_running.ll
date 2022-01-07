; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_sigp.c___sigp_sense_running.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_sigp.c___sigp_sense_running.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, i32 }

@SIGP_STATUS_INVALID_ORDER = common dso_local global i32 0, align 4
@SIGP_CC_STATUS_STORED = common dso_local global i32 0, align 4
@CPUSTAT_RUNNING = common dso_local global i32 0, align 4
@SIGP_CC_ORDER_CODE_ACCEPTED = common dso_local global i32 0, align 4
@SIGP_STATUS_NOT_RUNNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"sensed running status of cpu %x rc %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_vcpu*, i32*)* @__sigp_sense_running to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sigp_sense_running(%struct.kvm_vcpu* %0, %struct.kvm_vcpu* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store %struct.kvm_vcpu* %1, %struct.kvm_vcpu** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @test_kvm_facility(i32 %11, i32 9)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %3
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = and i64 %17, -4294967296
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* @SIGP_STATUS_INVALID_ORDER, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %20
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* @SIGP_CC_STATUS_STORED, align 4
  store i32 %24, i32* %4, align 4
  br label %51

25:                                               ; preds = %3
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %27 = load i32, i32* @CPUSTAT_RUNNING, align 4
  %28 = call i64 @kvm_s390_test_cpuflags(%struct.kvm_vcpu* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @SIGP_CC_ORDER_CODE_ACCEPTED, align 4
  store i32 %31, i32* %8, align 4
  br label %43

32:                                               ; preds = %25
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = and i64 %35, -4294967296
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 4
  %38 = load i32, i32* @SIGP_STATUS_NOT_RUNNING, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %38
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* @SIGP_CC_STATUS_STORED, align 4
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %32, %30
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %46 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @VCPU_EVENT(%struct.kvm_vcpu* %44, i32 4, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48)
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %43, %14
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @test_kvm_facility(i32, i32) #1

declare dso_local i64 @kvm_s390_test_cpuflags(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @VCPU_EVENT(%struct.kvm_vcpu*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
