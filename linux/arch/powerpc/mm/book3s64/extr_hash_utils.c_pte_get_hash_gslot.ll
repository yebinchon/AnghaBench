; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_utils.c_pte_get_hash_gslot.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_utils.c_pte_get_hash_gslot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_PTEIDX_SECONDARY = common dso_local global i64 0, align 8
@htab_hash_mask = common dso_local global i64 0, align 8
@HPTES_PER_GROUP = common dso_local global i64 0, align 8
@_PTEIDX_GROUP_IX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pte_get_hash_gslot(i64 %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i64 @hpt_hash(i64 %14, i64 %15, i32 %16)
  store i64 %17, i64* %11, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i64 @__rpte_to_hidx(i32 %18, i32 %19)
  store i64 %20, i64* %13, align 8
  %21 = load i64, i64* %13, align 8
  %22 = load i64, i64* @_PTEIDX_SECONDARY, align 8
  %23 = and i64 %21, %22
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load i64, i64* %11, align 8
  %27 = xor i64 %26, -1
  store i64 %27, i64* %11, align 8
  br label %28

28:                                               ; preds = %25, %5
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* @htab_hash_mask, align 8
  %31 = and i64 %29, %30
  %32 = load i64, i64* @HPTES_PER_GROUP, align 8
  %33 = mul i64 %31, %32
  store i64 %33, i64* %12, align 8
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* @_PTEIDX_GROUP_IX, align 8
  %36 = and i64 %34, %35
  %37 = load i64, i64* %12, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %12, align 8
  ret i64 %39
}

declare dso_local i64 @hpt_hash(i64, i64, i32) #1

declare dso_local i64 @__rpte_to_hidx(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
