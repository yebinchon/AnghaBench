; ModuleID = '/home/carl/AnghaBench/linux/arch/nios2/kernel/extr_time.c_nios2_timer_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nios2/kernel/extr_time.c_nios2_timer_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nios2_timer = type { i32 }

@ALTERA_TIMER_CONTROL_REG = common dso_local global i32 0, align 4
@ALTERA_TIMER_CONTROL_STOP_MSK = common dso_local global i64 0, align 8
@ALTERA_TIMER_PERIODL_REG = common dso_local global i32 0, align 4
@ALTERA_TIMER_PERIODH_REG = common dso_local global i32 0, align 4
@ALTERA_TIMER_CONTROL_START_MSK = common dso_local global i64 0, align 8
@ALTERA_TIMER_CONTROL_ITO_MSK = common dso_local global i64 0, align 8
@ALTERA_TIMER_CONTROL_CONT_MSK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nios2_timer*, i64, i32)* @nios2_timer_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nios2_timer_config(%struct.nios2_timer* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.nios2_timer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.nios2_timer* %0, %struct.nios2_timer** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* %5, align 8
  %9 = add i64 %8, -1
  store i64 %9, i64* %5, align 8
  %10 = load %struct.nios2_timer*, %struct.nios2_timer** %4, align 8
  %11 = load i32, i32* @ALTERA_TIMER_CONTROL_REG, align 4
  %12 = call i64 @timer_readw(%struct.nios2_timer* %10, i32 %11)
  store i64 %12, i64* %7, align 8
  %13 = load %struct.nios2_timer*, %struct.nios2_timer** %4, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @ALTERA_TIMER_CONTROL_STOP_MSK, align 8
  %16 = or i64 %14, %15
  %17 = load i32, i32* @ALTERA_TIMER_CONTROL_REG, align 4
  %18 = call i32 @timer_writew(%struct.nios2_timer* %13, i64 %16, i32 %17)
  %19 = load %struct.nios2_timer*, %struct.nios2_timer** %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i32, i32* @ALTERA_TIMER_PERIODL_REG, align 4
  %22 = call i32 @timer_writew(%struct.nios2_timer* %19, i64 %20, i32 %21)
  %23 = load %struct.nios2_timer*, %struct.nios2_timer** %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = lshr i64 %24, 16
  %26 = load i32, i32* @ALTERA_TIMER_PERIODH_REG, align 4
  %27 = call i32 @timer_writew(%struct.nios2_timer* %23, i64 %25, i32 %26)
  %28 = load i64, i64* @ALTERA_TIMER_CONTROL_START_MSK, align 8
  %29 = load i64, i64* @ALTERA_TIMER_CONTROL_ITO_MSK, align 8
  %30 = or i64 %28, %29
  %31 = load i64, i64* %7, align 8
  %32 = or i64 %31, %30
  store i64 %32, i64* %7, align 8
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %3
  %36 = load i64, i64* @ALTERA_TIMER_CONTROL_CONT_MSK, align 8
  %37 = load i64, i64* %7, align 8
  %38 = or i64 %37, %36
  store i64 %38, i64* %7, align 8
  br label %44

39:                                               ; preds = %3
  %40 = load i64, i64* @ALTERA_TIMER_CONTROL_CONT_MSK, align 8
  %41 = xor i64 %40, -1
  %42 = load i64, i64* %7, align 8
  %43 = and i64 %42, %41
  store i64 %43, i64* %7, align 8
  br label %44

44:                                               ; preds = %39, %35
  %45 = load %struct.nios2_timer*, %struct.nios2_timer** %4, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i32, i32* @ALTERA_TIMER_CONTROL_REG, align 4
  %48 = call i32 @timer_writew(%struct.nios2_timer* %45, i64 %46, i32 %47)
  ret void
}

declare dso_local i64 @timer_readw(%struct.nios2_timer*, i32) #1

declare dso_local i32 @timer_writew(%struct.nios2_timer*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
