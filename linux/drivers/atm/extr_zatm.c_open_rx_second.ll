; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_zatm.c_open_rx_second.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_zatm.c_open_rx_second.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i32, i32 }
%struct.zatm_dev = type { i32 }
%struct.zatm_vcc = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"open_rx_second (0x%x)\0A\00", align 1
@uPD98401_RXLT_ENBL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_vcc*)* @open_rx_second to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_rx_second(%struct.atm_vcc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atm_vcc*, align 8
  %4 = alloca %struct.zatm_dev*, align 8
  %5 = alloca %struct.zatm_vcc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.atm_vcc* %0, %struct.atm_vcc** %3, align 8
  %9 = call i32 @inb_p(i32 49235)
  %10 = call i32 @DPRINTK(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %12 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.zatm_dev* @ZATM_DEV(i32 %13)
  store %struct.zatm_dev* %14, %struct.zatm_dev** %4, align 8
  %15 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %16 = call %struct.zatm_vcc* @ZATM_VCC(%struct.atm_vcc* %15)
  store %struct.zatm_vcc* %16, %struct.zatm_vcc** %5, align 8
  %17 = load %struct.zatm_vcc*, %struct.zatm_vcc** %5, align 8
  %18 = getelementptr inbounds %struct.zatm_vcc, %struct.zatm_vcc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %59

22:                                               ; preds = %1
  %23 = load %struct.zatm_dev*, %struct.zatm_dev** %4, align 8
  %24 = getelementptr inbounds %struct.zatm_dev, %struct.zatm_dev* %23, i32 0, i32 0
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %28 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %29, 1
  store i32 %30, i32* %7, align 4
  %31 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %32 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 1
  %35 = sub nsw i32 1, %34
  %36 = shl i32 %35, 4
  store i32 %36, i32* %8, align 4
  %37 = load %struct.zatm_dev*, %struct.zatm_dev** %4, align 8
  %38 = load %struct.zatm_dev*, %struct.zatm_dev** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @zpeekl(%struct.zatm_dev* %38, i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = shl i32 65535, %41
  %43 = xor i32 %42, -1
  %44 = and i32 %40, %43
  %45 = load %struct.zatm_vcc*, %struct.zatm_vcc** %5, align 8
  %46 = getelementptr inbounds %struct.zatm_vcc, %struct.zatm_vcc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @uPD98401_RXLT_ENBL, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* %8, align 4
  %51 = shl i32 %49, %50
  %52 = or i32 %44, %51
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @zpokel(%struct.zatm_dev* %37, i32 %52, i32 %53)
  %55 = load %struct.zatm_dev*, %struct.zatm_dev** %4, align 8
  %56 = getelementptr inbounds %struct.zatm_dev, %struct.zatm_dev* %55, i32 0, i32 0
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %22, %21
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @DPRINTK(i8*, i32) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local %struct.zatm_dev* @ZATM_DEV(i32) #1

declare dso_local %struct.zatm_vcc* @ZATM_VCC(%struct.atm_vcc*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @zpokel(%struct.zatm_dev*, i32, i32) #1

declare dso_local i32 @zpeekl(%struct.zatm_dev*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
