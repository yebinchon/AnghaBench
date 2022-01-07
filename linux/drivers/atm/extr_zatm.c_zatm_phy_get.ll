; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_zatm.c_zatm_phy_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_zatm.c_zatm_phy_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_dev = type { i32 }
%struct.zatm_dev = type { i32 }

@uPD98401_IND_ACC = common dso_local global i64 0, align 8
@uPD98401_IA_B0 = common dso_local global i64 0, align 8
@uPD98401_IA_RW = common dso_local global i64 0, align 8
@uPD98401_IA_TGT_PHY = common dso_local global i64 0, align 8
@uPD98401_IA_TGT_SHIFT = common dso_local global i64 0, align 8
@CMR = common dso_local global i32 0, align 4
@CER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.atm_dev*, i64)* @zatm_phy_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @zatm_phy_get(%struct.atm_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.atm_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.zatm_dev*, align 8
  store %struct.atm_dev* %0, %struct.atm_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %7 = call %struct.zatm_dev* @ZATM_DEV(%struct.atm_dev* %6)
  store %struct.zatm_dev* %7, %struct.zatm_dev** %5, align 8
  %8 = call i32 (...) @zwait()
  %9 = load i64, i64* @uPD98401_IND_ACC, align 8
  %10 = load i64, i64* @uPD98401_IA_B0, align 8
  %11 = or i64 %9, %10
  %12 = load i64, i64* @uPD98401_IA_RW, align 8
  %13 = or i64 %11, %12
  %14 = load i64, i64* @uPD98401_IA_TGT_PHY, align 8
  %15 = load i64, i64* @uPD98401_IA_TGT_SHIFT, align 8
  %16 = shl i64 %14, %15
  %17 = or i64 %13, %16
  %18 = load i64, i64* %4, align 8
  %19 = or i64 %17, %18
  %20 = load i32, i32* @CMR, align 4
  %21 = call i32 @zout(i64 %19, i32 %20)
  %22 = call i32 (...) @zwait()
  %23 = load i32, i32* @CER, align 4
  %24 = call i32 @zin(i32 %23)
  %25 = and i32 %24, 255
  %26 = trunc i32 %25 to i8
  ret i8 %26
}

declare dso_local %struct.zatm_dev* @ZATM_DEV(%struct.atm_dev*) #1

declare dso_local i32 @zwait(...) #1

declare dso_local i32 @zout(i64, i32) #1

declare dso_local i32 @zin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
