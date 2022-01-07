; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_resize_hpt_pivot.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_resize_hpt_pivot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_resize_hpt = type { %struct.kvm_hpt_info, %struct.kvm* }
%struct.kvm_hpt_info = type { i32 }
%struct.kvm = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvm_hpt_info }

@.str = private unnamed_addr constant [20 x i8] c"resize_hpt_pivot()\0A\00", align 1
@CPU_FTR_ARCH_300 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"resize_hpt_pivot() done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_resize_hpt*)* @resize_hpt_pivot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resize_hpt_pivot(%struct.kvm_resize_hpt* %0) #0 {
  %2 = alloca %struct.kvm_resize_hpt*, align 8
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.kvm_hpt_info, align 4
  store %struct.kvm_resize_hpt* %0, %struct.kvm_resize_hpt** %2, align 8
  %5 = load %struct.kvm_resize_hpt*, %struct.kvm_resize_hpt** %2, align 8
  %6 = getelementptr inbounds %struct.kvm_resize_hpt, %struct.kvm_resize_hpt* %5, i32 0, i32 1
  %7 = load %struct.kvm*, %struct.kvm** %6, align 8
  store %struct.kvm* %7, %struct.kvm** %3, align 8
  %8 = load %struct.kvm_resize_hpt*, %struct.kvm_resize_hpt** %2, align 8
  %9 = call i32 @resize_hpt_debug(%struct.kvm_resize_hpt* %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.kvm*, %struct.kvm** %3, align 8
  %11 = getelementptr inbounds %struct.kvm, %struct.kvm* %10, i32 0, i32 1
  %12 = call i32 @spin_lock(i32* %11)
  call void asm sideeffect "ptesync", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !2
  %13 = load %struct.kvm*, %struct.kvm** %3, align 8
  %14 = getelementptr inbounds %struct.kvm, %struct.kvm* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = bitcast %struct.kvm_hpt_info* %4 to i8*
  %17 = bitcast %struct.kvm_hpt_info* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 4, i1 false)
  %18 = load %struct.kvm*, %struct.kvm** %3, align 8
  %19 = load %struct.kvm_resize_hpt*, %struct.kvm_resize_hpt** %2, align 8
  %20 = getelementptr inbounds %struct.kvm_resize_hpt, %struct.kvm_resize_hpt* %19, i32 0, i32 0
  %21 = call i32 @kvmppc_set_hpt(%struct.kvm* %18, %struct.kvm_hpt_info* %20)
  %22 = load %struct.kvm_resize_hpt*, %struct.kvm_resize_hpt** %2, align 8
  %23 = getelementptr inbounds %struct.kvm_resize_hpt, %struct.kvm_resize_hpt* %22, i32 0, i32 0
  %24 = bitcast %struct.kvm_hpt_info* %23 to i8*
  %25 = bitcast %struct.kvm_hpt_info* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 4 %25, i64 4, i1 false)
  %26 = load %struct.kvm*, %struct.kvm** %3, align 8
  %27 = getelementptr inbounds %struct.kvm, %struct.kvm* %26, i32 0, i32 1
  %28 = call i32 @spin_unlock(i32* %27)
  %29 = load %struct.kvm*, %struct.kvm** %3, align 8
  %30 = getelementptr inbounds %struct.kvm, %struct.kvm* %29, i32 0, i32 0
  %31 = call i32 @synchronize_srcu_expedited(i32* %30)
  %32 = load i32, i32* @CPU_FTR_ARCH_300, align 4
  %33 = call i64 @cpu_has_feature(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %1
  %36 = load %struct.kvm*, %struct.kvm** %3, align 8
  %37 = call i32 @kvmppc_setup_partition_table(%struct.kvm* %36)
  br label %38

38:                                               ; preds = %35, %1
  %39 = load %struct.kvm_resize_hpt*, %struct.kvm_resize_hpt** %2, align 8
  %40 = call i32 @resize_hpt_debug(%struct.kvm_resize_hpt* %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @resize_hpt_debug(%struct.kvm_resize_hpt*, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @kvmppc_set_hpt(%struct.kvm*, %struct.kvm_hpt_info*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @synchronize_srcu_expedited(i32*) #1

declare dso_local i64 @cpu_has_feature(i32) #1

declare dso_local i32 @kvmppc_setup_partition_table(%struct.kvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 944}
