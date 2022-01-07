; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_mmu.c_kvmppc_clear_ref_hpte.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_mmu.c_kvmppc_clear_ref_hpte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }

@CPU_FTR_ARCH_300 = common dso_local global i32 0, align 4
@HPTE_R_R = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmppc_clear_ref_hpte(%struct.kvm* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @be64_to_cpu(i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @be64_to_cpu(i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* @CPU_FTR_ARCH_300, align 4
  %20 = call i64 @cpu_has_feature(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @hpte_new_to_old_v(i32 %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @hpte_new_to_old_r(i32 %26)
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %22, %3
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @compute_tlbie_rb(i32 %29, i32 %30, i64 %31)
  store i64 %32, i64* %7, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @be64_to_cpu(i32 %35)
  %37 = load i32, i32* @HPTE_R_R, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  %40 = ashr i32 %39, 8
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %8, align 1
  %42 = load i8, i8* %8, align 1
  %43 = load i32*, i32** %5, align 8
  %44 = bitcast i32* %43 to i8*
  %45 = getelementptr inbounds i8, i8* %44, i64 14
  store i8 %42, i8* %45, align 1
  %46 = load %struct.kvm*, %struct.kvm** %4, align 8
  %47 = call i32 @do_tlbies(%struct.kvm* %46, i64* %7, i32 1, i32 1, i32 0)
  ret void
}

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i64 @cpu_has_feature(i32) #1

declare dso_local i32 @hpte_new_to_old_v(i32, i32) #1

declare dso_local i32 @hpte_new_to_old_r(i32) #1

declare dso_local i64 @compute_tlbie_rb(i32, i32, i64) #1

declare dso_local i32 @do_tlbies(%struct.kvm*, i64*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
