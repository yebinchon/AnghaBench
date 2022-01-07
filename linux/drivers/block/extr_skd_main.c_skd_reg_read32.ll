; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_reg_read32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_reg_read32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skd_device = type { i32, %struct.TYPE_2__*, i64* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"offset %x = %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.skd_device*, i64)* @skd_reg_read32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @skd_reg_read32(%struct.skd_device* %0, i64 %1) #0 {
  %3 = alloca %struct.skd_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.skd_device* %0, %struct.skd_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %7 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %6, i32 0, i32 2
  %8 = load i64*, i64** %7, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i64 @readl(i64 %12)
  store i64 %13, i64* %5, align 8
  %14 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %15 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sge i32 %16, 2
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %23 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @dev_dbg(i32* %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %26, i64 %27)
  br label %29

29:                                               ; preds = %21, %2
  %30 = load i64, i64* %5, align 8
  ret i64 %30
}

declare dso_local i64 @readl(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
