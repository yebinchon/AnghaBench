; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_tmu.c_sh_tmu_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_tmu.c_sh_tmu_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_tmu_channel = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@TSTR = common dso_local global i32 0, align 4
@TCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sh_tmu_channel*, i32)* @sh_tmu_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sh_tmu_read(%struct.sh_tmu_channel* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.sh_tmu_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.sh_tmu_channel* %0, %struct.sh_tmu_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @TSTR, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %33

10:                                               ; preds = %2
  %11 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %4, align 8
  %12 = getelementptr inbounds %struct.sh_tmu_channel, %struct.sh_tmu_channel* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %32 [
    i32 128, label %16
    i32 129, label %24
  ]

16:                                               ; preds = %10
  %17 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %4, align 8
  %18 = getelementptr inbounds %struct.sh_tmu_channel, %struct.sh_tmu_channel* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 2
  %23 = call i64 @ioread8(i32 %22)
  store i64 %23, i64* %3, align 8
  br label %54

24:                                               ; preds = %10
  %25 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %4, align 8
  %26 = getelementptr inbounds %struct.sh_tmu_channel, %struct.sh_tmu_channel* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 4
  %31 = call i64 @ioread8(i32 %30)
  store i64 %31, i64* %3, align 8
  br label %54

32:                                               ; preds = %10
  br label %33

33:                                               ; preds = %32, %2
  %34 = load i32, i32* %5, align 4
  %35 = shl i32 %34, 2
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %6, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @TCR, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %4, align 8
  %42 = getelementptr inbounds %struct.sh_tmu_channel, %struct.sh_tmu_channel* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = add i64 %43, %44
  %46 = call i64 @ioread16(i64 %45)
  store i64 %46, i64* %3, align 8
  br label %54

47:                                               ; preds = %33
  %48 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %4, align 8
  %49 = getelementptr inbounds %struct.sh_tmu_channel, %struct.sh_tmu_channel* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = add i64 %50, %51
  %53 = call i64 @ioread32(i64 %52)
  store i64 %53, i64* %3, align 8
  br label %54

54:                                               ; preds = %47, %40, %24, %16
  %55 = load i64, i64* %3, align 8
  ret i64 %55
}

declare dso_local i64 @ioread8(i32) #1

declare dso_local i64 @ioread16(i64) #1

declare dso_local i64 @ioread32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
