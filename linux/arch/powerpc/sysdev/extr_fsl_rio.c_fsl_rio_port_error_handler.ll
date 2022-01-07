; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_rio.c_fsl_rio_port_error_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_rio.c_fsl_rio_port_error_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rio_regs_win = common dso_local global i64 0, align 8
@RIO_LTLEDCSR = common dso_local global i64 0, align 8
@RIO_PORT1_EDCSR = common dso_local global i64 0, align 8
@RIO_PORT1_IECSR = common dso_local global i64 0, align 8
@IECSR_CLEAR = common dso_local global i32 0, align 4
@RIO_ESCSR = common dso_local global i64 0, align 8
@ESCSR_CLEAR = common dso_local global i32 0, align 4
@RIO_PORT2_EDCSR = common dso_local global i64 0, align 8
@RIO_PORT2_IECSR = common dso_local global i64 0, align 8
@RIO_PORT2_ESCSR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsl_rio_port_error_handler(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* @rio_regs_win, align 8
  %4 = load i64, i64* @RIO_LTLEDCSR, align 8
  %5 = add nsw i64 %3, %4
  %6 = inttoptr i64 %5 to i32*
  %7 = call i32 @out_be32(i32* %6, i32 0)
  %8 = load i32, i32* %2, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %1
  %11 = load i64, i64* @rio_regs_win, align 8
  %12 = load i64, i64* @RIO_PORT1_EDCSR, align 8
  %13 = add nsw i64 %11, %12
  %14 = inttoptr i64 %13 to i32*
  %15 = call i32 @out_be32(i32* %14, i32 0)
  %16 = load i64, i64* @rio_regs_win, align 8
  %17 = load i64, i64* @RIO_PORT1_IECSR, align 8
  %18 = add nsw i64 %16, %17
  %19 = inttoptr i64 %18 to i32*
  %20 = load i32, i32* @IECSR_CLEAR, align 4
  %21 = call i32 @out_be32(i32* %19, i32 %20)
  %22 = load i64, i64* @rio_regs_win, align 8
  %23 = load i64, i64* @RIO_ESCSR, align 8
  %24 = add nsw i64 %22, %23
  %25 = inttoptr i64 %24 to i32*
  %26 = load i32, i32* @ESCSR_CLEAR, align 4
  %27 = call i32 @out_be32(i32* %25, i32 %26)
  br label %46

28:                                               ; preds = %1
  %29 = load i64, i64* @rio_regs_win, align 8
  %30 = load i64, i64* @RIO_PORT2_EDCSR, align 8
  %31 = add nsw i64 %29, %30
  %32 = inttoptr i64 %31 to i32*
  %33 = call i32 @out_be32(i32* %32, i32 0)
  %34 = load i64, i64* @rio_regs_win, align 8
  %35 = load i64, i64* @RIO_PORT2_IECSR, align 8
  %36 = add nsw i64 %34, %35
  %37 = inttoptr i64 %36 to i32*
  %38 = load i32, i32* @IECSR_CLEAR, align 4
  %39 = call i32 @out_be32(i32* %37, i32 %38)
  %40 = load i64, i64* @rio_regs_win, align 8
  %41 = load i64, i64* @RIO_PORT2_ESCSR, align 8
  %42 = add nsw i64 %40, %41
  %43 = inttoptr i64 %42 to i32*
  %44 = load i32, i32* @ESCSR_CLEAR, align 4
  %45 = call i32 @out_be32(i32* %43, i32 %44)
  br label %46

46:                                               ; preds = %28, %10
  ret void
}

declare dso_local i32 @out_be32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
