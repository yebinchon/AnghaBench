; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_zatm.c_zatm_phy_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_zatm.c_zatm_phy_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_dev = type { i32 }
%struct.zatm_dev = type { i32 }

@CER = common dso_local global i32 0, align 4
@uPD98401_IND_ACC = common dso_local global i64 0, align 8
@uPD98401_IA_B0 = common dso_local global i64 0, align 8
@uPD98401_IA_TGT_PHY = common dso_local global i64 0, align 8
@uPD98401_IA_TGT_SHIFT = common dso_local global i64 0, align 8
@CMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atm_dev*, i8, i64)* @zatm_phy_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zatm_phy_put(%struct.atm_dev* %0, i8 zeroext %1, i64 %2) #0 {
  %4 = alloca %struct.atm_dev*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca %struct.zatm_dev*, align 8
  store %struct.atm_dev* %0, %struct.atm_dev** %4, align 8
  store i8 %1, i8* %5, align 1
  store i64 %2, i64* %6, align 8
  %8 = load %struct.atm_dev*, %struct.atm_dev** %4, align 8
  %9 = call %struct.zatm_dev* @ZATM_DEV(%struct.atm_dev* %8)
  store %struct.zatm_dev* %9, %struct.zatm_dev** %7, align 8
  %10 = call i32 (...) @zwait()
  %11 = load i8, i8* %5, align 1
  %12 = zext i8 %11 to i64
  %13 = load i32, i32* @CER, align 4
  %14 = call i32 @zout(i64 %12, i32 %13)
  %15 = load i64, i64* @uPD98401_IND_ACC, align 8
  %16 = load i64, i64* @uPD98401_IA_B0, align 8
  %17 = or i64 %15, %16
  %18 = load i64, i64* @uPD98401_IA_TGT_PHY, align 8
  %19 = load i64, i64* @uPD98401_IA_TGT_SHIFT, align 8
  %20 = shl i64 %18, %19
  %21 = or i64 %17, %20
  %22 = load i64, i64* %6, align 8
  %23 = or i64 %21, %22
  %24 = load i32, i32* @CMR, align 4
  %25 = call i32 @zout(i64 %23, i32 %24)
  ret void
}

declare dso_local %struct.zatm_dev* @ZATM_DEV(%struct.atm_dev*) #1

declare dso_local i32 @zwait(...) #1

declare dso_local i32 @zout(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
