; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_pcd.c_pcd_get_mcn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_pcd.c_pcd_get_mcn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { i32 }
%struct.cdrom_mcn = type { i64* }

@GPCMD_READ_SUBCHANNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"get mcn\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, %struct.cdrom_mcn*)* @pcd_get_mcn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcd_get_mcn(%struct.cdrom_device_info* %0, %struct.cdrom_mcn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdrom_device_info*, align 8
  %5 = alloca %struct.cdrom_mcn*, align 8
  %6 = alloca [12 x i8], align 1
  %7 = alloca [32 x i8], align 16
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %4, align 8
  store %struct.cdrom_mcn* %1, %struct.cdrom_mcn** %5, align 8
  %8 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %9 = load i32, i32* @GPCMD_READ_SUBCHANNEL, align 4
  %10 = trunc i32 %9 to i8
  store i8 %10, i8* %8, align 1
  %11 = getelementptr inbounds i8, i8* %8, i64 1
  store i8 0, i8* %11, align 1
  %12 = getelementptr inbounds i8, i8* %11, i64 1
  store i8 64, i8* %12, align 1
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  store i8 2, i8* %13, align 1
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  store i8 0, i8* %14, align 1
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  store i8 0, i8* %15, align 1
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  store i8 24, i8* %18, align 1
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  store i8 0, i8* %21, align 1
  %22 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %23 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %27 = call i64 @pcd_atapi(i32 %24, i8* %25, i32 24, i8* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %43

32:                                               ; preds = %2
  %33 = load %struct.cdrom_mcn*, %struct.cdrom_mcn** %5, align 8
  %34 = getelementptr inbounds %struct.cdrom_mcn, %struct.cdrom_mcn* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %37 = getelementptr inbounds i8, i8* %36, i64 9
  %38 = call i32 @memcpy(i64* %35, i8* %37, i32 13)
  %39 = load %struct.cdrom_mcn*, %struct.cdrom_mcn** %5, align 8
  %40 = getelementptr inbounds %struct.cdrom_mcn, %struct.cdrom_mcn* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 13
  store i64 0, i64* %42, align 8
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %32, %29
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @pcd_atapi(i32, i8*, i32, i8*, i8*) #1

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
