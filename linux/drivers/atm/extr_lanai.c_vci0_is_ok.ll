; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_lanai.c_vci0_is_ok.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_lanai.c_vci0_is_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lanai_dev = type { i64, i32 }
%struct.atm_qos = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@ATM_CBR = common dso_local global i64 0, align 8
@ATM_AAL0 = common dso_local global i64 0, align 8
@ATM_NONE = common dso_local global i64 0, align 8
@CONFIG2_VCI0_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lanai_dev*, %struct.atm_qos*)* @vci0_is_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vci0_is_ok(%struct.lanai_dev* %0, %struct.atm_qos* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lanai_dev*, align 8
  %5 = alloca %struct.atm_qos*, align 8
  store %struct.lanai_dev* %0, %struct.lanai_dev** %4, align 8
  store %struct.atm_qos* %1, %struct.atm_qos** %5, align 8
  %6 = load %struct.atm_qos*, %struct.atm_qos** %5, align 8
  %7 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ATM_CBR, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.atm_qos*, %struct.atm_qos** %5, align 8
  %14 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ATM_AAL0, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %41

19:                                               ; preds = %12
  %20 = load %struct.atm_qos*, %struct.atm_qos** %5, align 8
  %21 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ATM_NONE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %19
  %27 = load %struct.lanai_dev*, %struct.lanai_dev** %4, align 8
  %28 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %41

32:                                               ; preds = %26
  %33 = load i32, i32* @CONFIG2_VCI0_NORMAL, align 4
  %34 = load %struct.lanai_dev*, %struct.lanai_dev** %4, align 8
  %35 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load %struct.lanai_dev*, %struct.lanai_dev** %4, align 8
  %39 = call i32 @conf2_write_if_powerup(%struct.lanai_dev* %38)
  br label %40

40:                                               ; preds = %32, %19
  store i32 1, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %31, %18
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @conf2_write_if_powerup(%struct.lanai_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
