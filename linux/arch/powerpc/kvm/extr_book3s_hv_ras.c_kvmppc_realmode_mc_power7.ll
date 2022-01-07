; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_ras.c_kvmppc_realmode_mc_power7.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_ras.c_kvmppc_realmode_mc_power7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { %struct.machine_check_event, %struct.TYPE_5__ }
%struct.machine_check_event = type { i64, i32 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@SRR1_MC_LDSTERR = common dso_local global i64 0, align 8
@DSISR_MC_SLB_PARMULTI = common dso_local global i64 0, align 8
@DSISR_MC_SLB_MULTI = common dso_local global i64 0, align 8
@DSISR_MC_SLB_PARITY = common dso_local global i64 0, align 8
@DSISR_MC_DERAT_MULTI = common dso_local global i64 0, align 8
@DSISR_MC_TLB_MULTI = common dso_local global i64 0, align 8
@SRR1_MC_IFETCH_SH = common dso_local global i64 0, align 8
@SRR1_MC_IFETCH_MASK = common dso_local global i64 0, align 8
@MCE_EVENT_RELEASE = common dso_local global i32 0, align 4
@MCE_V1 = common dso_local global i64 0, align 8
@MCE_DISPOSITION_RECOVERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @kvmppc_realmode_mc_power7 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvmppc_realmode_mc_power7(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.machine_check_event, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %8 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %3, align 8
  store i64 1, i64* %5, align 8
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @SRR1_MC_LDSTERR, align 8
  %14 = and i64 %12, %13
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %68

16:                                               ; preds = %1
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @DSISR_MC_SLB_PARMULTI, align 8
  %24 = load i64, i64* @DSISR_MC_SLB_MULTI, align 8
  %25 = or i64 %23, %24
  %26 = load i64, i64* @DSISR_MC_SLB_PARITY, align 8
  %27 = or i64 %25, %26
  %28 = load i64, i64* @DSISR_MC_DERAT_MULTI, align 8
  %29 = or i64 %27, %28
  %30 = and i64 %22, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %16
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %34 = call i32 @reload_slb(%struct.kvm_vcpu* %33)
  %35 = load i64, i64* @DSISR_MC_SLB_PARMULTI, align 8
  %36 = load i64, i64* @DSISR_MC_SLB_MULTI, align 8
  %37 = or i64 %35, %36
  %38 = load i64, i64* @DSISR_MC_SLB_PARITY, align 8
  %39 = or i64 %37, %38
  %40 = load i64, i64* @DSISR_MC_DERAT_MULTI, align 8
  %41 = or i64 %39, %40
  %42 = xor i64 %41, -1
  %43 = load i64, i64* %6, align 8
  %44 = and i64 %43, %42
  store i64 %44, i64* %6, align 8
  br label %45

45:                                               ; preds = %32, %16
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* @DSISR_MC_TLB_MULTI, align 8
  %48 = and i64 %46, %47
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %45
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %52 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %51, i32 0, i32 1
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @tlbiel_all_lpid(i32 %56)
  %58 = load i64, i64* @DSISR_MC_TLB_MULTI, align 8
  %59 = xor i64 %58, -1
  %60 = load i64, i64* %6, align 8
  %61 = and i64 %60, %59
  store i64 %61, i64* %6, align 8
  br label %62

62:                                               ; preds = %50, %45
  %63 = load i64, i64* %6, align 8
  %64 = and i64 %63, 4294967295
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i64 0, i64* %5, align 8
  br label %67

67:                                               ; preds = %66, %62
  br label %68

68:                                               ; preds = %67, %1
  %69 = load i64, i64* %3, align 8
  %70 = load i64, i64* @SRR1_MC_IFETCH_SH, align 8
  %71 = lshr i64 %69, %70
  %72 = load i64, i64* @SRR1_MC_IFETCH_MASK, align 8
  %73 = and i64 %71, %72
  switch i64 %73, label %86 [
    i64 0, label %74
    i64 130, label %75
    i64 131, label %75
    i64 129, label %75
    i64 128, label %78
  ]

74:                                               ; preds = %68
  br label %87

75:                                               ; preds = %68, %68, %68
  %76 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %77 = call i32 @reload_slb(%struct.kvm_vcpu* %76)
  br label %87

78:                                               ; preds = %68
  %79 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %80 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %79, i32 0, i32 1
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @tlbiel_all_lpid(i32 %84)
  br label %87

86:                                               ; preds = %68
  store i64 0, i64* %5, align 8
  br label %87

87:                                               ; preds = %86, %78, %75, %74
  %88 = load i32, i32* @MCE_EVENT_RELEASE, align 4
  %89 = call i64 @get_mce_event(%struct.machine_check_event* %4, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %87
  %92 = load i64, i64* %5, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %4, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @MCE_V1, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i32, i32* @MCE_DISPOSITION_RECOVERED, align 4
  %101 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %4, i32 0, i32 1
  store i32 %100, i32* %101, align 8
  br label %102

102:                                              ; preds = %99, %94, %91
  br label %105

103:                                              ; preds = %87
  %104 = call i32 @memset(%struct.machine_check_event* %4, i32 0, i32 16)
  br label %105

105:                                              ; preds = %103, %102
  %106 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %107 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = bitcast %struct.machine_check_event* %108 to i8*
  %110 = bitcast %struct.machine_check_event* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %109, i8* align 8 %110, i64 16, i1 false)
  ret void
}

declare dso_local i32 @reload_slb(%struct.kvm_vcpu*) #1

declare dso_local i32 @tlbiel_all_lpid(i32) #1

declare dso_local i64 @get_mce_event(%struct.machine_check_event*, i32) #1

declare dso_local i32 @memset(%struct.machine_check_event*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
