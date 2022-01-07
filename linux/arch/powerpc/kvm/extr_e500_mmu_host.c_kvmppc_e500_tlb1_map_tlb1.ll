; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500_mmu_host.c_kvmppc_e500_tlb1_map_tlb1.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500_mmu_host.c_kvmppc_e500_tlb1_map_tlb1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_vcpu_e500 = type { i64, i32*, i64*, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.tlbe_ref = type { i32 }

@E500_TLB_BITMAP = common dso_local global i32 0, align 4
@E500_TLB_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvmppc_vcpu_e500*, %struct.tlbe_ref*, i32)* @kvmppc_e500_tlb1_map_tlb1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_e500_tlb1_map_tlb1(%struct.kvmppc_vcpu_e500* %0, %struct.tlbe_ref* %1, i32 %2) #0 {
  %4 = alloca %struct.kvmppc_vcpu_e500*, align 8
  %5 = alloca %struct.tlbe_ref*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kvmppc_vcpu_e500* %0, %struct.kvmppc_vcpu_e500** %4, align 8
  store %struct.tlbe_ref* %1, %struct.tlbe_ref** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %4, align 8
  %10 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, 1
  store i64 %12, i64* %10, align 8
  %13 = trunc i64 %11 to i32
  store i32 %13, i32* %7, align 4
  %14 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %4, align 8
  %15 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i64 (...) @tlb1_max_shadow_size()
  %18 = icmp sge i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %4, align 8
  %24 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %22, %3
  %26 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %4, align 8
  %27 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %25
  %35 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %4, align 8
  %36 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %7, align 4
  %44 = zext i32 %43 to i64
  %45 = shl i64 1, %44
  %46 = xor i64 %45, -1
  %47 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %4, align 8
  %48 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %47, i32 0, i32 2
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = and i64 %53, %46
  store i64 %54, i64* %52, align 8
  br label %55

55:                                               ; preds = %34, %25
  %56 = load i32, i32* @E500_TLB_BITMAP, align 4
  %57 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %4, align 8
  %58 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %57, i32 0, i32 3
  %59 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %59, i64 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %56
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* %7, align 4
  %70 = shl i32 1, %69
  %71 = zext i32 %70 to i64
  %72 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %4, align 8
  %73 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %72, i32 0, i32 2
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = or i64 %78, %71
  store i64 %79, i64* %77, align 8
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  %82 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %4, align 8
  %83 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %81, i32* %87, align 4
  %88 = load %struct.tlbe_ref*, %struct.tlbe_ref** %5, align 8
  %89 = getelementptr inbounds %struct.tlbe_ref, %struct.tlbe_ref* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @E500_TLB_VALID, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = call i32 @WARN_ON(i32 %95)
  %97 = load i32, i32* %7, align 4
  ret i32 %97
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @tlb1_max_shadow_size(...) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
