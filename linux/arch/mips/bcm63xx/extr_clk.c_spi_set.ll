; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/bcm63xx/extr_clk.c_spi_set.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/bcm63xx/extr_clk.c_spi_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@CKCTL_6338_SPI_EN = common dso_local global i32 0, align 4
@CKCTL_6348_SPI_EN = common dso_local global i32 0, align 4
@CKCTL_6358_SPI_EN = common dso_local global i32 0, align 4
@CKCTL_6362_SPI_EN = common dso_local global i32 0, align 4
@CKCTL_6368_SPI_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk*, i32)* @spi_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi_set(%struct.clk* %0, i32 %1) #0 {
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i64 (...) @BCMCPU_IS_6338()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @CKCTL_6338_SPI_EN, align 4
  store i32 %9, i32* %5, align 4
  br label %33

10:                                               ; preds = %2
  %11 = call i64 (...) @BCMCPU_IS_6348()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load i32, i32* @CKCTL_6348_SPI_EN, align 4
  store i32 %14, i32* %5, align 4
  br label %32

15:                                               ; preds = %10
  %16 = call i64 (...) @BCMCPU_IS_3368()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = call i64 (...) @BCMCPU_IS_6358()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18, %15
  %22 = load i32, i32* @CKCTL_6358_SPI_EN, align 4
  store i32 %22, i32* %5, align 4
  br label %31

23:                                               ; preds = %18
  %24 = call i64 (...) @BCMCPU_IS_6362()
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @CKCTL_6362_SPI_EN, align 4
  store i32 %27, i32* %5, align 4
  br label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @CKCTL_6368_SPI_EN, align 4
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %28, %26
  br label %31

31:                                               ; preds = %30, %21
  br label %32

32:                                               ; preds = %31, %13
  br label %33

33:                                               ; preds = %32, %8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @bcm_hwclock_set(i32 %34, i32 %35)
  ret void
}

declare dso_local i64 @BCMCPU_IS_6338(...) #1

declare dso_local i64 @BCMCPU_IS_6348(...) #1

declare dso_local i64 @BCMCPU_IS_3368(...) #1

declare dso_local i64 @BCMCPU_IS_6358(...) #1

declare dso_local i64 @BCMCPU_IS_6362(...) #1

declare dso_local i32 @bcm_hwclock_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
