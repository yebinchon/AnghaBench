; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_xsysace.c_ace_getgeo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_xsysace.c_ace_getgeo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ace_device* }
%struct.ace_device = type { i8**, i32 }
%struct.hd_geometry = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [14 x i8] c"ace_getgeo()\0A\00", align 1
@ATA_ID_HEADS = common dso_local global i64 0, align 8
@ATA_ID_SECTORS = common dso_local global i64 0, align 8
@ATA_ID_CYLS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, %struct.hd_geometry*)* @ace_getgeo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ace_getgeo(%struct.block_device* %0, %struct.hd_geometry* %1) #0 {
  %3 = alloca %struct.block_device*, align 8
  %4 = alloca %struct.hd_geometry*, align 8
  %5 = alloca %struct.ace_device*, align 8
  %6 = alloca i8**, align 8
  store %struct.block_device* %0, %struct.block_device** %3, align 8
  store %struct.hd_geometry* %1, %struct.hd_geometry** %4, align 8
  %7 = load %struct.block_device*, %struct.block_device** %3, align 8
  %8 = getelementptr inbounds %struct.block_device, %struct.block_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.ace_device*, %struct.ace_device** %10, align 8
  store %struct.ace_device* %11, %struct.ace_device** %5, align 8
  %12 = load %struct.ace_device*, %struct.ace_device** %5, align 8
  %13 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %12, i32 0, i32 0
  %14 = load i8**, i8*** %13, align 8
  store i8** %14, i8*** %6, align 8
  %15 = load %struct.ace_device*, %struct.ace_device** %5, align 8
  %16 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @dev_dbg(i32 %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %19 = load i8**, i8*** %6, align 8
  %20 = load i64, i64* @ATA_ID_HEADS, align 8
  %21 = getelementptr inbounds i8*, i8** %19, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %24 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load i8**, i8*** %6, align 8
  %26 = load i64, i64* @ATA_ID_SECTORS, align 8
  %27 = getelementptr inbounds i8*, i8** %25, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %30 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load i8**, i8*** %6, align 8
  %32 = load i64, i64* @ATA_ID_CYLS, align 8
  %33 = getelementptr inbounds i8*, i8** %31, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %36 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  ret i32 0
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
