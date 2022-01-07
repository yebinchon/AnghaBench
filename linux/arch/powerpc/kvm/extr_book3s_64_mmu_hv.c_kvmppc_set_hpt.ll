; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_kvmppc_set_hpt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_kvmppc_set_hpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, %struct.kvm_hpt_info, i32 }
%struct.kvm_hpt_info = type { i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"KVM guest htab at %lx (order %ld), LPID %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmppc_set_hpt(%struct.kvm* %0, %struct.kvm_hpt_info* %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.kvm_hpt_info*, align 8
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store %struct.kvm_hpt_info* %1, %struct.kvm_hpt_info** %4, align 8
  %5 = load %struct.kvm*, %struct.kvm** %3, align 8
  %6 = getelementptr inbounds %struct.kvm, %struct.kvm* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 3
  %8 = call i32 @atomic64_set(i32* %7, i32 0)
  %9 = load %struct.kvm*, %struct.kvm** %3, align 8
  %10 = getelementptr inbounds %struct.kvm, %struct.kvm* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load %struct.kvm_hpt_info*, %struct.kvm_hpt_info** %4, align 8
  %13 = bitcast %struct.kvm_hpt_info* %11 to i8*
  %14 = bitcast %struct.kvm_hpt_info* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 8, i1 false)
  %15 = load %struct.kvm_hpt_info*, %struct.kvm_hpt_info** %4, align 8
  %16 = getelementptr inbounds %struct.kvm_hpt_info, %struct.kvm_hpt_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @__pa(i32 %17)
  %19 = load %struct.kvm_hpt_info*, %struct.kvm_hpt_info** %4, align 8
  %20 = getelementptr inbounds %struct.kvm_hpt_info, %struct.kvm_hpt_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %21, 18
  %23 = or i32 %18, %22
  %24 = load %struct.kvm*, %struct.kvm** %3, align 8
  %25 = getelementptr inbounds %struct.kvm, %struct.kvm* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  %27 = load %struct.kvm_hpt_info*, %struct.kvm_hpt_info** %4, align 8
  %28 = getelementptr inbounds %struct.kvm_hpt_info, %struct.kvm_hpt_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.kvm_hpt_info*, %struct.kvm_hpt_info** %4, align 8
  %31 = getelementptr inbounds %struct.kvm_hpt_info, %struct.kvm_hpt_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = load %struct.kvm*, %struct.kvm** %3, align 8
  %35 = getelementptr inbounds %struct.kvm, %struct.kvm* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %29, i64 %33, i32 %37)
  ret void
}

declare dso_local i32 @atomic64_set(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__pa(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
