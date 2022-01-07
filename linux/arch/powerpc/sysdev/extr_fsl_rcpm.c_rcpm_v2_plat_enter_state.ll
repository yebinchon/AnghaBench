; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_rcpm.c_rcpm_v2_plat_enter_state.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_rcpm.c_rcpm_v2_plat_enter_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@rcpm_v2_regs = common dso_local global %struct.TYPE_2__* null, align 8
@RCPM_POWMGTCSR_P_LPM20_ST = common dso_local global i32 0, align 4
@RCPM_POWMGTCSR_LPM20_RQ = common dso_local global i32 0, align 4
@RCPM_POWMGTCSR_LPM20_ST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"timeout waiting for LPM20 bit to be cleared\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Unknown platform PM state (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rcpm_v2_plat_enter_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcpm_v2_plat_enter_state(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rcpm_v2_regs, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store i32* %7, i32** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load i32, i32* %2, align 4
  switch i32 %8, label %31 [
    i32 128, label %9
  ]

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* @RCPM_POWMGTCSR_P_LPM20_ST, align 4
  %12 = call i32 @setbits32(i32* %10, i32 %11)
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @RCPM_POWMGTCSR_LPM20_RQ, align 4
  %15 = call i32 @setbits32(i32* %13, i32 %14)
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @in_be32(i32* %16)
  %18 = load i32, i32* @RCPM_POWMGTCSR_LPM20_ST, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @spin_event_timeout(i32 %22, i32 10000, i32 10)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %9
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ETIMEDOUT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %26, %9
  br label %36

31:                                               ; preds = %1
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @pr_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %31, %30
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @setbits32(i32*, i32) #1

declare dso_local i32 @spin_event_timeout(i32, i32, i32) #1

declare dso_local i32 @in_be32(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
