; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_zatm.c_open_tx_second.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_zatm.c_open_tx_second.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i32, i32, i32 }
%struct.zatm_dev = type { %struct.atm_vcc**, i32 }
%struct.zatm_vcc = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"open_tx_second\0A\00", align 1
@VC_SIZE = common dso_local global i32 0, align 4
@uPD98401_TXVC_L = common dso_local global i32 0, align 4
@uPD98401_TXVC_SHP_SHIFT = common dso_local global i32 0, align 4
@uPD98401_TXVC_VPI_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_vcc*)* @open_tx_second to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_tx_second(%struct.atm_vcc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atm_vcc*, align 8
  %4 = alloca %struct.zatm_dev*, align 8
  %5 = alloca %struct.zatm_vcc*, align 8
  %6 = alloca i64, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %3, align 8
  %7 = call i32 @DPRINTK(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %9 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.zatm_dev* @ZATM_DEV(i32 %10)
  store %struct.zatm_dev* %11, %struct.zatm_dev** %4, align 8
  %12 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %13 = call %struct.zatm_vcc* @ZATM_VCC(%struct.atm_vcc* %12)
  store %struct.zatm_vcc* %13, %struct.zatm_vcc** %5, align 8
  %14 = load %struct.zatm_vcc*, %struct.zatm_vcc** %5, align 8
  %15 = getelementptr inbounds %struct.zatm_vcc, %struct.zatm_vcc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %80

19:                                               ; preds = %1
  %20 = load %struct.zatm_dev*, %struct.zatm_dev** %4, align 8
  %21 = getelementptr inbounds %struct.zatm_dev, %struct.zatm_dev* %20, i32 0, i32 1
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.zatm_dev*, %struct.zatm_dev** %4, align 8
  %25 = load %struct.zatm_vcc*, %struct.zatm_vcc** %5, align 8
  %26 = getelementptr inbounds %struct.zatm_vcc, %struct.zatm_vcc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @VC_SIZE, align 4
  %29 = mul nsw i32 %27, %28
  %30 = sdiv i32 %29, 4
  %31 = call i32 @zpokel(%struct.zatm_dev* %24, i32 0, i32 %30)
  %32 = load %struct.zatm_dev*, %struct.zatm_dev** %4, align 8
  %33 = load i32, i32* @uPD98401_TXVC_L, align 4
  %34 = load %struct.zatm_vcc*, %struct.zatm_vcc** %5, align 8
  %35 = getelementptr inbounds %struct.zatm_vcc, %struct.zatm_vcc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @uPD98401_TXVC_SHP_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = or i32 %33, %38
  %40 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %41 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @uPD98401_TXVC_VPI_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = or i32 %39, %44
  %46 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %47 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %45, %48
  %50 = load %struct.zatm_vcc*, %struct.zatm_vcc** %5, align 8
  %51 = getelementptr inbounds %struct.zatm_vcc, %struct.zatm_vcc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @VC_SIZE, align 4
  %54 = mul nsw i32 %52, %53
  %55 = sdiv i32 %54, 4
  %56 = add nsw i32 %55, 1
  %57 = call i32 @zpokel(%struct.zatm_dev* %32, i32 %49, i32 %56)
  %58 = load %struct.zatm_dev*, %struct.zatm_dev** %4, align 8
  %59 = load %struct.zatm_vcc*, %struct.zatm_vcc** %5, align 8
  %60 = getelementptr inbounds %struct.zatm_vcc, %struct.zatm_vcc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @VC_SIZE, align 4
  %63 = mul nsw i32 %61, %62
  %64 = sdiv i32 %63, 4
  %65 = add nsw i32 %64, 2
  %66 = call i32 @zpokel(%struct.zatm_dev* %58, i32 0, i32 %65)
  %67 = load %struct.zatm_dev*, %struct.zatm_dev** %4, align 8
  %68 = getelementptr inbounds %struct.zatm_dev, %struct.zatm_dev* %67, i32 0, i32 1
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  %71 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %72 = load %struct.zatm_dev*, %struct.zatm_dev** %4, align 8
  %73 = getelementptr inbounds %struct.zatm_dev, %struct.zatm_dev* %72, i32 0, i32 0
  %74 = load %struct.atm_vcc**, %struct.atm_vcc*** %73, align 8
  %75 = load %struct.zatm_vcc*, %struct.zatm_vcc** %5, align 8
  %76 = getelementptr inbounds %struct.zatm_vcc, %struct.zatm_vcc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.atm_vcc*, %struct.atm_vcc** %74, i64 %78
  store %struct.atm_vcc* %71, %struct.atm_vcc** %79, align 8
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %19, %18
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local %struct.zatm_dev* @ZATM_DEV(i32) #1

declare dso_local %struct.zatm_vcc* @ZATM_VCC(%struct.atm_vcc*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @zpokel(%struct.zatm_dev*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
