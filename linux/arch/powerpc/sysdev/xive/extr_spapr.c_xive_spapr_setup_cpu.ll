; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_spapr.c_xive_spapr_setup_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_spapr.c_xive_spapr_setup_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xive_cpu = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"(HW value: %08x %08x %08x)\0A\00", align 1
@xive_tima = common dso_local global i64 0, align 8
@TM_QW1_OS = common dso_local global i64 0, align 8
@TM_WORD0 = common dso_local global i64 0, align 8
@TM_WORD1 = common dso_local global i64 0, align 8
@TM_WORD2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.xive_cpu*)* @xive_spapr_setup_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xive_spapr_setup_cpu(i32 %0, %struct.xive_cpu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xive_cpu*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.xive_cpu* %1, %struct.xive_cpu** %4, align 8
  %5 = load i64, i64* @xive_tima, align 8
  %6 = load i64, i64* @TM_QW1_OS, align 8
  %7 = add nsw i64 %5, %6
  %8 = load i64, i64* @TM_WORD0, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @in_be32(i64 %9)
  %11 = load i64, i64* @xive_tima, align 8
  %12 = load i64, i64* @TM_QW1_OS, align 8
  %13 = add nsw i64 %11, %12
  %14 = load i64, i64* @TM_WORD1, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @in_be32(i64 %15)
  %17 = load i64, i64* @xive_tima, align 8
  %18 = load i64, i64* @TM_QW1_OS, align 8
  %19 = add nsw i64 %17, %18
  %20 = load i64, i64* @TM_WORD2, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @in_be32(i64 %21)
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %16, i32 %22)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @in_be32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
