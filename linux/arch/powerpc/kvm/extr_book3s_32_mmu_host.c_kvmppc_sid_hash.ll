; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_32_mmu_host.c_kvmppc_sid_hash.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_32_mmu_host.c_kvmppc_sid_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@SID_MAP_BITS = common dso_local global i32 0, align 4
@SID_MAP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32)* @kvmppc_sid_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_sid_hash(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @SID_MAP_BITS, align 4
  %7 = mul nsw i32 %6, 7
  %8 = ashr i32 %5, %7
  %9 = load i32, i32* @SID_MAP_MASK, align 4
  %10 = and i32 %8, %9
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @SID_MAP_BITS, align 4
  %13 = mul nsw i32 %12, 6
  %14 = ashr i32 %11, %13
  %15 = load i32, i32* @SID_MAP_MASK, align 4
  %16 = and i32 %14, %15
  %17 = xor i32 %10, %16
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @SID_MAP_BITS, align 4
  %20 = mul nsw i32 %19, 5
  %21 = ashr i32 %18, %20
  %22 = load i32, i32* @SID_MAP_MASK, align 4
  %23 = and i32 %21, %22
  %24 = xor i32 %17, %23
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @SID_MAP_BITS, align 4
  %27 = mul nsw i32 %26, 4
  %28 = ashr i32 %25, %27
  %29 = load i32, i32* @SID_MAP_MASK, align 4
  %30 = and i32 %28, %29
  %31 = xor i32 %24, %30
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @SID_MAP_BITS, align 4
  %34 = mul nsw i32 %33, 3
  %35 = ashr i32 %32, %34
  %36 = load i32, i32* @SID_MAP_MASK, align 4
  %37 = and i32 %35, %36
  %38 = xor i32 %31, %37
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @SID_MAP_BITS, align 4
  %41 = mul nsw i32 %40, 2
  %42 = ashr i32 %39, %41
  %43 = load i32, i32* @SID_MAP_MASK, align 4
  %44 = and i32 %42, %43
  %45 = xor i32 %38, %44
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @SID_MAP_BITS, align 4
  %48 = mul nsw i32 %47, 1
  %49 = ashr i32 %46, %48
  %50 = load i32, i32* @SID_MAP_MASK, align 4
  %51 = and i32 %49, %50
  %52 = xor i32 %45, %51
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @SID_MAP_BITS, align 4
  %55 = mul nsw i32 %54, 0
  %56 = ashr i32 %53, %55
  %57 = load i32, i32* @SID_MAP_MASK, align 4
  %58 = and i32 %56, %57
  %59 = xor i32 %52, %58
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
