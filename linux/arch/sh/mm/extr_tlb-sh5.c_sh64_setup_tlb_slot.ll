; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/mm/extr_tlb-sh5.c_sh64_setup_tlb_slot.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/mm/extr_tlb-sh5.c_sh64_setup_tlb_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_MASK = common dso_local global i64 0, align 8
@PTEH_ASID_SHIFT = common dso_local global i64 0, align 8
@PTEH_VALID = common dso_local global i64 0, align 8
@_PAGE_CACHABLE = common dso_local global i64 0, align 8
@_PAGE_READ = common dso_local global i64 0, align 8
@_PAGE_WRITE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sh64_setup_tlb_slot(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i64 @neff_sign_extend(i64 %11)
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* @PAGE_MASK, align 8
  %14 = load i64, i64* %9, align 8
  %15 = and i64 %14, %13
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @PTEH_ASID_SHIFT, align 8
  %18 = shl i64 %16, %17
  %19 = load i64, i64* @PTEH_VALID, align 8
  %20 = or i64 %18, %19
  %21 = load i64, i64* %9, align 8
  %22 = or i64 %21, %20
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i64 @neff_sign_extend(i64 %23)
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* @PAGE_MASK, align 8
  %26 = load i64, i64* %10, align 8
  %27 = and i64 %26, %25
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* @_PAGE_CACHABLE, align 8
  %29 = load i64, i64* @_PAGE_READ, align 8
  %30 = or i64 %28, %29
  %31 = load i64, i64* @_PAGE_WRITE, align 8
  %32 = or i64 %30, %31
  %33 = load i64, i64* %10, align 8
  %34 = or i64 %33, %32
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %9, align 8
  call void asm sideeffect "putcfg $0, 1, $1\0A\09putcfg $0, 0, $2\0A", "r,r,r,~{dirflag},~{fpsr},~{flags}"(i64 %35, i64 %36, i64 %37) #2, !srcloc !2
  ret void
}

declare dso_local i64 @neff_sign_extend(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 768, i32 787}
