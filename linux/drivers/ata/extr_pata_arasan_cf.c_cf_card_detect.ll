; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_arasan_cf.c_cf_card_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_arasan_cf.c_cf_card_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arasan_cf_dev = type { i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ata_port** }
%struct.ata_port = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ata_eh_info }
%struct.ata_eh_info = type { i32 }

@CFI_STS = common dso_local global i64 0, align 8
@CARD_DETECT1 = common dso_local global i32 0, align 4
@CARD_DETECT2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arasan_cf_dev*, i32)* @cf_card_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cf_card_detect(%struct.arasan_cf_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.arasan_cf_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_port*, align 8
  %6 = alloca %struct.ata_eh_info*, align 8
  %7 = alloca i32, align 4
  store %struct.arasan_cf_dev* %0, %struct.arasan_cf_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %3, align 8
  %9 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %8, i32 0, i32 2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.ata_port**, %struct.ata_port*** %11, align 8
  %13 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %12, i64 0
  %14 = load %struct.ata_port*, %struct.ata_port** %13, align 8
  store %struct.ata_port* %14, %struct.ata_port** %5, align 8
  %15 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %16 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.ata_eh_info* %17, %struct.ata_eh_info** %6, align 8
  %18 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %3, align 8
  %19 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CFI_STS, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readl(i64 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @CARD_DETECT1, align 4
  %26 = load i32, i32* @CARD_DETECT2, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %2
  %31 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %3, align 8
  %32 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %58

36:                                               ; preds = %30
  %37 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %3, align 8
  %38 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %3, align 8
  %40 = call i32 @cf_card_reset(%struct.arasan_cf_dev* %39)
  br label %50

41:                                               ; preds = %2
  %42 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %3, align 8
  %43 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  br label %58

47:                                               ; preds = %41
  %48 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %3, align 8
  %49 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  br label %50

50:                                               ; preds = %47, %36
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load %struct.ata_eh_info*, %struct.ata_eh_info** %6, align 8
  %55 = call i32 @ata_ehi_hotplugged(%struct.ata_eh_info* %54)
  %56 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %57 = call i32 @ata_port_freeze(%struct.ata_port* %56)
  br label %58

58:                                               ; preds = %35, %46, %53, %50
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @cf_card_reset(%struct.arasan_cf_dev*) #1

declare dso_local i32 @ata_ehi_hotplugged(%struct.ata_eh_info*) #1

declare dso_local i32 @ata_port_freeze(%struct.ata_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
