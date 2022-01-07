; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_pr.c_kvmppc_set_pvr_pr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_pr.c_kvmppc_set_pvr_pr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.kvm_vcpu = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 (%struct.kvm_vcpu.0*)* }
%struct.kvm_vcpu.0 = type opaque
%struct.TYPE_7__ = type { i32, i32, i32 }

@BOOK3S_HFLAG_SLB = common dso_local global i32 0, align 4
@KVM_CPU_3S_32 = common dso_local global i32 0, align 4
@BOOK3S_HFLAG_DCBZ32 = common dso_local global i32 0, align 4
@MSR_HV = common dso_local global i32 0, align 4
@cur_cpu_spec = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"ppc970\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"ppc-cell-be\00", align 1
@MSR_FE0 = common dso_local global i32 0, align 4
@MSR_FE1 = common dso_local global i32 0, align 4
@BOOK3S_HFLAG_MULTI_PGSIZE = common dso_local global i32 0, align 4
@BOOK3S_HFLAG_NEW_TLBIE = common dso_local global i32 0, align 4
@BOOK3S_HFLAG_NATIVE_PS = common dso_local global i32 0, align 4
@SPRN_HID2_GEKKO = common dso_local global i32 0, align 4
@KVM_CPU_3S_64 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmppc_set_pvr_pr(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @BOOK3S_HFLAG_SLB, align 4
  %7 = xor i32 %6, -1
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, %7
  store i32 %12, i32* %10, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %15 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  store i32 %13, i32* %16, align 4
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %18 = call i32 @kvmppc_mmu_book3s_32_init(%struct.kvm_vcpu* %17)
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %20 = call %struct.TYPE_7__* @to_book3s(%struct.kvm_vcpu* %19)
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %26 = call %struct.TYPE_7__* @to_book3s(%struct.kvm_vcpu* %25)
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %24, %2
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %30 = call %struct.TYPE_7__* @to_book3s(%struct.kvm_vcpu* %29)
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  store i32 -1, i32* %31, align 4
  %32 = load i32, i32* @KVM_CPU_3S_32, align 4
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %34 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  store i32 %32, i32* %35, align 8
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %37 = call i32 @kvmppc_sanity_check(%struct.kvm_vcpu* %36)
  %38 = load i32, i32* @BOOK3S_HFLAG_DCBZ32, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %41 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, %39
  store i32 %44, i32* %42, align 8
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %46 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64 (%struct.kvm_vcpu.0*)*, i64 (%struct.kvm_vcpu.0*)** %48, align 8
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %51 = bitcast %struct.kvm_vcpu* %50 to %struct.kvm_vcpu.0*
  %52 = call i64 %49(%struct.kvm_vcpu.0* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %28
  %55 = call i32 (...) @mfmsr()
  %56 = load i32, i32* @MSR_HV, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %54
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cur_cpu_spec, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @strcmp(i32 %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* @BOOK3S_HFLAG_DCBZ32, align 4
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %68 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %66
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %65, %59, %54, %28
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cur_cpu_spec, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @strcmp(i32 %75, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %72
  %79 = load i32, i32* @MSR_FE0, align 4
  %80 = load i32, i32* @MSR_FE1, align 4
  %81 = or i32 %79, %80
  %82 = xor i32 %81, -1
  %83 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %84 = call %struct.TYPE_7__* @to_book3s(%struct.kvm_vcpu* %83)
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, %82
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %78, %72
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @PVR_VER(i32 %89)
  switch i32 %90, label %100 [
    i32 134, label %91
    i32 133, label %91
    i32 132, label %91
    i32 131, label %91
    i32 130, label %91
    i32 129, label %91
    i32 128, label %91
  ]

91:                                               ; preds = %88, %88, %88, %88, %88, %88, %88
  %92 = load i32, i32* @BOOK3S_HFLAG_MULTI_PGSIZE, align 4
  %93 = load i32, i32* @BOOK3S_HFLAG_NEW_TLBIE, align 4
  %94 = or i32 %92, %93
  %95 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %96 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %94
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %88, %91
  %101 = call i32 asm "mfpvr $0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  switch i32 %102, label %115 [
    i32 524800, label %103
    i32 557570, label %103
    i32 1879048448, label %103
    i32 524544, label %103
    i32 537091, label %103
    i32 537107, label %103
    i32 537092, label %103
    i32 537108, label %103
    i32 553472, label %103
  ]

103:                                              ; preds = %100, %100, %100, %100, %100, %100, %100, %100, %100
  %104 = load i32, i32* @BOOK3S_HFLAG_NATIVE_PS, align 4
  %105 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %106 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %104
  store i32 %109, i32* %107, align 8
  %110 = load i32, i32* @SPRN_HID2_GEKKO, align 4
  %111 = load i32, i32* @SPRN_HID2_GEKKO, align 4
  %112 = call i32 @mfspr(i32 %111)
  %113 = or i32 %112, 536870912
  %114 = call i32 @mtspr(i32 %110, i32 %113)
  br label %115

115:                                              ; preds = %103, %100
  ret void
}

declare dso_local i32 @kvmppc_mmu_book3s_32_init(%struct.kvm_vcpu*) #1

declare dso_local %struct.TYPE_7__* @to_book3s(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_sanity_check(%struct.kvm_vcpu*) #1

declare dso_local i32 @mfmsr(...) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @PVR_VER(i32) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @mfspr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 2072}
