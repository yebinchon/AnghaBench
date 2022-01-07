; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pmcs-msp71xx/extr_msp_hwbutton.c_msp_hwbutton_register.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pmcs-msp71xx/extr_msp_hwbutton.c_msp_hwbutton_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwbutton_interrupt = type { i64, i32, i32, i32, i32*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@CIC_EXT_CFG_REG = common dso_local global i64* null, align 8
@HWBUTTON_HI = common dso_local global i64 0, align 8
@hwbutton_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hwbutton_interrupt*)* @msp_hwbutton_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msp_hwbutton_register(%struct.hwbutton_interrupt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hwbutton_interrupt*, align 8
  %4 = alloca i64, align 8
  store %struct.hwbutton_interrupt* %0, %struct.hwbutton_interrupt** %3, align 8
  %5 = load %struct.hwbutton_interrupt*, %struct.hwbutton_interrupt** %3, align 8
  %6 = getelementptr inbounds %struct.hwbutton_interrupt, %struct.hwbutton_interrupt* %5, i32 0, i32 5
  %7 = load i32*, i32** %6, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.hwbutton_interrupt*, %struct.hwbutton_interrupt** %3, align 8
  %11 = getelementptr inbounds %struct.hwbutton_interrupt, %struct.hwbutton_interrupt* %10, i32 0, i32 4
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %9, %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %54

17:                                               ; preds = %9
  %18 = load i64*, i64** @CIC_EXT_CFG_REG, align 8
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load %struct.hwbutton_interrupt*, %struct.hwbutton_interrupt** %3, align 8
  %22 = getelementptr inbounds %struct.hwbutton_interrupt, %struct.hwbutton_interrupt* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @CIC_EXT_SET_TRIGGER_LEVEL(i64 %20, i32 %23)
  %25 = load %struct.hwbutton_interrupt*, %struct.hwbutton_interrupt** %3, align 8
  %26 = getelementptr inbounds %struct.hwbutton_interrupt, %struct.hwbutton_interrupt* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @HWBUTTON_HI, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %17
  %31 = load i64, i64* %4, align 8
  %32 = load %struct.hwbutton_interrupt*, %struct.hwbutton_interrupt** %3, align 8
  %33 = getelementptr inbounds %struct.hwbutton_interrupt, %struct.hwbutton_interrupt* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @CIC_EXT_SET_ACTIVE_LO(i64 %31, i32 %34)
  br label %42

36:                                               ; preds = %17
  %37 = load i64, i64* %4, align 8
  %38 = load %struct.hwbutton_interrupt*, %struct.hwbutton_interrupt** %3, align 8
  %39 = getelementptr inbounds %struct.hwbutton_interrupt, %struct.hwbutton_interrupt* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @CIC_EXT_SET_ACTIVE_HI(i64 %37, i32 %40)
  br label %42

42:                                               ; preds = %36, %30
  %43 = load i64, i64* %4, align 8
  %44 = load i64*, i64** @CIC_EXT_CFG_REG, align 8
  store i64 %43, i64* %44, align 8
  %45 = load %struct.hwbutton_interrupt*, %struct.hwbutton_interrupt** %3, align 8
  %46 = getelementptr inbounds %struct.hwbutton_interrupt, %struct.hwbutton_interrupt* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @hwbutton_handler, align 4
  %49 = load %struct.hwbutton_interrupt*, %struct.hwbutton_interrupt** %3, align 8
  %50 = getelementptr inbounds %struct.hwbutton_interrupt, %struct.hwbutton_interrupt* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.hwbutton_interrupt*, %struct.hwbutton_interrupt** %3, align 8
  %53 = call i32 @request_irq(i32 %47, i32 %48, i32 0, i32 %51, %struct.hwbutton_interrupt* %52)
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %42, %14
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @CIC_EXT_SET_TRIGGER_LEVEL(i64, i32) #1

declare dso_local i32 @CIC_EXT_SET_ACTIVE_LO(i64, i32) #1

declare dso_local i32 @CIC_EXT_SET_ACTIVE_HI(i64, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.hwbutton_interrupt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
