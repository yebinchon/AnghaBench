; ModuleID = '/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_cdrom_mrw_bgformat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_cdrom_mrw_bgformat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.cdrom_device_info*, %struct.packet_command*)* }
%struct.packet_command = type { i32*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"%sstarting format\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"Re\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CGC_DATA_WRITE = common dso_local global i32 0, align 4
@GPCMD_FORMAT_UNIT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"bgformat failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, i32)* @cdrom_mrw_bgformat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdrom_mrw_bgformat(%struct.cdrom_device_info* %0, i32 %1) #0 {
  %3 = alloca %struct.cdrom_device_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.packet_command, align 8
  %6 = alloca [12 x i8], align 1
  %7 = alloca i32, align 4
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %12 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %14 = load i32, i32* @CGC_DATA_WRITE, align 4
  %15 = call i32 @init_cdrom_command(%struct.packet_command* %5, i8* %13, i32 12, i32 %14)
  %16 = load i32, i32* @GPCMD_FORMAT_UNIT, align 4
  %17 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %5, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %16, i32* %19, align 4
  %20 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %5, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 17, i32* %22, align 4
  %23 = load i32, i32* @HZ, align 4
  %24 = mul nsw i32 300, %23
  %25 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %5, i32 0, i32 1
  store i32 %24, i32* %25, align 8
  %26 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 1
  store i8 2, i8* %26, align 1
  %27 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 3
  store i8 8, i8* %27, align 1
  %28 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 4
  store i8 -1, i8* %28, align 1
  %29 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 5
  store i8 -1, i8* %29, align 1
  %30 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 6
  store i8 -1, i8* %30, align 1
  %31 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 7
  store i8 -1, i8* %31, align 1
  %32 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 8
  store i8 -112, i8* %32, align 1
  %33 = load i32, i32* %4, align 4
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 11
  store i8 %34, i8* %35, align 1
  %36 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %37 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.cdrom_device_info*, %struct.packet_command*)*, i32 (%struct.cdrom_device_info*, %struct.packet_command*)** %39, align 8
  %41 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %42 = call i32 %40(%struct.cdrom_device_info* %41, %struct.packet_command* %5)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %2
  %46 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %2
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @init_cdrom_command(%struct.packet_command*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
