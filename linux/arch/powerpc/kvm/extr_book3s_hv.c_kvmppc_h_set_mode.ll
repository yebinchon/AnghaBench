; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_h_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_h_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@H_P2 = common dso_local global i32 0, align 4
@H_P4 = common dso_local global i32 0, align 4
@H_UNSUPPORTED_FLAG_START = common dso_local global i32 0, align 4
@CIABR_PRIV = common dso_local global i64 0, align 8
@CIABR_PRIV_HYPER = common dso_local global i64 0, align 8
@H_P3 = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i32 0, align 4
@DABRX_HYP = common dso_local global i64 0, align 8
@H_TOO_HARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i64, i64, i64, i64)* @kvmppc_h_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_h_set_mode(%struct.kvm_vcpu* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %12 = load i64, i64* %9, align 8
  switch i64 %12, label %76 [
    i64 129, label %13
    i64 128, label %43
  ]

13:                                               ; preds = %5
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %15 = call i32 @kvmppc_power8_compatible(%struct.kvm_vcpu* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @H_P2, align 4
  store i32 %18, i32* %6, align 4
  br label %78

19:                                               ; preds = %13
  %20 = load i64, i64* %11, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @H_P4, align 4
  store i32 %23, i32* %6, align 4
  br label %78

24:                                               ; preds = %19
  %25 = load i64, i64* %8, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @H_UNSUPPORTED_FLAG_START, align 4
  store i32 %28, i32* %6, align 4
  br label %78

29:                                               ; preds = %24
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* @CIABR_PRIV, align 8
  %32 = and i64 %30, %31
  %33 = load i64, i64* @CIABR_PRIV_HYPER, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @H_P3, align 4
  store i32 %36, i32* %6, align 4
  br label %78

37:                                               ; preds = %29
  %38 = load i64, i64* %10, align 8
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %40 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i64 %38, i64* %41, align 8
  %42 = load i32, i32* @H_SUCCESS, align 4
  store i32 %42, i32* %6, align 4
  br label %78

43:                                               ; preds = %5
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %45 = call i32 @kvmppc_power8_compatible(%struct.kvm_vcpu* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @H_P2, align 4
  store i32 %48, i32* %6, align 4
  br label %78

49:                                               ; preds = %43
  %50 = call i32 (...) @ppc_breakpoint_available()
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* @H_P2, align 4
  store i32 %53, i32* %6, align 4
  br label %78

54:                                               ; preds = %49
  %55 = load i64, i64* %8, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* @H_UNSUPPORTED_FLAG_START, align 4
  store i32 %58, i32* %6, align 4
  br label %78

59:                                               ; preds = %54
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* @DABRX_HYP, align 8
  %62 = and i64 %60, %61
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* @H_P4, align 4
  store i32 %65, i32* %6, align 4
  br label %78

66:                                               ; preds = %59
  %67 = load i64, i64* %10, align 8
  %68 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %69 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  store i64 %67, i64* %70, align 8
  %71 = load i64, i64* %11, align 8
  %72 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %73 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  store i64 %71, i64* %74, align 8
  %75 = load i32, i32* @H_SUCCESS, align 4
  store i32 %75, i32* %6, align 4
  br label %78

76:                                               ; preds = %5
  %77 = load i32, i32* @H_TOO_HARD, align 4
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %76, %66, %64, %57, %52, %47, %37, %35, %27, %22, %17
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local i32 @kvmppc_power8_compatible(%struct.kvm_vcpu*) #1

declare dso_local i32 @ppc_breakpoint_available(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
