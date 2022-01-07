; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_loop.c_loop_set_capacity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_loop.c_loop_set_capacity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop_device = type { i64, i32, i32 }

@Lo_bound = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop_device*)* @loop_set_capacity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loop_set_capacity(%struct.loop_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.loop_device*, align 8
  store %struct.loop_device* %0, %struct.loop_device** %3, align 8
  %4 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %5 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @Lo_bound, align 8
  %8 = icmp ne i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ENXIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %24

15:                                               ; preds = %1
  %16 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %17 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %18 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %21 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @figure_loop_size(%struct.loop_device* %16, i32 %19, i32 %22)
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %15, %12
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @figure_loop_size(%struct.loop_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
