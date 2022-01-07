; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_set_arch_compat.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_set_arch_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvmppc_vcore* }
%struct.kvmppc_vcore = type { i32, i64, i32 }

@CPU_FTR_ARCH_300 = common dso_local global i32 0, align 4
@PCR_ARCH_300 = common dso_local global i64 0, align 8
@CPU_FTR_ARCH_207S = common dso_local global i32 0, align 4
@PCR_ARCH_207 = common dso_local global i64 0, align 8
@CPU_FTR_ARCH_206 = common dso_local global i32 0, align 4
@PCR_ARCH_206 = common dso_local global i64 0, align 8
@PCR_ARCH_205 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PCR_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32)* @kvmppc_set_arch_compat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_set_arch_compat(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.kvmppc_vcore*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %11, align 8
  store %struct.kvmppc_vcore* %12, %struct.kvmppc_vcore** %8, align 8
  %13 = load i32, i32* @CPU_FTR_ARCH_300, align 4
  %14 = call i64 @cpu_has_feature(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i64, i64* @PCR_ARCH_300, align 8
  store i64 %17, i64* %6, align 8
  br label %34

18:                                               ; preds = %2
  %19 = load i32, i32* @CPU_FTR_ARCH_207S, align 4
  %20 = call i64 @cpu_has_feature(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i64, i64* @PCR_ARCH_207, align 8
  store i64 %23, i64* %6, align 8
  br label %33

24:                                               ; preds = %18
  %25 = load i32, i32* @CPU_FTR_ARCH_206, align 4
  %26 = call i64 @cpu_has_feature(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i64, i64* @PCR_ARCH_206, align 8
  store i64 %29, i64* %6, align 8
  br label %32

30:                                               ; preds = %24
  %31 = load i64, i64* @PCR_ARCH_205, align 8
  store i64 %31, i64* %6, align 8
  br label %32

32:                                               ; preds = %30, %28
  br label %33

33:                                               ; preds = %32, %22
  br label %34

34:                                               ; preds = %33, %16
  %35 = load i64, i64* %6, align 8
  store i64 %35, i64* %7, align 8
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4
  switch i32 %39, label %48 [
    i32 132, label %40
    i32 131, label %42
    i32 130, label %42
    i32 129, label %44
    i32 128, label %46
  ]

40:                                               ; preds = %38
  %41 = load i64, i64* @PCR_ARCH_205, align 8
  store i64 %41, i64* %7, align 8
  br label %51

42:                                               ; preds = %38, %38
  %43 = load i64, i64* @PCR_ARCH_206, align 8
  store i64 %43, i64* %7, align 8
  br label %51

44:                                               ; preds = %38
  %45 = load i64, i64* @PCR_ARCH_207, align 8
  store i64 %45, i64* %7, align 8
  br label %51

46:                                               ; preds = %38
  %47 = load i64, i64* @PCR_ARCH_300, align 8
  store i64 %47, i64* %7, align 8
  br label %51

48:                                               ; preds = %38
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %76

51:                                               ; preds = %46, %44, %42, %40
  br label %52

52:                                               ; preds = %51, %34
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %6, align 8
  %55 = icmp ugt i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %76

59:                                               ; preds = %52
  %60 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %8, align 8
  %61 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %60, i32 0, i32 2
  %62 = call i32 @spin_lock(i32* %61)
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %8, align 8
  %65 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* %7, align 8
  %68 = sub i64 %66, %67
  %69 = load i64, i64* @PCR_MASK, align 8
  %70 = or i64 %68, %69
  %71 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %8, align 8
  %72 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %8, align 8
  %74 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %73, i32 0, i32 2
  %75 = call i32 @spin_unlock(i32* %74)
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %59, %56, %48
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i64 @cpu_has_feature(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
