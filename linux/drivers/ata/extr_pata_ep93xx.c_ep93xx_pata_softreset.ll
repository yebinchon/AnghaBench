; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_ep93xx.c_ep93xx_pata_softreset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_ep93xx.c_ep93xx_pata_softreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { i32*, %struct.ata_port* }
%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ata_port*, i32)* }

@ATA_FLAG_SLAVE_POSS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"SRST failed (errno=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_link*, i32*, i64)* @ep93xx_pata_softreset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_pata_softreset(%struct.ata_link* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_link*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ata_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ata_link* %0, %struct.ata_link** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %14 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %13, i32 0, i32 1
  %15 = load %struct.ata_port*, %struct.ata_port** %14, align 8
  store %struct.ata_port* %15, %struct.ata_port** %8, align 8
  %16 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %17 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @ATA_FLAG_SLAVE_POSS, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %21 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %22 = call i64 @ep93xx_pata_device_is_present(%struct.ata_port* %21, i32 0)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* %10, align 4
  %26 = or i32 %25, 1
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %24, %3
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %32 = call i64 @ep93xx_pata_device_is_present(%struct.ata_port* %31, i32 1)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* %10, align 4
  %36 = or i32 %35, 2
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %34, %30, %27
  %38 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %39 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (%struct.ata_port*, i32)*, i32 (%struct.ata_port*, i32)** %41, align 8
  %43 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %44 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %43, i32 0, i32 1
  %45 = load %struct.ata_port*, %struct.ata_port** %44, align 8
  %46 = call i32 %42(%struct.ata_port* %45, i32 0)
  %47 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @ep93xx_pata_bus_softreset(%struct.ata_port* %47, i32 %48, i64 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %37
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp ne i32 %54, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %53
  %59 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %60 = call i64 @sata_scr_valid(%struct.ata_link* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %58, %53
  %63 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @ata_link_err(%struct.ata_link* %63, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %4, align 4
  br label %93

67:                                               ; preds = %58, %37
  %68 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %69 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %10, align 4
  %73 = and i32 %72, 1
  %74 = call i32 @ata_sff_dev_classify(i32* %71, i32 %73, i32* %12)
  %75 = load i32*, i32** %6, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %67
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 129
  br i1 %81, label %82, label %92

82:                                               ; preds = %79
  %83 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %84 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %10, align 4
  %88 = and i32 %87, 2
  %89 = call i32 @ata_sff_dev_classify(i32* %86, i32 %88, i32* %12)
  %90 = load i32*, i32** %6, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  store i32 %89, i32* %91, align 4
  br label %92

92:                                               ; preds = %82, %79, %67
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %92, %62
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i64 @ep93xx_pata_device_is_present(%struct.ata_port*, i32) #1

declare dso_local i32 @ep93xx_pata_bus_softreset(%struct.ata_port*, i32, i64) #1

declare dso_local i64 @sata_scr_valid(%struct.ata_link*) #1

declare dso_local i32 @ata_link_err(%struct.ata_link*, i8*, i32) #1

declare dso_local i32 @ata_sff_dev_classify(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
