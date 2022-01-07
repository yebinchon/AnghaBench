; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/kasan/extr_kasan_init_32.c_kasan_prot_ro.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/kasan/extr_kasan_init_32.c_kasan_prot_ro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MMU_FTR_HPTE_TABLE = common dso_local global i32 0, align 4
@PAGE_READONLY = common dso_local global i32 0, align 4
@PAGE_KERNEL_RO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @kasan_prot_ro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kasan_prot_ro() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @MMU_FTR_HPTE_TABLE, align 4
  %3 = call i64 @early_mmu_has_feature(i32 %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = load i32, i32* @PAGE_READONLY, align 4
  store i32 %6, i32* %1, align 4
  br label %9

7:                                                ; preds = %0
  %8 = load i32, i32* @PAGE_KERNEL_RO, align 4
  store i32 %8, i32* %1, align 4
  br label %9

9:                                                ; preds = %7, %5
  %10 = load i32, i32* %1, align 4
  ret i32 %10
}

declare dso_local i64 @early_mmu_has_feature(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
