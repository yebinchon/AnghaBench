; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_sata_lpm_ignore_phy_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_sata_lpm_ignore_phy_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { i64, i64, i32 }

@ATA_TMOUT_SPURIOUS_PHY = common dso_local global i32 0, align 4
@ATA_LPM_MAX_POWER = common dso_local global i64 0, align 8
@ATA_LFLAG_CHANGED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sata_lpm_ignore_phy_events(%struct.ata_link* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_link*, align 8
  %4 = alloca i64, align 8
  store %struct.ata_link* %0, %struct.ata_link** %3, align 8
  %5 = load %struct.ata_link*, %struct.ata_link** %3, align 8
  %6 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i32, i32* @ATA_TMOUT_SPURIOUS_PHY, align 4
  %9 = call i64 @msecs_to_jiffies(i32 %8)
  %10 = add i64 %7, %9
  store i64 %10, i64* %4, align 8
  %11 = load %struct.ata_link*, %struct.ata_link** %3, align 8
  %12 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ATA_LPM_MAX_POWER, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %31

17:                                               ; preds = %1
  %18 = load %struct.ata_link*, %struct.ata_link** %3, align 8
  %19 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ATA_LFLAG_CHANGED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load i32, i32* @jiffies, align 4
  %26 = load i64, i64* %4, align 8
  %27 = call i64 @time_before(i32 %25, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %31

30:                                               ; preds = %24, %17
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %29, %16
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_before(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
