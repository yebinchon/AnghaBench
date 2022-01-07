; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_utils.c_hpte_insert_repeating.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_utils.c_hpte_insert_repeating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i64, i64, i64, i64, i64, i32, i32, i32)*, i32 (i64)* }

@htab_hash_mask = common dso_local global i64 0, align 8
@HPTES_PER_GROUP = common dso_local global i64 0, align 8
@mmu_hash_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@HPTE_V_SECONDARY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hpte_insert_repeating(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  br label %17

17:                                               ; preds = %69, %7
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @htab_hash_mask, align 8
  %20 = and i64 %18, %19
  %21 = load i64, i64* @HPTES_PER_GROUP, align 8
  %22 = mul i64 %20, %21
  store i64 %22, i64* %15, align 8
  %23 = load i64 (i64, i64, i64, i64, i64, i32, i32, i32)*, i64 (i64, i64, i64, i64, i64, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mmu_hash_ops, i32 0, i32 0), align 8
  %24 = load i64, i64* %15, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* %12, align 8
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %14, align 4
  %32 = call i64 %23(i64 %24, i64 %25, i64 %26, i64 %27, i64 %28, i32 %29, i32 %30, i32 %31)
  store i64 %32, i64* %16, align 8
  %33 = load i64, i64* %16, align 8
  %34 = icmp eq i64 %33, -1
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %74

38:                                               ; preds = %17
  %39 = load i64, i64* %8, align 8
  %40 = xor i64 %39, -1
  %41 = load i64, i64* @htab_hash_mask, align 8
  %42 = and i64 %40, %41
  %43 = load i64, i64* @HPTES_PER_GROUP, align 8
  %44 = mul i64 %42, %43
  store i64 %44, i64* %15, align 8
  %45 = load i64 (i64, i64, i64, i64, i64, i32, i32, i32)*, i64 (i64, i64, i64, i64, i64, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mmu_hash_ops, i32 0, i32 0), align 8
  %46 = load i64, i64* %15, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* @HPTE_V_SECONDARY, align 8
  %52 = or i64 %50, %51
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %14, align 4
  %56 = call i64 %45(i64 %46, i64 %47, i64 %48, i64 %49, i64 %52, i32 %53, i32 %54, i32 %55)
  store i64 %56, i64* %16, align 8
  %57 = load i64, i64* %16, align 8
  %58 = icmp eq i64 %57, -1
  br i1 %58, label %59, label %73

59:                                               ; preds = %38
  %60 = call i32 (...) @mftb()
  %61 = and i32 %60, 1
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* @htab_hash_mask, align 8
  %66 = and i64 %64, %65
  %67 = load i64, i64* @HPTES_PER_GROUP, align 8
  %68 = mul i64 %66, %67
  store i64 %68, i64* %15, align 8
  br label %69

69:                                               ; preds = %63, %59
  %70 = load i32 (i64)*, i32 (i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mmu_hash_ops, i32 0, i32 1), align 8
  %71 = load i64, i64* %15, align 8
  %72 = call i32 %70(i64 %71)
  br label %17

73:                                               ; preds = %38
  br label %74

74:                                               ; preds = %73, %17
  %75 = load i64, i64* %16, align 8
  ret i64 %75
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mftb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
