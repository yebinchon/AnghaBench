; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-sff.c_ata_sff_softreset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-sff.c_ata_sff_softreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { i32*, %struct.ata_port* }
%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ata_port*, i32)* }

@ATA_FLAG_SLAVE_POSS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"about to softreset, devmask=%x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"SRST failed (errno=%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"EXIT, classes[0]=%u [1]=%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_sff_softreset(%struct.ata_link* %0, i32* %1, i64 %2) #0 {
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
  %21 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %23 = call i64 @ata_devchk(%struct.ata_port* %22, i32 0)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* %10, align 4
  %27 = or i32 %26, 1
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %25, %3
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %33 = call i64 @ata_devchk(%struct.ata_port* %32, i32 1)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* %10, align 4
  %37 = or i32 %36, 2
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %35, %31, %28
  %39 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %40 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (%struct.ata_port*, i32)*, i32 (%struct.ata_port*, i32)** %42, align 8
  %44 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %45 = call i32 %43(%struct.ata_port* %44, i32 0)
  %46 = load i32, i32* %10, align 4
  %47 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @ata_bus_softreset(%struct.ata_port* %48, i32 %49, i64 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %38
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp ne i32 %55, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %54
  %60 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %61 = call i64 @sata_scr_valid(%struct.ata_link* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %59, %54
  %64 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @ata_link_err(%struct.ata_link* %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %4, align 4
  br label %101

68:                                               ; preds = %59, %38
  %69 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %70 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %10, align 4
  %74 = and i32 %73, 1
  %75 = call i32 @ata_sff_dev_classify(i32* %72, i32 %74, i32* %12)
  %76 = load i32*, i32** %6, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %68
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 129
  br i1 %82, label %83, label %93

83:                                               ; preds = %80
  %84 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %85 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %10, align 4
  %89 = and i32 %88, 2
  %90 = call i32 @ata_sff_dev_classify(i32* %87, i32 %89, i32* %12)
  %91 = load i32*, i32** %6, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %83, %80, %68
  %94 = load i32*, i32** %6, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %6, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %96, i32 %99)
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %93, %63
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i64 @ata_devchk(%struct.ata_port*, i32) #1

declare dso_local i32 @ata_bus_softreset(%struct.ata_port*, i32, i64) #1

declare dso_local i64 @sata_scr_valid(%struct.ata_link*) #1

declare dso_local i32 @ata_link_err(%struct.ata_link*, i8*, i32) #1

declare dso_local i32 @ata_sff_dev_classify(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
