; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_samsung_cf.c_pata_s3c_softreset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_samsung_cf.c_pata_s3c_softreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { %struct.ata_port* }
%struct.ata_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"SRST failed (errno=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_link*, i32*, i64)* @pata_s3c_softreset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pata_s3c_softreset(%struct.ata_link* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_link*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ata_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ata_link* %0, %struct.ata_link** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %13 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %12, i32 0, i32 0
  %14 = load %struct.ata_port*, %struct.ata_port** %13, align 8
  store %struct.ata_port* %14, %struct.ata_port** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %16 = call i64 @pata_s3c_devchk(%struct.ata_port* %15, i32 0)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  %20 = or i32 %19, 1
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %18, %3
  %22 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %23 = call i32 @pata_s3c_dev_select(%struct.ata_port* %22, i32 0)
  %24 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @pata_s3c_bus_softreset(%struct.ata_port* %24, i64 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %21
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp ne i32 %30, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @ata_link_err(%struct.ata_link* %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %4, align 4
  br label %50

39:                                               ; preds = %29, %21
  %40 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %41 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %45, 1
  %47 = call i32 @ata_sff_dev_classify(i32* %44, i32 %46, i32* %11)
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 %47, i32* %49, align 4
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %39, %34
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i64 @pata_s3c_devchk(%struct.ata_port*, i32) #1

declare dso_local i32 @pata_s3c_dev_select(%struct.ata_port*, i32) #1

declare dso_local i32 @pata_s3c_bus_softreset(%struct.ata_port*, i64) #1

declare dso_local i32 @ata_link_err(%struct.ata_link*, i8*, i32) #1

declare dso_local i32 @ata_sff_dev_classify(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
