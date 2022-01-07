; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_radix_tlb.c_fixup_tlbie_va.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_radix_tlb.c_fixup_tlbie_va.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_FTR_P9_TLBIE_ERAT_BUG = common dso_local global i32 0, align 4
@RIC_FLUSH_TLB = common dso_local global i32 0, align 4
@CPU_FTR_P9_TLBIE_STQ_BUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64)* @fixup_tlbie_va to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fixup_tlbie_va(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* @CPU_FTR_P9_TLBIE_ERAT_BUG, align 4
  %8 = call i64 @cpu_has_feature(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  call void asm sideeffect "ptesync", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i32, i32* @RIC_FLUSH_TLB, align 4
  %14 = call i32 @__tlbie_va(i64 %11, i64 0, i64 %12, i32 %13)
  br label %15

15:                                               ; preds = %10, %3
  %16 = load i32, i32* @CPU_FTR_P9_TLBIE_STQ_BUG, align 4
  %17 = call i64 @cpu_has_feature(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  call void asm sideeffect "ptesync", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i32, i32* @RIC_FLUSH_TLB, align 4
  %24 = call i32 @__tlbie_va(i64 %20, i64 %21, i64 %22, i32 %23)
  br label %25

25:                                               ; preds = %19, %15
  ret void
}

declare dso_local i64 @cpu_has_feature(i32) #1

declare dso_local i32 @__tlbie_va(i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 509}
!3 = !{i32 643}
