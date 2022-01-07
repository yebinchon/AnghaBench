; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_horizon.c_hrz_proc_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_horizon.c_hrz_proc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_dev = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }

@DBG_FLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"hrz_proc_read\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"cells: TX %lu, RX %lu, HEC errors %lu, unassigned %lu.\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"free cell buffers: TX %hu, RX %hu+%hu.\0A\00", align 1
@TX_FREE_BUFFER_COUNT_OFF = common dso_local global i32 0, align 4
@RX_FREE_BUFFER_COUNT_OFF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"cps remaining: TX %u, RX %u\0A\00", align 1
@BUCKET_CAPACITY_ACCESS = common dso_local global i32 0, align 4
@BUCKET_FULLNESS_ACCESS = common dso_local global i32 0, align 4
@TX_CHANS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_dev*, i32*, i8*)* @hrz_proc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hrz_proc_read(%struct.atm_dev* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.atm_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  store %struct.atm_dev* %0, %struct.atm_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.atm_dev*, %struct.atm_dev** %5, align 8
  %11 = call %struct.TYPE_5__* @HRZ_DEV(%struct.atm_dev* %10)
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %8, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* @DBG_FLOW, align 4
  %15 = call i32 @PRINTD(i32 %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %9, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %9, align 4
  %18 = icmp ne i32 %16, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %3
  %20 = load i8*, i8** %7, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i8*, i8*, ...) @sprintf(i8* %20, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %26, i32 %29, i32 %32)
  store i32 %33, i32* %4, align 4
  br label %64

34:                                               ; preds = %3
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %9, align 4
  %37 = icmp ne i32 %35, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %34
  %39 = load i8*, i8** %7, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %41 = load i32, i32* @TX_FREE_BUFFER_COUNT_OFF, align 4
  %42 = call i32 @rd_regw(%struct.TYPE_5__* %40, i32 %41)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %44 = load i32, i32* @RX_FREE_BUFFER_COUNT_OFF, align 4
  %45 = call i32 @rd_regw(%struct.TYPE_5__* %43, i32 %44)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, i8*, ...) @sprintf(i8* %39, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %42, i32 %45, i32 %48)
  store i32 %49, i32* %4, align 4
  br label %64

50:                                               ; preds = %34
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %9, align 4
  %53 = icmp ne i32 %51, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %50
  %55 = load i8*, i8** %7, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, i8*, ...) @sprintf(i8* %55, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %58, i32 %61)
  store i32 %62, i32* %4, align 4
  br label %64

63:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %54, %38, %19
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.TYPE_5__* @HRZ_DEV(%struct.atm_dev*) #1

declare dso_local i32 @PRINTD(i32, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @rd_regw(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
