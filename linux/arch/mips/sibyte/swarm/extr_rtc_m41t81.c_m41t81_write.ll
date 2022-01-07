; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sibyte/swarm/extr_rtc_m41t81.c_m41t81_write.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sibyte/swarm/extr_rtc_m41t81.c_m41t81_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R_SMB_STATUS = common dso_local global i32 0, align 4
@M_SMB_BUSY = common dso_local global i32 0, align 4
@R_SMB_CMD = common dso_local global i32 0, align 4
@R_SMB_DATA = common dso_local global i32 0, align 4
@M41T81_CCR_ADDRESS = common dso_local global i32 0, align 4
@V_SMB_TT_WR2BYTE = common dso_local global i32 0, align 4
@R_SMB_START = common dso_local global i32 0, align 4
@M_SMB_ERROR = common dso_local global i32 0, align 4
@V_SMB_TT_RD1BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @m41t81_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m41t81_write(i32 %0, i32 %1) #0 {
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
  %16 = and i32 %15, 255
  %17 = load i32, i32* @R_SMB_CMD, align 4
  %18 = call i32 @SMB_CSR(i32 %17)
  %19 = call i32 @__raw_writeq(i32 %16, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, 255
  %22 = load i32, i32* @R_SMB_DATA, align 4
  %23 = call i32 @SMB_CSR(i32 %22)
  %24 = call i32 @__raw_writeq(i32 %21, i32 %23)
  %25 = load i32, i32* @M41T81_CCR_ADDRESS, align 4
  %26 = call i32 @V_SMB_ADDR(i32 %25)
  %27 = load i32, i32* @V_SMB_TT_WR2BYTE, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @R_SMB_START, align 4
  %30 = call i32 @SMB_CSR(i32 %29)
  %31 = call i32 @__raw_writeq(i32 %28, i32 %30)
  br label %32

32:                                               ; preds = %39, %14
  %33 = load i32, i32* @R_SMB_STATUS, align 4
  %34 = call i32 @SMB_CSR(i32 %33)
  %35 = call i32 @__raw_readq(i32 %34)
  %36 = load i32, i32* @M_SMB_BUSY, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %32

40:                                               ; preds = %32
  %41 = load i32, i32* @R_SMB_STATUS, align 4
  %42 = call i32 @SMB_CSR(i32 %41)
  %43 = call i32 @__raw_readq(i32 %42)
  %44 = load i32, i32* @M_SMB_ERROR, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load i32, i32* @M_SMB_ERROR, align 4
  %49 = load i32, i32* @R_SMB_STATUS, align 4
  %50 = call i32 @SMB_CSR(i32 %49)
  %51 = call i32 @__raw_writeq(i32 %48, i32 %50)
  store i32 -1, i32* %3, align 4
  br label %69

52:                                               ; preds = %40
  %53 = load i32, i32* @M41T81_CCR_ADDRESS, align 4
  %54 = call i32 @V_SMB_ADDR(i32 %53)
  %55 = load i32, i32* @V_SMB_TT_RD1BYTE, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @R_SMB_START, align 4
  %58 = call i32 @SMB_CSR(i32 %57)
  %59 = call i32 @__raw_writeq(i32 %56, i32 %58)
  br label %60

60:                                               ; preds = %67, %52
  %61 = load i32, i32* @R_SMB_STATUS, align 4
  %62 = call i32 @SMB_CSR(i32 %61)
  %63 = call i32 @__raw_readq(i32 %62)
  %64 = load i32, i32* @M_SMB_BUSY, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %60

68:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %47
  %70 = load i32, i32* %3, align 4
  ret i32 %70
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
