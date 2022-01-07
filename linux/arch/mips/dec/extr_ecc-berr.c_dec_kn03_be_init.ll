; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/dec/extr_ecc-berr.c_dec_kn03_be_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/dec/extr_ecc-berr.c_dec_kn03_be_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KN03_SLOT_BASE = common dso_local global i64 0, align 8
@IOASIC_MCR = common dso_local global i64 0, align 8
@KN4K_SLOT_BASE = common dso_local global i64 0, align 8
@KN4K_MB_CSR = common dso_local global i64 0, align 8
@IOASIC_ERRADDR = common dso_local global i64 0, align 8
@kn0x_erraddr = common dso_local global i8* null, align 8
@IOASIC_CHKSYN = common dso_local global i64 0, align 8
@kn0x_chksyn = common dso_local global i8* null, align 8
@KN03_MCR_DIAGCHK = common dso_local global i32 0, align 4
@KN03_MCR_DIAGGEN = common dso_local global i32 0, align 4
@KN03_MCR_CORRECT = common dso_local global i32 0, align 4
@CPU_R4400SC = common dso_local global i64 0, align 8
@KN4K_MB_CSR_EE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dec_kn03_be_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dec_kn03_be_init() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = load i64, i64* @KN03_SLOT_BASE, align 8
  %4 = load i64, i64* @IOASIC_MCR, align 8
  %5 = add nsw i64 %3, %4
  %6 = call i64 @CKSEG1ADDR(i64 %5)
  %7 = inttoptr i64 %6 to i8*
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** %1, align 8
  %9 = load i64, i64* @KN4K_SLOT_BASE, align 8
  %10 = load i64, i64* @KN4K_MB_CSR, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i64 @CKSEG1ADDR(i64 %11)
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %2, align 8
  %15 = load i64, i64* @KN03_SLOT_BASE, align 8
  %16 = load i64, i64* @IOASIC_ERRADDR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i64 @CKSEG1ADDR(i64 %17)
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** @kn0x_erraddr, align 8
  %20 = load i64, i64* @KN03_SLOT_BASE, align 8
  %21 = load i64, i64* @IOASIC_CHKSYN, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i64 @CKSEG1ADDR(i64 %22)
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** @kn0x_chksyn, align 8
  %25 = load i32*, i32** %1, align 8
  %26 = load volatile i32, i32* %25, align 4
  %27 = load volatile i32, i32* @KN03_MCR_DIAGCHK, align 4
  %28 = load volatile i32, i32* @KN03_MCR_DIAGGEN, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = and i32 %26, %30
  %32 = load volatile i32, i32* @KN03_MCR_CORRECT, align 4
  %33 = or i32 %31, %32
  %34 = load i32*, i32** %1, align 8
  store volatile i32 %33, i32* %34, align 4
  %35 = call i64 (...) @current_cpu_type()
  %36 = load i64, i64* @CPU_R4400SC, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %0
  %39 = load volatile i32, i32* @KN4K_MB_CSR_EE, align 4
  %40 = load i32*, i32** %2, align 8
  %41 = load volatile i32, i32* %40, align 4
  %42 = or i32 %41, %39
  store volatile i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %38, %0
  %44 = call i32 (...) @fast_iob()
  ret void
}

declare dso_local i64 @CKSEG1ADDR(i64) #1

declare dso_local i64 @current_cpu_type(...) #1

declare dso_local i32 @fast_iob(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
