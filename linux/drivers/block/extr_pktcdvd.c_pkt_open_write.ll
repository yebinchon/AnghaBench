; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_open_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_open_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktcdvd_device = type { i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"failed probe\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"failed saving write settings\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@USE_WCACHING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"write speed %ukB/s\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"write speed %ux\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"couldn't set write speed\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Optimum Power Calibration failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pktcdvd_device*)* @pkt_open_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkt_open_write(%struct.pktcdvd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pktcdvd_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pktcdvd_device* %0, %struct.pktcdvd_device** %3, align 8
  %8 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %9 = call i32 @pkt_probe_settings(%struct.pktcdvd_device* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %14 = call i32 (i32, %struct.pktcdvd_device*, i8*, ...) @pkt_dbg(i32 2, %struct.pktcdvd_device* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %86

16:                                               ; preds = %1
  %17 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %18 = call i32 @pkt_set_write_settings(%struct.pktcdvd_device* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %23 = call i32 (i32, %struct.pktcdvd_device*, i8*, ...) @pkt_dbg(i32 1, %struct.pktcdvd_device* %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %86

26:                                               ; preds = %16
  %27 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %28 = load i32, i32* @USE_WCACHING, align 4
  %29 = call i32 @pkt_write_caching(%struct.pktcdvd_device* %27, i32 %28)
  %30 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %31 = call i32 @pkt_get_max_speed(%struct.pktcdvd_device* %30, i32* %5)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 2832, i32* %5, align 4
  br label %35

35:                                               ; preds = %34, %26
  %36 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %37 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %43 [
    i32 19, label %39
    i32 26, label %39
    i32 18, label %39
  ]

39:                                               ; preds = %35, %35, %35
  %40 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 (i32, %struct.pktcdvd_device*, i8*, ...) @pkt_dbg(i32 1, %struct.pktcdvd_device* %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %58

43:                                               ; preds = %35
  %44 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %45 = call i32 @pkt_media_speed(%struct.pktcdvd_device* %44, i32* %6)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 16, i32* %6, align 4
  br label %49

49:                                               ; preds = %48, %43
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %6, align 4
  %52 = mul i32 %51, 177
  %53 = call i32 @min(i32 %50, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %55 = load i32, i32* %5, align 4
  %56 = udiv i32 %55, 176
  %57 = call i32 (i32, %struct.pktcdvd_device*, i8*, ...) @pkt_dbg(i32 1, %struct.pktcdvd_device* %54, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %49, %39
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %7, align 4
  %60 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @pkt_set_speed(%struct.pktcdvd_device* %60, i32 %61, i32 %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %58
  %67 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %68 = call i32 (i32, %struct.pktcdvd_device*, i8*, ...) @pkt_dbg(i32 1, %struct.pktcdvd_device* %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %86

71:                                               ; preds = %58
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %74 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %77 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %79 = call i32 @pkt_perform_opc(%struct.pktcdvd_device* %78)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %71
  %83 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %84 = call i32 (i32, %struct.pktcdvd_device*, i8*, ...) @pkt_dbg(i32 1, %struct.pktcdvd_device* %83, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %71
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %66, %21, %12
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @pkt_probe_settings(%struct.pktcdvd_device*) #1

declare dso_local i32 @pkt_dbg(i32, %struct.pktcdvd_device*, i8*, ...) #1

declare dso_local i32 @pkt_set_write_settings(%struct.pktcdvd_device*) #1

declare dso_local i32 @pkt_write_caching(%struct.pktcdvd_device*, i32) #1

declare dso_local i32 @pkt_get_max_speed(%struct.pktcdvd_device*, i32*) #1

declare dso_local i32 @pkt_media_speed(%struct.pktcdvd_device*, i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @pkt_set_speed(%struct.pktcdvd_device*, i32, i32) #1

declare dso_local i32 @pkt_perform_opc(%struct.pktcdvd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
