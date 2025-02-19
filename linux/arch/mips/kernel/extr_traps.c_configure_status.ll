; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_traps.c_configure_status.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_traps.c_configure_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ST0_CU0 = common dso_local global i32 0, align 4
@current_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@MIPS_CPU_ISA_IV = common dso_local global i32 0, align 4
@ST0_XX = common dso_local global i32 0, align 4
@cpu_has_dsp = common dso_local global i64 0, align 8
@ST0_MX = common dso_local global i32 0, align 4
@ST0_CU = common dso_local global i32 0, align 4
@ST0_RE = common dso_local global i32 0, align 4
@ST0_FR = common dso_local global i32 0, align 4
@ST0_BEV = common dso_local global i32 0, align 4
@ST0_TS = common dso_local global i32 0, align 4
@ST0_KX = common dso_local global i32 0, align 4
@ST0_SX = common dso_local global i32 0, align 4
@ST0_UX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @configure_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @configure_status() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @ST0_CU0, align 4
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_cpu_data, i32 0, i32 0), align 4
  %4 = load i32, i32* @MIPS_CPU_ISA_IV, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %0
  %8 = load i32, i32* @ST0_XX, align 4
  %9 = load i32, i32* %1, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %1, align 4
  br label %11

11:                                               ; preds = %7, %0
  %12 = load i64, i64* @cpu_has_dsp, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i32, i32* @ST0_MX, align 4
  %16 = load i32, i32* %1, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %1, align 4
  br label %18

18:                                               ; preds = %14, %11
  %19 = load i32, i32* @ST0_CU, align 4
  %20 = load i32, i32* @ST0_MX, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @ST0_RE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @ST0_FR, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @ST0_BEV, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @ST0_TS, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @ST0_KX, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @ST0_SX, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @ST0_UX, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %1, align 4
  %37 = call i32 @change_c0_status(i32 %35, i32 %36)
  ret void
}

declare dso_local i32 @change_c0_status(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
