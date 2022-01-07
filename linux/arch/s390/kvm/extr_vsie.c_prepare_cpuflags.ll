; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_vsie.c_prepare_cpuflags.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_vsie.c_prepare_cpuflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vsie_page = type { %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block }
%struct.kvm_s390_sie_block = type { i32 }

@CPUSTAT_ZARCH = common dso_local global i32 0, align 4
@CPUSTAT_RRF = common dso_local global i32 0, align 4
@CPUSTAT_MCDS = common dso_local global i32 0, align 4
@CPUSTAT_SLSV = common dso_local global i32 0, align 4
@CPUSTAT_SLSR = common dso_local global i32 0, align 4
@CPUSTAT_GED = common dso_local global i32 0, align 4
@CPUSTAT_GED2 = common dso_local global i32 0, align 4
@KVM_S390_VM_CPU_FEAT_GPERE = common dso_local global i32 0, align 4
@CPUSTAT_P = common dso_local global i32 0, align 4
@KVM_S390_VM_CPU_FEAT_GSLS = common dso_local global i32 0, align 4
@CPUSTAT_SM = common dso_local global i32 0, align 4
@KVM_S390_VM_CPU_FEAT_IBS = common dso_local global i32 0, align 4
@CPUSTAT_IBS = common dso_local global i32 0, align 4
@KVM_S390_VM_CPU_FEAT_KSS = common dso_local global i32 0, align 4
@CPUSTAT_KSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.vsie_page*)* @prepare_cpuflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_cpuflags(%struct.kvm_vcpu* %0, %struct.vsie_page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.vsie_page*, align 8
  %6 = alloca %struct.kvm_s390_sie_block*, align 8
  %7 = alloca %struct.kvm_s390_sie_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.vsie_page* %1, %struct.vsie_page** %5, align 8
  %10 = load %struct.vsie_page*, %struct.vsie_page** %5, align 8
  %11 = getelementptr inbounds %struct.vsie_page, %struct.vsie_page* %10, i32 0, i32 1
  store %struct.kvm_s390_sie_block* %11, %struct.kvm_s390_sie_block** %6, align 8
  %12 = load %struct.vsie_page*, %struct.vsie_page** %5, align 8
  %13 = getelementptr inbounds %struct.vsie_page, %struct.vsie_page* %12, i32 0, i32 0
  %14 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %13, align 8
  store %struct.kvm_s390_sie_block* %14, %struct.kvm_s390_sie_block** %7, align 8
  %15 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %7, align 8
  %16 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %15, i32 0, i32 0
  %17 = call i32 @atomic_read(i32* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @CPUSTAT_ZARCH, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %6, align 8
  %24 = call i32 @set_validity_icpt(%struct.kvm_s390_sie_block* %23, i32 1)
  store i32 %24, i32* %3, align 4
  br label %142

25:                                               ; preds = %2
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @CPUSTAT_RRF, align 4
  %28 = load i32, i32* @CPUSTAT_MCDS, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %6, align 8
  %34 = call i32 @set_validity_icpt(%struct.kvm_s390_sie_block* %33, i32 1)
  store i32 %34, i32* %3, align 4
  br label %142

35:                                               ; preds = %25
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @CPUSTAT_SLSV, align 4
  %38 = load i32, i32* @CPUSTAT_SLSR, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %6, align 8
  %44 = call i32 @set_validity_icpt(%struct.kvm_s390_sie_block* %43, i32 7)
  store i32 %44, i32* %3, align 4
  br label %142

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* @CPUSTAT_ZARCH, align 4
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @CPUSTAT_GED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %46
  %53 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %54 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @test_kvm_facility(i32 %55, i32 8)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load i32, i32* @CPUSTAT_GED, align 4
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %58, %52, %46
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @CPUSTAT_GED2, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %62
  %68 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %69 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @test_kvm_facility(i32 %70, i32 78)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %67
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @CPUSTAT_GED, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %6, align 8
  %80 = call i32 @set_validity_icpt(%struct.kvm_s390_sie_block* %79, i32 1)
  store i32 %80, i32* %3, align 4
  br label %142

81:                                               ; preds = %73
  %82 = load i32, i32* @CPUSTAT_GED2, align 4
  %83 = load i32, i32* %8, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %81, %67, %62
  %86 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %87 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @KVM_S390_VM_CPU_FEAT_GPERE, align 4
  %90 = call i64 @test_kvm_cpu_feat(i32 %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %85
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @CPUSTAT_P, align 4
  %95 = and i32 %93, %94
  %96 = load i32, i32* %8, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %8, align 4
  br label %98

98:                                               ; preds = %92, %85
  %99 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %100 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @KVM_S390_VM_CPU_FEAT_GSLS, align 4
  %103 = call i64 @test_kvm_cpu_feat(i32 %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %98
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @CPUSTAT_SM, align 4
  %108 = and i32 %106, %107
  %109 = load i32, i32* %8, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %8, align 4
  br label %111

111:                                              ; preds = %105, %98
  %112 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %113 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @KVM_S390_VM_CPU_FEAT_IBS, align 4
  %116 = call i64 @test_kvm_cpu_feat(i32 %114, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %111
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @CPUSTAT_IBS, align 4
  %121 = and i32 %119, %120
  %122 = load i32, i32* %8, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %118, %111
  %125 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %126 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @KVM_S390_VM_CPU_FEAT_KSS, align 4
  %129 = call i64 @test_kvm_cpu_feat(i32 %127, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %124
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* @CPUSTAT_KSS, align 4
  %134 = and i32 %132, %133
  %135 = load i32, i32* %8, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %8, align 4
  br label %137

137:                                              ; preds = %131, %124
  %138 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %6, align 8
  %139 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %138, i32 0, i32 0
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @atomic_set(i32* %139, i32 %140)
  store i32 0, i32* %3, align 4
  br label %142

142:                                              ; preds = %137, %78, %42, %32, %22
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @set_validity_icpt(%struct.kvm_s390_sie_block*, i32) #1

declare dso_local i64 @test_kvm_facility(i32, i32) #1

declare dso_local i64 @test_kvm_cpu_feat(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
