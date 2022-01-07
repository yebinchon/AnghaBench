; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_sigp.c___sigp_store_status_at_addr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_sigp.c___sigp_store_status_at_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@CPUSTAT_STOPPED = common dso_local global i32 0, align 4
@SIGP_STATUS_INCORRECT_STATE = common dso_local global i32 0, align 4
@SIGP_CC_STATUS_STORED = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@SIGP_STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_vcpu*, i32, i32*)* @__sigp_store_status_at_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sigp_store_status_at_addr(%struct.kvm_vcpu* %0, %struct.kvm_vcpu* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %6, align 8
  store %struct.kvm_vcpu* %1, %struct.kvm_vcpu** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %12 = load i32, i32* @CPUSTAT_STOPPED, align 4
  %13 = call i32 @kvm_s390_test_cpuflags(%struct.kvm_vcpu* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %4
  %16 = load i32*, i32** %9, align 8
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = and i64 %18, -4294967296
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %16, align 4
  %21 = load i32, i32* @SIGP_STATUS_INCORRECT_STATE, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %21
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* @SIGP_CC_STATUS_STORED, align 4
  store i32 %25, i32* %5, align 4
  br label %49

26:                                               ; preds = %4
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, 2147483136
  store i32 %28, i32* %8, align 4
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @kvm_s390_store_status_unloaded(%struct.kvm_vcpu* %29, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @EFAULT, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %26
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = and i64 %39, -4294967296
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %37, align 4
  %42 = load i32, i32* @SIGP_STATUS_INVALID_PARAMETER, align 4
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %42
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* @SIGP_CC_STATUS_STORED, align 4
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %36, %26
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %47, %15
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @kvm_s390_test_cpuflags(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_s390_store_status_unloaded(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
