; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_lanai.c_get_statistics.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_lanai.c_get_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lanai_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@Statistics_Reg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lanai_dev*)* @get_statistics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_statistics(%struct.lanai_dev* %0) #0 {
  %2 = alloca %struct.lanai_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.lanai_dev* %0, %struct.lanai_dev** %2, align 8
  %4 = load %struct.lanai_dev*, %struct.lanai_dev** %2, align 8
  %5 = load i32, i32* @Statistics_Reg, align 4
  %6 = call i32 @reg_read(%struct.lanai_dev* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @STATS_GET_FIFO_OVFL(i32 %7)
  %9 = load %struct.lanai_dev*, %struct.lanai_dev** %2, align 8
  %10 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %13, %8
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @STATS_GET_HEC_ERR(i32 %16)
  %18 = load %struct.lanai_dev*, %struct.lanai_dev** %2, align 8
  %19 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %17
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %20, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i64 @STATS_GET_BAD_VCI(i32 %25)
  %27 = load %struct.lanai_dev*, %struct.lanai_dev** %2, align 8
  %28 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %26
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %29, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i64 @STATS_GET_BUF_OVFL(i32 %34)
  %36 = load %struct.lanai_dev*, %struct.lanai_dev** %2, align 8
  %37 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %35
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %38, align 4
  ret void
}

declare dso_local i32 @reg_read(%struct.lanai_dev*, i32) #1

declare dso_local i64 @STATS_GET_FIFO_OVFL(i32) #1

declare dso_local i64 @STATS_GET_HEC_ERR(i32) #1

declare dso_local i64 @STATS_GET_BAD_VCI(i32) #1

declare dso_local i64 @STATS_GET_BUF_OVFL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
