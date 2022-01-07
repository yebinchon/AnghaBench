; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_rmu.c_msg_unit_error_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_rmu.c_msg_unit_error_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@rio_regs_win = common dso_local global i64 0, align 8
@RIO_LTLEDCSR = common dso_local global i64 0, align 8
@rmu_regs_win = common dso_local global i64 0, align 8
@RIO_IM0SR = common dso_local global i64 0, align 8
@IMSR_CLEAR = common dso_local global i32 0, align 4
@RIO_IM1SR = common dso_local global i64 0, align 8
@RIO_OM0SR = common dso_local global i64 0, align 8
@OMSR_CLEAR = common dso_local global i32 0, align 4
@RIO_OM1SR = common dso_local global i64 0, align 8
@dbell = common dso_local global %struct.TYPE_8__* null, align 8
@ODSR_CLEAR = common dso_local global i32 0, align 4
@IDSR_CLEAR = common dso_local global i32 0, align 4
@pw = common dso_local global %struct.TYPE_7__* null, align 8
@IPWSR_CLEAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msg_unit_error_handler() #0 {
  %1 = load i64, i64* @rio_regs_win, align 8
  %2 = load i64, i64* @RIO_LTLEDCSR, align 8
  %3 = add nsw i64 %1, %2
  %4 = inttoptr i64 %3 to i32*
  %5 = call i32 @out_be32(i32* %4, i32 0)
  %6 = load i64, i64* @rmu_regs_win, align 8
  %7 = load i64, i64* @RIO_IM0SR, align 8
  %8 = add nsw i64 %6, %7
  %9 = inttoptr i64 %8 to i32*
  %10 = load i32, i32* @IMSR_CLEAR, align 4
  %11 = call i32 @out_be32(i32* %9, i32 %10)
  %12 = load i64, i64* @rmu_regs_win, align 8
  %13 = load i64, i64* @RIO_IM1SR, align 8
  %14 = add nsw i64 %12, %13
  %15 = inttoptr i64 %14 to i32*
  %16 = load i32, i32* @IMSR_CLEAR, align 4
  %17 = call i32 @out_be32(i32* %15, i32 %16)
  %18 = load i64, i64* @rmu_regs_win, align 8
  %19 = load i64, i64* @RIO_OM0SR, align 8
  %20 = add nsw i64 %18, %19
  %21 = inttoptr i64 %20 to i32*
  %22 = load i32, i32* @OMSR_CLEAR, align 4
  %23 = call i32 @out_be32(i32* %21, i32 %22)
  %24 = load i64, i64* @rmu_regs_win, align 8
  %25 = load i64, i64* @RIO_OM1SR, align 8
  %26 = add nsw i64 %24, %25
  %27 = inttoptr i64 %26 to i32*
  %28 = load i32, i32* @OMSR_CLEAR, align 4
  %29 = call i32 @out_be32(i32* %27, i32 %28)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** @dbell, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* @ODSR_CLEAR, align 4
  %35 = call i32 @out_be32(i32* %33, i32 %34)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** @dbell, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* @IDSR_CLEAR, align 4
  %41 = call i32 @out_be32(i32* %39, i32 %40)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pw, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* @IPWSR_CLEAR, align 4
  %47 = call i32 @out_be32(i32* %45, i32 %46)
  ret void
}

declare dso_local i32 @out_be32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
