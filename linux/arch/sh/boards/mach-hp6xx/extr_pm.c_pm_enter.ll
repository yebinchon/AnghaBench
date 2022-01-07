; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/boards/mach-hp6xx/extr_pm.c_pm_enter.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/boards/mach-hp6xx/extr_pm.c_pm_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WTCSR_TME = common dso_local global i32 0, align 4
@WTCSR_CKS_4096 = common dso_local global i32 0, align 4
@FRQCR = common dso_local global i32 0, align 4
@FRQCR_PLLEN = common dso_local global i32 0, align 4
@FRQCR_PSTBY = common dso_local global i32 0, align 4
@STBCR = common dso_local global i32 0, align 4
@STBCR_STBY = common dso_local global i32 0, align 4
@STBCR_MSTP2 = common dso_local global i32 0, align 4
@MCR = common dso_local global i32 0, align 4
@MCR_RFSH = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@INTR_OFFSET = common dso_local global i64 0, align 8
@wakeup_start = common dso_local global i32 0, align 4
@wakeup_end = common dso_local global i32 0, align 4
@RTCNT = common dso_local global i32 0, align 4
@MCR_RMODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pm_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm_enter() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = call i32 (...) @set_bl_bit()
  %8 = call i32 (...) @sh_wdt_read_csr()
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* @WTCSR_TME, align 4
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %2, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* @WTCSR_CKS_4096, align 4
  %14 = load i32, i32* %2, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @sh_wdt_write_csr(i32 %16)
  %18 = call i32 (...) @sh_wdt_read_csr()
  store i32 %18, i32* %2, align 4
  %19 = call i32 @sh_wdt_write_cnt(i32 0)
  %20 = load i32, i32* @FRQCR, align 4
  %21 = call i32 @__raw_readw(i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* @FRQCR_PLLEN, align 4
  %23 = load i32, i32* @FRQCR_PSTBY, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @FRQCR, align 4
  %30 = call i32 @__raw_writew(i32 %28, i32 %29)
  %31 = load i32, i32* @STBCR, align 4
  %32 = call i32 @__raw_readb(i32 %31)
  store i32 %32, i32* %1, align 4
  %33 = load i32, i32* %1, align 4
  %34 = load i32, i32* @STBCR_STBY, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @STBCR_MSTP2, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @STBCR, align 4
  %39 = call i32 @__raw_writeb(i32 %37, i32 %38)
  %40 = load i32, i32* @MCR, align 4
  %41 = call i32 @__raw_readw(i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @MCR_RFSH, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  %46 = load i32, i32* @MCR, align 4
  %47 = call i32 @__raw_writew(i32 %45, i32 %46)
  %48 = call i64 asm sideeffect "stc vbr, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i64 %48, i64* %6, align 8
  %49 = load i32, i32* @GFP_ATOMIC, align 4
  %50 = call i64 @get_zeroed_page(i32 %49)
  store i64 %50, i64* %5, align 8
  %51 = call i32 @udelay(i32 50)
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* @INTR_OFFSET, align 8
  %54 = add nsw i64 %52, %53
  %55 = inttoptr i64 %54 to i8*
  %56 = call i32 @memcpy(i8* %55, i32* @wakeup_start, i32 trunc (i64 sdiv exact (i64 sub (i64 ptrtoint (i32* @wakeup_end to i64), i64 ptrtoint (i32* @wakeup_start to i64)), i64 4) to i32))
  %57 = load i64, i64* %5, align 8
  call void asm sideeffect "ldc $0, vbr", "r,~{dirflag},~{fpsr},~{flags}"(i64 %57) #2, !srcloc !3
  %58 = load i32, i32* @RTCNT, align 4
  %59 = call i32 @__raw_writew(i32 0, i32 %58)
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @MCR_RFSH, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @MCR_RMODE, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @MCR, align 4
  %66 = call i32 @__raw_writew(i32 %64, i32 %65)
  %67 = call i32 (...) @cpu_sleep()
  %68 = load i64, i64* %6, align 8
  call void asm sideeffect "ldc $0, vbr", "r,~{dirflag},~{fpsr},~{flags}"(i64 %68) #2, !srcloc !4
  %69 = load i64, i64* %5, align 8
  %70 = call i32 @free_page(i64 %69)
  %71 = load i32, i32* @FRQCR, align 4
  %72 = call i32 @__raw_readw(i32 %71)
  store i32 %72, i32* %3, align 4
  %73 = load i32, i32* @FRQCR_PSTBY, align 4
  %74 = load i32, i32* %3, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* @FRQCR, align 4
  %78 = call i32 @__raw_writew(i32 %76, i32 %77)
  %79 = call i32 @udelay(i32 50)
  %80 = load i32, i32* @FRQCR_PLLEN, align 4
  %81 = load i32, i32* %3, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %3, align 4
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* @FRQCR, align 4
  %85 = call i32 @__raw_writew(i32 %83, i32 %84)
  %86 = load i32, i32* %1, align 4
  %87 = load i32, i32* @STBCR, align 4
  %88 = call i32 @__raw_writeb(i32 %86, i32 %87)
  %89 = call i32 (...) @clear_bl_bit()
  ret void
}

declare dso_local i32 @set_bl_bit(...) #1

declare dso_local i32 @sh_wdt_read_csr(...) #1

declare dso_local i32 @sh_wdt_write_csr(i32) #1

declare dso_local i32 @sh_wdt_write_cnt(i32) #1

declare dso_local i32 @__raw_readw(i32) #1

declare dso_local i32 @__raw_writew(i32, i32) #1

declare dso_local i32 @__raw_readb(i32) #1

declare dso_local i32 @__raw_writeb(i32, i32) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @cpu_sleep(...) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @clear_bl_bit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1399}
!3 = !{i32 1592}
!4 = !{i32 1730}
