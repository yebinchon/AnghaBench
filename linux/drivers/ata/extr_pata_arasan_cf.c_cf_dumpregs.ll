; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_arasan_cf.c_cf_dumpregs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_arasan_cf.c_cf_dumpregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arasan_cf_dev = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c": =========== REGISTER DUMP ===========\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c": CFI_STS: %x\00", align 1
@CFI_STS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c": IRQ_STS: %x\00", align 1
@IRQ_STS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c": IRQ_EN: %x\00", align 1
@IRQ_EN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c": OP_MODE: %x\00", align 1
@OP_MODE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c": CLK_CFG: %x\00", align 1
@CLK_CFG = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [13 x i8] c": TM_CFG: %x\00", align 1
@TM_CFG = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [15 x i8] c": XFER_CTR: %x\00", align 1
@XFER_CTR = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [15 x i8] c": GIRQ_STS: %x\00", align 1
@GIRQ_STS = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [18 x i8] c": GIRQ_STS_EN: %x\00", align 1
@GIRQ_STS_EN = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [18 x i8] c": GIRQ_SGN_EN: %x\00", align 1
@GIRQ_SGN_EN = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [40 x i8] c": =====================================\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arasan_cf_dev*)* @cf_dumpregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cf_dumpregs(%struct.arasan_cf_dev* %0) #0 {
  %2 = alloca %struct.arasan_cf_dev*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.arasan_cf_dev* %0, %struct.arasan_cf_dev** %2, align 8
  %4 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %2, align 8
  %5 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %3, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %9, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %2, align 8
  %13 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CFI_STS, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl(i64 %16)
  %18 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %2, align 8
  %21 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IRQ_STS, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl(i64 %24)
  %26 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = load %struct.device*, %struct.device** %3, align 8
  %28 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %2, align 8
  %29 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IRQ_EN, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @readl(i64 %32)
  %34 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  %35 = load %struct.device*, %struct.device** %3, align 8
  %36 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %2, align 8
  %37 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @OP_MODE, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @readl(i64 %40)
  %42 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %41)
  %43 = load %struct.device*, %struct.device** %3, align 8
  %44 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %2, align 8
  %45 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @CLK_CFG, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @readl(i64 %48)
  %50 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %49)
  %51 = load %struct.device*, %struct.device** %3, align 8
  %52 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %2, align 8
  %53 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @TM_CFG, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @readl(i64 %56)
  %58 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %57)
  %59 = load %struct.device*, %struct.device** %3, align 8
  %60 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %2, align 8
  %61 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @XFER_CTR, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @readl(i64 %64)
  %66 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %59, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %65)
  %67 = load %struct.device*, %struct.device** %3, align 8
  %68 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %2, align 8
  %69 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @GIRQ_STS, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @readl(i64 %72)
  %74 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %67, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %73)
  %75 = load %struct.device*, %struct.device** %3, align 8
  %76 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %2, align 8
  %77 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @GIRQ_STS_EN, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @readl(i64 %80)
  %82 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %75, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %81)
  %83 = load %struct.device*, %struct.device** %3, align 8
  %84 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %2, align 8
  %85 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @GIRQ_SGN_EN, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @readl(i64 %88)
  %90 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %83, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %89)
  %91 = load %struct.device*, %struct.device** %3, align 8
  %92 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %91, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  ret void
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
