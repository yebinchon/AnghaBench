; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sibyte/swarm/extr_rtc_xicor1241.c_xicor_write.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sibyte/swarm/extr_rtc_xicor1241.c_xicor_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R_SMB_STATUS = common dso_local global i32 0, align 4
@M_SMB_BUSY = common dso_local global i32 0, align 4
@R_SMB_CMD = common dso_local global i32 0, align 4
@R_SMB_DATA = common dso_local global i32 0, align 4
@X1241_CCR_ADDRESS = common dso_local global i32 0, align 4
@V_SMB_TT_WR3BYTE = common dso_local global i32 0, align 4
@R_SMB_START = common dso_local global i32 0, align 4
@M_SMB_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @xicor_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xicor_write(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  br label %6

6:                                                ; preds = %13, %2
  %7 = load i32, i32* @R_SMB_STATUS, align 4
  %8 = call i32 @SMB_CSR(i32 %7)
  %9 = call i32 @__raw_readq(i32 %8)
  %10 = load i32, i32* @M_SMB_BUSY, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  br label %6

14:                                               ; preds = %6
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @R_SMB_CMD, align 4
  %17 = call i32 @SMB_CSR(i32 %16)
  %18 = call i32 @__raw_writeq(i32 %15, i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, 255
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, 255
  %23 = shl i32 %22, 8
  %24 = or i32 %20, %23
  %25 = load i32, i32* @R_SMB_DATA, align 4
  %26 = call i32 @SMB_CSR(i32 %25)
  %27 = call i32 @__raw_writeq(i32 %24, i32 %26)
  %28 = load i32, i32* @X1241_CCR_ADDRESS, align 4
  %29 = call i32 @V_SMB_ADDR(i32 %28)
  %30 = load i32, i32* @V_SMB_TT_WR3BYTE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @R_SMB_START, align 4
  %33 = call i32 @SMB_CSR(i32 %32)
  %34 = call i32 @__raw_writeq(i32 %31, i32 %33)
  br label %35

35:                                               ; preds = %42, %14
  %36 = load i32, i32* @R_SMB_STATUS, align 4
  %37 = call i32 @SMB_CSR(i32 %36)
  %38 = call i32 @__raw_readq(i32 %37)
  %39 = load i32, i32* @M_SMB_BUSY, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %35

43:                                               ; preds = %35
  %44 = load i32, i32* @R_SMB_STATUS, align 4
  %45 = call i32 @SMB_CSR(i32 %44)
  %46 = call i32 @__raw_readq(i32 %45)
  %47 = load i32, i32* @M_SMB_ERROR, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load i32, i32* @M_SMB_ERROR, align 4
  %52 = load i32, i32* @R_SMB_STATUS, align 4
  %53 = call i32 @SMB_CSR(i32 %52)
  %54 = call i32 @__raw_writeq(i32 %51, i32 %53)
  store i32 -1, i32* %3, align 4
  br label %56

55:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %50
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @__raw_readq(i32) #1

declare dso_local i32 @SMB_CSR(i32) #1

declare dso_local i32 @__raw_writeq(i32, i32) #1

declare dso_local i32 @V_SMB_ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
