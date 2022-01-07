; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c___kvm_set_xcr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c___kvm_set_xcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@XCR_XFEATURE_ENABLED_MASK = common dso_local global i64 0, align 8
@XFEATURE_MASK_FP = common dso_local global i32 0, align 4
@XFEATURE_MASK_YMM = common dso_local global i32 0, align 4
@XFEATURE_MASK_SSE = common dso_local global i32 0, align 4
@XFEATURE_MASK_BNDREGS = common dso_local global i32 0, align 4
@XFEATURE_MASK_BNDCSR = common dso_local global i32 0, align 4
@XFEATURE_MASK_AVX512 = common dso_local global i32 0, align 4
@XFEATURE_MASK_EXTEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i64, i32)* @__kvm_set_xcr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__kvm_set_xcr(%struct.kvm_vcpu* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %13 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @XCR_XFEATURE_ENABLED_MASK, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %99

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @XFEATURE_MASK_FP, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i32 1, i32* %4, align 4
  br label %99

26:                                               ; preds = %20
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @XFEATURE_MASK_YMM, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @XFEATURE_MASK_SSE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  store i32 1, i32* %4, align 4
  br label %99

37:                                               ; preds = %31, %26
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %39 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @XFEATURE_MASK_FP, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %10, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  store i32 1, i32* %4, align 4
  br label %99

50:                                               ; preds = %37
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @XFEATURE_MASK_BNDREGS, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @XFEATURE_MASK_BNDCSR, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = icmp ne i32 %56, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %50
  store i32 1, i32* %4, align 4
  br label %99

65:                                               ; preds = %50
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @XFEATURE_MASK_AVX512, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %65
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @XFEATURE_MASK_YMM, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  store i32 1, i32* %4, align 4
  br label %99

76:                                               ; preds = %70
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @XFEATURE_MASK_AVX512, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* @XFEATURE_MASK_AVX512, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  store i32 1, i32* %4, align 4
  br label %99

83:                                               ; preds = %76
  br label %84

84:                                               ; preds = %83, %65
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %87 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %9, align 4
  %91 = xor i32 %89, %90
  %92 = load i32, i32* @XFEATURE_MASK_EXTEND, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %84
  %96 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %97 = call i32 @kvm_update_cpuid(%struct.kvm_vcpu* %96)
  br label %98

98:                                               ; preds = %95, %84
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %98, %82, %75, %64, %49, %36, %25, %19
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @kvm_update_cpuid(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
