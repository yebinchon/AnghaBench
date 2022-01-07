; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-zpodd.c_zpodd_on_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-zpodd.c_zpodd_on_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { %struct.zpodd* }
%struct.zpodd = type { i32, i32, i64 }

@jiffies = common dso_local global i64 0, align 8
@zpodd_poweroff_delay = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zpodd_on_suspend(%struct.ata_device* %0) #0 {
  %2 = alloca %struct.ata_device*, align 8
  %3 = alloca %struct.zpodd*, align 8
  %4 = alloca i64, align 8
  store %struct.ata_device* %0, %struct.ata_device** %2, align 8
  %5 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %6 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %5, i32 0, i32 0
  %7 = load %struct.zpodd*, %struct.zpodd** %6, align 8
  store %struct.zpodd* %7, %struct.zpodd** %3, align 8
  %8 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %9 = call i32 @zpready(%struct.ata_device* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.zpodd*, %struct.zpodd** %3, align 8
  %13 = getelementptr inbounds %struct.zpodd, %struct.zpodd* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = load %struct.zpodd*, %struct.zpodd** %3, align 8
  %15 = getelementptr inbounds %struct.zpodd, %struct.zpodd* %14, i32 0, i32 1
  store i32 0, i32* %15, align 4
  br label %43

16:                                               ; preds = %1
  %17 = load %struct.zpodd*, %struct.zpodd** %3, align 8
  %18 = getelementptr inbounds %struct.zpodd, %struct.zpodd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = load %struct.zpodd*, %struct.zpodd** %3, align 8
  %23 = getelementptr inbounds %struct.zpodd, %struct.zpodd* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load i64, i64* @jiffies, align 8
  %25 = load %struct.zpodd*, %struct.zpodd** %3, align 8
  %26 = getelementptr inbounds %struct.zpodd, %struct.zpodd* %25, i32 0, i32 2
  store i64 %24, i64* %26, align 8
  br label %43

27:                                               ; preds = %16
  %28 = load %struct.zpodd*, %struct.zpodd** %3, align 8
  %29 = getelementptr inbounds %struct.zpodd, %struct.zpodd* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* @zpodd_poweroff_delay, align 4
  %32 = mul nsw i32 %31, 1000
  %33 = call i64 @msecs_to_jiffies(i32 %32)
  %34 = add i64 %30, %33
  store i64 %34, i64* %4, align 8
  %35 = load i64, i64* @jiffies, align 8
  %36 = load i64, i64* %4, align 8
  %37 = call i64 @time_before(i64 %35, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  br label %43

40:                                               ; preds = %27
  %41 = load %struct.zpodd*, %struct.zpodd** %3, align 8
  %42 = getelementptr inbounds %struct.zpodd, %struct.zpodd* %41, i32 0, i32 1
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %39, %21, %11
  ret void
}

declare dso_local i32 @zpready(%struct.ata_device*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
