; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_set_msr_mce.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_set_msr_mce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32* }
%struct.msr_data = type { i32, i32, i32 }

@MCG_CTL_P = common dso_local global i32 0, align 4
@MSR_IA32_MC0_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.msr_data*)* @set_msr_mce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_msr_mce(%struct.kvm_vcpu* %0, %struct.msr_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.msr_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.msr_data* %1, %struct.msr_data** %5, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, 255
  store i32 %16, i32* %7, align 4
  %17 = load %struct.msr_data*, %struct.msr_data** %5, align 8
  %18 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.msr_data*, %struct.msr_data** %5, align 8
  %21 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %8, align 4
  switch i32 %23, label %55 [
    i32 128, label %24
    i32 129, label %29
  ]

24:                                               ; preds = %2
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %27 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  br label %107

29:                                               ; preds = %2
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @MCG_CTL_P, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = load %struct.msr_data*, %struct.msr_data** %5, align 8
  %39 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37, %34
  store i32 1, i32* %3, align 4
  br label %108

43:                                               ; preds = %37, %29
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, -1
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 1, i32* %3, align 4
  br label %108

50:                                               ; preds = %46, %43
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %53 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  store i32 %51, i32* %54, align 8
  br label %107

55:                                               ; preds = %2
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @MSR_IA32_MC0_CTL, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %106

59:                                               ; preds = %55
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @MSR_IA32_MCx_CTL(i32 %61)
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %106

64:                                               ; preds = %59
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @MSR_IA32_MC0_CTL, align 4
  %67 = sub nsw i32 %65, %66
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = and i32 %68, 3
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %64
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load i32, i32* %9, align 4
  %76 = or i32 %75, 1024
  %77 = icmp ne i32 %76, -1
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i32 -1, i32* %3, align 4
  br label %108

79:                                               ; preds = %74, %71, %64
  %80 = load %struct.msr_data*, %struct.msr_data** %5, align 8
  %81 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %97, label %84

84:                                               ; preds = %79
  %85 = load i32, i32* %10, align 4
  %86 = and i32 %85, 3
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %97

88:                                               ; preds = %84
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %93 = call i32 @can_set_mci_status(%struct.kvm_vcpu* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %91
  store i32 -1, i32* %3, align 4
  br label %108

96:                                               ; preds = %91
  br label %97

97:                                               ; preds = %96, %88, %84, %79
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %100 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 3
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %98, i32* %105, align 4
  br label %107

106:                                              ; preds = %59, %55
  store i32 1, i32* %3, align 4
  br label %108

107:                                              ; preds = %97, %50, %24
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %107, %106, %95, %78, %49, %42
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @MSR_IA32_MCx_CTL(i32) #1

declare dso_local i32 @can_set_mci_status(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
