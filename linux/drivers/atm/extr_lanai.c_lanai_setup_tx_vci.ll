; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_lanai.c_lanai_setup_tx_vci.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_lanai.c_lanai_setup_tx_vci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lanai_dev = type { i32 }
%struct.lanai_vcc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.atm_qos = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ATM_AAL0 = common dso_local global i64 0, align 8
@vcc_tx_unqueue_aal0 = common dso_local global i32 0, align 4
@ATM_CELL_SIZE = common dso_local global i32 0, align 4
@AAL0_TX_MULTIPLIER = common dso_local global i32 0, align 4
@vcc_tx_unqueue_aal5 = common dso_local global i32 0, align 4
@AAL5_TX_MULTIPLIER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"TX\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lanai_dev*, %struct.lanai_vcc*, %struct.atm_qos*)* @lanai_setup_tx_vci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lanai_setup_tx_vci(%struct.lanai_dev* %0, %struct.lanai_vcc* %1, %struct.atm_qos* %2) #0 {
  %4 = alloca %struct.lanai_dev*, align 8
  %5 = alloca %struct.lanai_vcc*, align 8
  %6 = alloca %struct.atm_qos*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lanai_dev* %0, %struct.lanai_dev** %4, align 8
  store %struct.lanai_vcc* %1, %struct.lanai_vcc** %5, align 8
  store %struct.atm_qos* %2, %struct.atm_qos** %6, align 8
  %9 = load %struct.atm_qos*, %struct.atm_qos** %6, align 8
  %10 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ATM_AAL0, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load i32, i32* @vcc_tx_unqueue_aal0, align 4
  %16 = load %struct.lanai_vcc*, %struct.lanai_vcc** %5, align 8
  %17 = getelementptr inbounds %struct.lanai_vcc, %struct.lanai_vcc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @ATM_CELL_SIZE, align 4
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @AAL0_TX_MULTIPLIER, align 4
  store i32 %21, i32* %8, align 4
  br label %32

22:                                               ; preds = %3
  %23 = load i32, i32* @vcc_tx_unqueue_aal5, align 4
  %24 = load %struct.lanai_vcc*, %struct.lanai_vcc** %5, align 8
  %25 = getelementptr inbounds %struct.lanai_vcc, %struct.lanai_vcc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 4
  %27 = load %struct.atm_qos*, %struct.atm_qos** %6, align 8
  %28 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* @AAL5_TX_MULTIPLIER, align 4
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %22, %14
  %33 = load %struct.lanai_dev*, %struct.lanai_dev** %4, align 8
  %34 = load %struct.lanai_vcc*, %struct.lanai_vcc** %5, align 8
  %35 = getelementptr inbounds %struct.lanai_vcc, %struct.lanai_vcc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @lanai_get_sized_buffer(%struct.lanai_dev* %33, i32* %36, i32 %37, i32 %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  ret i32 %39
}

declare dso_local i32 @lanai_get_sized_buffer(%struct.lanai_dev*, i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
