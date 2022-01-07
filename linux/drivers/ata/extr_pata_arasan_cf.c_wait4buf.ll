; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_arasan_cf.c_wait4buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_arasan_cf.c_wait4buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arasan_cf_dev = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@TIMEOUT = common dso_local global i32 0, align 4
@ATA_TFLAG_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s TimeOut\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@ATA_DMA_ERR = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arasan_cf_dev*)* @wait4buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait4buf(%struct.arasan_cf_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.arasan_cf_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.arasan_cf_dev* %0, %struct.arasan_cf_dev** %3, align 8
  %5 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %3, align 8
  %6 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %5, i32 0, i32 3
  %7 = load i32, i32* @TIMEOUT, align 4
  %8 = call i32 @wait_for_completion_timeout(i32* %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %31, label %10

10:                                               ; preds = %1
  %11 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %3, align 8
  %12 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %11, i32 0, i32 2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ATA_TFLAG_WRITE, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %4, align 4
  %19 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %3, align 8
  %20 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %28 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load i32, i32* @ETIMEDOUT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %42

31:                                               ; preds = %1
  %32 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %3, align 8
  %33 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @ATA_DMA_ERR, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @EAGAIN, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %42

41:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %38, %10
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
