; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_sprom.c_bcma_sprom_ext_available.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_sprom.c_bcma_sprom_ext_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_bus = type { %struct.TYPE_5__, %struct.TYPE_7__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@BCMA_CC_CAP_SPROM = common dso_local global i32 0, align 4
@BCMA_CC_SROM_CONTROL = common dso_local global i32 0, align 4
@BCMA_CC_SROM_CONTROL_PRESENT = common dso_local global i32 0, align 4
@BCMA_CC_CHIPSTAT = common dso_local global i32 0, align 4
@BCMA_CC_CHIPST_4313_SPROM_PRESENT = common dso_local global i32 0, align 4
@BCMA_CC_CHIPST_4331_SPROM_PRESENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcma_bus*)* @bcma_sprom_ext_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_sprom_ext_available(%struct.bcma_bus* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcma_bus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bcma_bus* %0, %struct.bcma_bus** %3, align 8
  %7 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %8 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sge i32 %13, 31
  br i1 %14, label %15, label %34

15:                                               ; preds = %1
  %16 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %17 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @BCMA_CC_CAP_SPROM, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %54

24:                                               ; preds = %15
  %25 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %26 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = load i32, i32* @BCMA_CC_SROM_CONTROL, align 4
  %30 = call i32 @bcma_read32(%struct.TYPE_8__* %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @BCMA_CC_SROM_CONTROL_PRESENT, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %2, align 4
  br label %54

34:                                               ; preds = %1
  %35 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %36 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = load i32, i32* @BCMA_CC_CHIPSTAT, align 4
  %40 = call i32 @bcma_read32(%struct.TYPE_8__* %38, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %42 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %49 [
    i32 129, label %45
    i32 128, label %47
  ]

45:                                               ; preds = %34
  %46 = load i32, i32* @BCMA_CC_CHIPST_4313_SPROM_PRESENT, align 4
  store i32 %46, i32* %6, align 4
  br label %50

47:                                               ; preds = %34
  %48 = load i32, i32* @BCMA_CC_CHIPST_4331_SPROM_PRESENT, align 4
  store i32 %48, i32* %6, align 4
  br label %50

49:                                               ; preds = %34
  store i32 1, i32* %2, align 4
  br label %54

50:                                               ; preds = %47, %45
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %51, %52
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %50, %49, %24, %23
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @bcma_read32(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
