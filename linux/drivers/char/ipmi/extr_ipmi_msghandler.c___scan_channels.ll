; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c___scan_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c___scan_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_smi = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_4__*, i32*, i32, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ipmi_device_id = type { i32 }

@channel_handler = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [53 x i8] c"Error sending channel information for channel 0, %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@IPMI_CHANNEL_MEDIUM_IPMB = common dso_local global i32 0, align 4
@IPMI_CHANNEL_PROTOCOL_IPMB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipmi_smi*, %struct.ipmi_device_id*)* @__scan_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__scan_channels(%struct.ipmi_smi* %0, %struct.ipmi_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipmi_smi*, align 8
  %5 = alloca %struct.ipmi_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ipmi_smi* %0, %struct.ipmi_smi** %4, align 8
  store %struct.ipmi_device_id* %1, %struct.ipmi_device_id** %5, align 8
  %9 = load %struct.ipmi_device_id*, %struct.ipmi_device_id** %5, align 8
  %10 = call i32 @ipmi_version_major(%struct.ipmi_device_id* %9)
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %20, label %12

12:                                               ; preds = %2
  %13 = load %struct.ipmi_device_id*, %struct.ipmi_device_id** %5, align 8
  %14 = call i32 @ipmi_version_major(%struct.ipmi_device_id* %13)
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %64

16:                                               ; preds = %12
  %17 = load %struct.ipmi_device_id*, %struct.ipmi_device_id** %5, align 8
  %18 = call i32 @ipmi_version_minor(%struct.ipmi_device_id* %17)
  %19 = icmp sge i32 %18, 5
  br i1 %19, label %20, label %64

20:                                               ; preds = %16, %2
  %21 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %22 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %29 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %31 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = call i32 @memset(%struct.TYPE_4__* %35, i32 0, i32 4)
  %37 = load i32*, i32** @channel_handler, align 8
  %38 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %39 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %38, i32 0, i32 4
  store i32* %37, i32** %39, align 8
  %40 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %41 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %40, i32 0, i32 7
  store i64 0, i64* %41, align 8
  %42 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %43 = call i32 @send_channel_info_cmd(%struct.ipmi_smi* %42, i32 0)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %20
  %47 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %48 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @dev_warn(i32 %49, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %101

54:                                               ; preds = %20
  %55 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %56 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %59 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @wait_event(i32 %57, i32 %60)
  %62 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %63 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %62, i32 0, i32 4
  store i32* null, i32** %63, align 8
  br label %100

64:                                               ; preds = %16, %12
  %65 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %66 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* @IPMI_CHANNEL_MEDIUM_IPMB, align 4
  %69 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %70 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %69, i32 0, i32 2
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  store i32 %68, i32* %78, align 4
  %79 = load i32, i32* @IPMI_CHANNEL_PROTOCOL_IPMB, align 4
  %80 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %81 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %80, i32 0, i32 2
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  store i32 %79, i32* %89, align 4
  %90 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %91 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %90, i32 0, i32 2
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 %94
  %96 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %97 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %96, i32 0, i32 3
  store %struct.TYPE_4__* %95, %struct.TYPE_4__** %97, align 8
  %98 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %99 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %98, i32 0, i32 1
  store i32 1, i32* %99, align 4
  br label %100

100:                                              ; preds = %64, %54
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %100, %46
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @ipmi_version_major(%struct.ipmi_device_id*) #1

declare dso_local i32 @ipmi_version_minor(%struct.ipmi_device_id*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @send_channel_info_cmd(%struct.ipmi_smi*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
