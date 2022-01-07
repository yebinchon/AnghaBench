; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_sysfs_dev_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_sysfs_dev_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktcdvd_device = type { %struct.TYPE_3__*, i8*, i8*, i32 }
%struct.TYPE_3__ = type { i32 }

@class_pktcdvd = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@kobj_pkt_type_stat = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"write_queue\00", align 1
@kobj_pkt_type_wqueue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pktcdvd_device*)* @pkt_sysfs_dev_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pkt_sysfs_dev_new(%struct.pktcdvd_device* %0) #0 {
  %2 = alloca %struct.pktcdvd_device*, align 8
  store %struct.pktcdvd_device* %0, %struct.pktcdvd_device** %2, align 8
  %3 = load i64, i64* @class_pktcdvd, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %23

5:                                                ; preds = %1
  %6 = load i64, i64* @class_pktcdvd, align 8
  %7 = call i32 @MKDEV(i32 0, i32 0)
  %8 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %9 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.TYPE_3__* @device_create(i64 %6, i32* null, i32 %7, i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %13 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %12, i32 0, i32 0
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %13, align 8
  %14 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %15 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = call i64 @IS_ERR(%struct.TYPE_3__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %21 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %20, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %21, align 8
  br label %22

22:                                               ; preds = %19, %5
  br label %23

23:                                               ; preds = %22, %1
  %24 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %25 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %28, label %45

28:                                               ; preds = %23
  %29 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %30 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %31 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = call i8* @pkt_kobj_create(%struct.pktcdvd_device* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %33, i32* @kobj_pkt_type_stat)
  %35 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %36 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %38 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %39 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = call i8* @pkt_kobj_create(%struct.pktcdvd_device* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %41, i32* @kobj_pkt_type_wqueue)
  %43 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %44 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  br label %45

45:                                               ; preds = %28, %23
  ret void
}

declare dso_local %struct.TYPE_3__* @device_create(i64, i32*, i32, i32*, i8*, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_3__*) #1

declare dso_local i8* @pkt_kobj_create(%struct.pktcdvd_device*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
