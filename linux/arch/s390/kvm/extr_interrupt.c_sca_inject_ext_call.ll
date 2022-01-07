; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_interrupt.c_sca_inject_ext_call.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_interrupt.c_sca_inject_ext_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.esca_block*, i64 }
%struct.esca_block = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %union.esca_sigp_ctrl }
%union.esca_sigp_ctrl = type { i32 }
%struct.bsca_block = type { %struct.TYPE_4__* }
%union.bsca_sigp_ctrl = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@CPUSTAT_ECALL_PEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32)* @sca_inject_ext_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sca_inject_ext_call(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.esca_block*, align 8
  %9 = alloca %union.esca_sigp_ctrl*, align 8
  %10 = alloca %union.esca_sigp_ctrl, align 4
  %11 = alloca %union.esca_sigp_ctrl, align 4
  %12 = alloca %struct.bsca_block*, align 8
  %13 = alloca %union.bsca_sigp_ctrl*, align 8
  %14 = alloca %union.bsca_sigp_ctrl, align 4
  %15 = alloca %union.bsca_sigp_ctrl, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = call i32 (...) @kvm_s390_use_sca_entries()
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %22 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = call i32 @read_lock(i32* %25)
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %28 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %66

34:                                               ; preds = %2
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %36 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load %struct.esca_block*, %struct.esca_block** %39, align 8
  store %struct.esca_block* %40, %struct.esca_block** %8, align 8
  %41 = load %struct.esca_block*, %struct.esca_block** %8, align 8
  %42 = getelementptr inbounds %struct.esca_block, %struct.esca_block* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %45 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store %union.esca_sigp_ctrl* %48, %union.esca_sigp_ctrl** %9, align 8
  %49 = bitcast %union.esca_sigp_ctrl* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %49, i8 0, i64 4, i1 false)
  %50 = load %union.esca_sigp_ctrl*, %union.esca_sigp_ctrl** %9, align 8
  %51 = bitcast %union.esca_sigp_ctrl* %11 to i8*
  %52 = bitcast %union.esca_sigp_ctrl* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 %52, i64 4, i1 false)
  %53 = load i32, i32* %5, align 4
  %54 = bitcast %union.esca_sigp_ctrl* %10 to i32*
  store i32 %53, i32* %54, align 4
  %55 = bitcast %union.esca_sigp_ctrl* %10 to i32*
  store i32 1, i32* %55, align 4
  %56 = bitcast %union.esca_sigp_ctrl* %11 to i32*
  store i32 0, i32* %56, align 4
  %57 = bitcast %union.esca_sigp_ctrl* %11 to i32*
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %6, align 4
  %59 = load %union.esca_sigp_ctrl*, %union.esca_sigp_ctrl** %9, align 8
  %60 = bitcast %union.esca_sigp_ctrl* %59 to i32*
  %61 = bitcast %union.esca_sigp_ctrl* %11 to i32*
  %62 = load i32, i32* %61, align 4
  %63 = bitcast %union.esca_sigp_ctrl* %10 to i32*
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @cmpxchg(i32* %60, i32 %62, i32 %64)
  store i32 %65, i32* %7, align 4
  br label %100

66:                                               ; preds = %2
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %68 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load %struct.esca_block*, %struct.esca_block** %71, align 8
  %73 = bitcast %struct.esca_block* %72 to %struct.bsca_block*
  store %struct.bsca_block* %73, %struct.bsca_block** %12, align 8
  %74 = load %struct.bsca_block*, %struct.bsca_block** %12, align 8
  %75 = getelementptr inbounds %struct.bsca_block, %struct.bsca_block* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %78 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = bitcast %union.esca_sigp_ctrl* %81 to %union.bsca_sigp_ctrl*
  store %union.bsca_sigp_ctrl* %82, %union.bsca_sigp_ctrl** %13, align 8
  %83 = bitcast %union.bsca_sigp_ctrl* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %83, i8 0, i64 4, i1 false)
  %84 = load %union.bsca_sigp_ctrl*, %union.bsca_sigp_ctrl** %13, align 8
  %85 = bitcast %union.bsca_sigp_ctrl* %15 to i8*
  %86 = bitcast %union.bsca_sigp_ctrl* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %85, i8* align 4 %86, i64 4, i1 false)
  %87 = load i32, i32* %5, align 4
  %88 = bitcast %union.bsca_sigp_ctrl* %14 to i32*
  store i32 %87, i32* %88, align 4
  %89 = bitcast %union.bsca_sigp_ctrl* %14 to i32*
  store i32 1, i32* %89, align 4
  %90 = bitcast %union.bsca_sigp_ctrl* %15 to i32*
  store i32 0, i32* %90, align 4
  %91 = bitcast %union.bsca_sigp_ctrl* %15 to i32*
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %6, align 4
  %93 = load %union.bsca_sigp_ctrl*, %union.bsca_sigp_ctrl** %13, align 8
  %94 = bitcast %union.bsca_sigp_ctrl* %93 to i32*
  %95 = bitcast %union.bsca_sigp_ctrl* %15 to i32*
  %96 = load i32, i32* %95, align 4
  %97 = bitcast %union.bsca_sigp_ctrl* %14 to i32*
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @cmpxchg(i32* %94, i32 %96, i32 %98)
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %66, %34
  %101 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %102 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %101, i32 0, i32 1
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = call i32 @read_unlock(i32* %105)
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %100
  %111 = load i32, i32* @EBUSY, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %117

113:                                              ; preds = %100
  %114 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %115 = load i32, i32* @CPUSTAT_ECALL_PEND, align 4
  %116 = call i32 @kvm_s390_set_cpuflags(%struct.kvm_vcpu* %114, i32 %115)
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %113, %110
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kvm_s390_use_sca_entries(...) #1

declare dso_local i32 @read_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @kvm_s390_set_cpuflags(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
