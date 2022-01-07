; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_check_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_check_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { %struct.TYPE_4__*, %struct.pktcdvd_device* }
%struct.TYPE_4__ = type { {}* }
%struct.pktcdvd_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.gendisk* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gendisk*, i32)* @pkt_check_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkt_check_events(%struct.gendisk* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gendisk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pktcdvd_device*, align 8
  %7 = alloca %struct.gendisk*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %9 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %8, i32 0, i32 1
  %10 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %9, align 8
  store %struct.pktcdvd_device* %10, %struct.pktcdvd_device** %6, align 8
  %11 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %6, align 8
  %12 = icmp ne %struct.pktcdvd_device* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %47

14:                                               ; preds = %2
  %15 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %6, align 8
  %16 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = icmp ne %struct.TYPE_3__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %47

20:                                               ; preds = %14
  %21 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %6, align 8
  %22 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.gendisk*, %struct.gendisk** %24, align 8
  store %struct.gendisk* %25, %struct.gendisk** %7, align 8
  %26 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %27 = icmp ne %struct.gendisk* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %20
  %29 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %30 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = bitcast {}** %32 to i32 (%struct.gendisk*, i32)**
  %34 = load i32 (%struct.gendisk*, i32)*, i32 (%struct.gendisk*, i32)** %33, align 8
  %35 = icmp ne i32 (%struct.gendisk*, i32)* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %28, %20
  store i32 0, i32* %3, align 4
  br label %47

37:                                               ; preds = %28
  %38 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %39 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = bitcast {}** %41 to i32 (%struct.gendisk*, i32)**
  %43 = load i32 (%struct.gendisk*, i32)*, i32 (%struct.gendisk*, i32)** %42, align 8
  %44 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 %43(%struct.gendisk* %44, i32 %45)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %37, %36, %19, %13
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
