; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_tlbex.c_setup_pw.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_tlbex.c_setup_pw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PGDIR_SHIFT = common dso_local global i32 0, align 4
@PMD_SHIFT = common dso_local global i32 0, align 4
@PGD_ORDER = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@_PAGE_GLOBAL = common dso_local global i32 0, align 4
@swapper_pg_dir = common dso_local global i64 0, align 8
@kscratch_used_mask = common dso_local global i32 0, align 4
@_PAGE_HUGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setup_pw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_pw() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = load i32, i32* @PGDIR_SHIFT, align 4
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %1, align 8
  %11 = load i32, i32* @PGDIR_SHIFT, align 4
  %12 = load i32, i32* @PMD_SHIFT, align 4
  %13 = sub nsw i32 %11, %12
  %14 = load i32, i32* @PGD_ORDER, align 4
  %15 = add nsw i32 %13, %14
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %2, align 8
  %17 = load i32, i32* @PMD_SHIFT, align 4
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %3, align 8
  %19 = load i32, i32* @PMD_SHIFT, align 4
  %20 = load i32, i32* @PAGE_SHIFT, align 4
  %21 = sub nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %4, align 8
  %23 = load i32, i32* @PAGE_SHIFT, align 4
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %5, align 8
  %25 = load i32, i32* @PAGE_SHIFT, align 4
  %26 = sub nsw i32 %25, 3
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %6, align 8
  %28 = load i32, i32* @_PAGE_GLOBAL, align 4
  %29 = call i64 @ilog2(i32 %28)
  store i64 %29, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %30 = load i64, i64* %1, align 8
  %31 = shl i64 %30, 24
  %32 = load i64, i64* %3, align 8
  %33 = shl i64 %32, 12
  %34 = or i64 %31, %33
  %35 = load i64, i64* %5, align 8
  %36 = shl i64 %35, 6
  %37 = or i64 %34, %36
  %38 = load i64, i64* %7, align 8
  %39 = or i64 %37, %38
  %40 = call i32 @write_c0_pwfield(i64 %39)
  %41 = load i64, i64* %2, align 8
  %42 = shl i64 %41, 24
  %43 = or i64 1073741824, %42
  %44 = load i64, i64* %4, align 8
  %45 = shl i64 %44, 12
  %46 = or i64 %43, %45
  %47 = load i64, i64* %6, align 8
  %48 = shl i64 %47, 6
  %49 = or i64 %46, %48
  %50 = load i64, i64* %8, align 8
  %51 = or i64 %49, %50
  %52 = trunc i64 %51 to i32
  %53 = call i32 @write_c0_pwsize(i32 %52)
  %54 = load i64, i64* @swapper_pg_dir, align 8
  %55 = call i32 @write_c0_kpgd(i64 %54)
  %56 = load i32, i32* @kscratch_used_mask, align 4
  %57 = or i32 %56, 128
  store i32 %57, i32* @kscratch_used_mask, align 4
  ret void
}

declare dso_local i64 @ilog2(i32) #1

declare dso_local i32 @write_c0_pwfield(i64) #1

declare dso_local i32 @write_c0_pwsize(i32) #1

declare dso_local i32 @write_c0_kpgd(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
