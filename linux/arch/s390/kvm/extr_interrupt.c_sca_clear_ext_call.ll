; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_interrupt.c_sca_clear_ext_call.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_interrupt.c_sca_clear_ext_call.c"
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

@CPUSTAT_ECALL_PEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @sca_clear_ext_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sca_clear_ext_call(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.esca_block*, align 8
  %6 = alloca %union.esca_sigp_ctrl*, align 8
  %7 = alloca %union.esca_sigp_ctrl, align 4
  %8 = alloca %struct.bsca_block*, align 8
  %9 = alloca %union.bsca_sigp_ctrl*, align 8
  %10 = alloca %union.bsca_sigp_ctrl, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %11 = call i32 (...) @kvm_s390_use_sca_entries()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %95

14:                                               ; preds = %1
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %16 = load i32, i32* @CPUSTAT_ECALL_PEND, align 4
  %17 = call i32 @kvm_s390_clear_cpuflags(%struct.kvm_vcpu* %15, i32 %16)
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %19 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = call i32 @read_lock(i32* %22)
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %25 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %14
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %33 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load %struct.esca_block*, %struct.esca_block** %36, align 8
  store %struct.esca_block* %37, %struct.esca_block** %5, align 8
  %38 = load %struct.esca_block*, %struct.esca_block** %5, align 8
  %39 = getelementptr inbounds %struct.esca_block, %struct.esca_block* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %42 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store %union.esca_sigp_ctrl* %45, %union.esca_sigp_ctrl** %6, align 8
  %46 = load %union.esca_sigp_ctrl*, %union.esca_sigp_ctrl** %6, align 8
  %47 = bitcast %union.esca_sigp_ctrl* %7 to i8*
  %48 = bitcast %union.esca_sigp_ctrl* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 4, i1 false)
  %49 = bitcast %union.esca_sigp_ctrl* %7 to i32*
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %4, align 4
  %51 = load %union.esca_sigp_ctrl*, %union.esca_sigp_ctrl** %6, align 8
  %52 = bitcast %union.esca_sigp_ctrl* %51 to i32*
  %53 = bitcast %union.esca_sigp_ctrl* %7 to i32*
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @cmpxchg(i32* %52, i32 %54, i32 0)
  store i32 %55, i32* %3, align 4
  br label %83

56:                                               ; preds = %14
  %57 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %58 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %57, i32 0, i32 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load %struct.esca_block*, %struct.esca_block** %61, align 8
  %63 = bitcast %struct.esca_block* %62 to %struct.bsca_block*
  store %struct.bsca_block* %63, %struct.bsca_block** %8, align 8
  %64 = load %struct.bsca_block*, %struct.bsca_block** %8, align 8
  %65 = getelementptr inbounds %struct.bsca_block, %struct.bsca_block* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %68 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = bitcast %union.esca_sigp_ctrl* %71 to %union.bsca_sigp_ctrl*
  store %union.bsca_sigp_ctrl* %72, %union.bsca_sigp_ctrl** %9, align 8
  %73 = load %union.bsca_sigp_ctrl*, %union.bsca_sigp_ctrl** %9, align 8
  %74 = bitcast %union.bsca_sigp_ctrl* %10 to i8*
  %75 = bitcast %union.bsca_sigp_ctrl* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %74, i8* align 4 %75, i64 4, i1 false)
  %76 = bitcast %union.bsca_sigp_ctrl* %10 to i32*
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %4, align 4
  %78 = load %union.bsca_sigp_ctrl*, %union.bsca_sigp_ctrl** %9, align 8
  %79 = bitcast %union.bsca_sigp_ctrl* %78 to i32*
  %80 = bitcast %union.bsca_sigp_ctrl* %10 to i32*
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @cmpxchg(i32* %79, i32 %81, i32 0)
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %56, %31
  %84 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %85 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %84, i32 0, i32 1
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = call i32 @read_unlock(i32* %88)
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* %4, align 4
  %92 = icmp ne i32 %90, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @WARN_ON(i32 %93)
  br label %95

95:                                               ; preds = %83, %13
  ret void
}

declare dso_local i32 @kvm_s390_use_sca_entries(...) #1

declare dso_local i32 @kvm_s390_clear_cpuflags(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @read_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
