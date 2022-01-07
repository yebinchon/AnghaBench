; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/math-emu/extr_sp_fdp.c_ieee754sp_nan_fdp.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/math-emu/extr_sp_fdp.c_ieee754sp_nan_fdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ieee754sp = type { i32 }

@SP_EMAX = common dso_local global i64 0, align 8
@SP_EBIAS = common dso_local global i64 0, align 8
@DP_FBITS = common dso_local global i32 0, align 4
@SP_FBITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ieee754sp_nan_fdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee754sp_nan_fdp(i32 %0, i32 %1) #0 {
  %3 = alloca %union.ieee754sp, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i64, i64* @SP_EMAX, align 8
  %8 = add nsw i64 %7, 1
  %9 = load i64, i64* @SP_EBIAS, align 8
  %10 = add nsw i64 %8, %9
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @DP_FBITS, align 4
  %13 = load i32, i32* @SP_FBITS, align 4
  %14 = sub nsw i32 %12, %13
  %15 = ashr i32 %11, %14
  %16 = call i32 @buildsp(i32 %6, i64 %10, i32 %15)
  %17 = getelementptr inbounds %union.ieee754sp, %union.ieee754sp* %3, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %union.ieee754sp, %union.ieee754sp* %3, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  ret i32 %19
}

declare dso_local i32 @buildsp(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
