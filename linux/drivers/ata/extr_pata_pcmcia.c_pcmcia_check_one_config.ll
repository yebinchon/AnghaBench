; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_pcmcia.c_pcmcia_check_one_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_pcmcia.c_pcmcia_check_one_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i32 }

@IO_DATA_PATH_WIDTH = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH_8 = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH_AUTO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*, i8*)* @pcmcia_check_one_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcmcia_check_one_config(%struct.pcmcia_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcmcia_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** %6, align 8
  %9 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %10 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %11, i64 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IO_DATA_PATH_WIDTH, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @IO_DATA_PATH_WIDTH_8, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %2
  %21 = load i32, i32* @IO_DATA_PATH_WIDTH, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %24 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %25, i64 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %22
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* @IO_DATA_PATH_WIDTH_AUTO, align 4
  %32 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %33 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %34, i64 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %31
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %20, %2
  %41 = load i32, i32* @IO_DATA_PATH_WIDTH, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %44 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %45, i64 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %42
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* @IO_DATA_PATH_WIDTH_8, align 4
  %52 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %53 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %54, i64 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %51
  store i32 %59, i32* %57, align 4
  %60 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %61 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %62, i64 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %40
  %69 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %70 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %71, i64 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  store i32 8, i32* %74, align 4
  %75 = load i32*, i32** %6, align 8
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 2, i32 1
  %80 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %81 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %82, i64 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  store i32 %79, i32* %85, align 4
  br label %99

86:                                               ; preds = %40
  %87 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %88 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %89, i64 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp slt i32 %93, 16
  br i1 %94, label %95, label %98

95:                                               ; preds = %86
  %96 = load i32, i32* @ENODEV, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %102

98:                                               ; preds = %86
  br label %99

99:                                               ; preds = %98, %68
  %100 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %101 = call i32 @pcmcia_request_io(%struct.pcmcia_device* %100)
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %99, %95
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @pcmcia_request_io(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
