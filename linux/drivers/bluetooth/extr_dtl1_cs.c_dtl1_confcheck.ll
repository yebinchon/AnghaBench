; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_dtl1_cs.c_dtl1_confcheck.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_dtl1_cs.c_dtl1_confcheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH_8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*, i8*)* @dtl1_confcheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtl1_confcheck(%struct.pcmcia_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcmcia_device*, align 8
  %5 = alloca i8*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %7 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %8, i64 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %2
  %15 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %16 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %17, i64 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %21, 8
  br i1 %22, label %23, label %26

23:                                               ; preds = %14, %2
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %48

26:                                               ; preds = %14
  %27 = load i32, i32* @IO_DATA_PATH_WIDTH, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %30 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %31, i64 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %28
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* @IO_DATA_PATH_WIDTH_8, align 4
  %38 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %39 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %40, i64 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %37
  store i32 %45, i32* %43, align 4
  %46 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %47 = call i32 @pcmcia_request_io(%struct.pcmcia_device* %46)
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %26, %23
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @pcmcia_request_io(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
