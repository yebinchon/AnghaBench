; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_radix_tlb.c_fixup_tlbie_lpid.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_radix_tlb.c_fixup_tlbie_lpid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_FTR_P9_TLBIE_ERAT_BUG = common dso_local global i32 0, align 4
@RIC_FLUSH_TLB = common dso_local global i32 0, align 4
@CPU_FTR_P9_TLBIE_STQ_BUG = common dso_local global i32 0, align 4
@MMU_PAGE_64K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @fixup_tlbie_lpid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fixup_tlbie_lpid(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  store i64 4503599627370495, i64* %3, align 8
  %4 = load i32, i32* @CPU_FTR_P9_TLBIE_ERAT_BUG, align 4
  %5 = call i64 @cpu_has_feature(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  call void asm sideeffect "ptesync", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %8 = load i32, i32* @RIC_FLUSH_TLB, align 4
  %9 = call i32 @__tlbie_lpid(i32 0, i32 %8)
  br label %10

10:                                               ; preds = %7, %1
  %11 = load i32, i32* @CPU_FTR_P9_TLBIE_STQ_BUG, align 4
  %12 = call i64 @cpu_has_feature(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  call void asm sideeffect "ptesync", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* %2, align 8
  %17 = load i32, i32* @MMU_PAGE_64K, align 4
  %18 = call i32 @mmu_get_ap(i32 %17)
  %19 = load i32, i32* @RIC_FLUSH_TLB, align 4
  %20 = call i32 @__tlbie_lpid_va(i64 %15, i64 %16, i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %14, %10
  ret void
}

declare dso_local i64 @cpu_has_feature(i32) #1

declare dso_local i32 @__tlbie_lpid(i32, i32) #1

declare dso_local i32 @__tlbie_lpid_va(i64, i64, i32, i32) #1

declare dso_local i32 @mmu_get_ap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 587}
!3 = !{i32 715}
