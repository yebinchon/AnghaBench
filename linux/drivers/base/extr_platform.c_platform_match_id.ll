; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_platform.c_platform_match_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_platform.c_platform_match_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device_id = type { i64* }
%struct.platform_device = type { %struct.platform_device_id*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.platform_device_id* (%struct.platform_device_id*, %struct.platform_device*)* @platform_match_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.platform_device_id* @platform_match_id(%struct.platform_device_id* %0, %struct.platform_device* %1) #0 {
  %3 = alloca %struct.platform_device_id*, align 8
  %4 = alloca %struct.platform_device_id*, align 8
  %5 = alloca %struct.platform_device*, align 8
  store %struct.platform_device_id* %0, %struct.platform_device_id** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  br label %6

6:                                                ; preds = %27, %2
  %7 = load %struct.platform_device_id*, %struct.platform_device_id** %4, align 8
  %8 = getelementptr inbounds %struct.platform_device_id, %struct.platform_device_id* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %6
  %14 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.platform_device_id*, %struct.platform_device_id** %4, align 8
  %18 = getelementptr inbounds %struct.platform_device_id, %struct.platform_device_id* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = call i64 @strcmp(i32 %16, i64* %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %13
  %23 = load %struct.platform_device_id*, %struct.platform_device_id** %4, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  store %struct.platform_device_id* %23, %struct.platform_device_id** %25, align 8
  %26 = load %struct.platform_device_id*, %struct.platform_device_id** %4, align 8
  store %struct.platform_device_id* %26, %struct.platform_device_id** %3, align 8
  br label %31

27:                                               ; preds = %13
  %28 = load %struct.platform_device_id*, %struct.platform_device_id** %4, align 8
  %29 = getelementptr inbounds %struct.platform_device_id, %struct.platform_device_id* %28, i32 1
  store %struct.platform_device_id* %29, %struct.platform_device_id** %4, align 8
  br label %6

30:                                               ; preds = %6
  store %struct.platform_device_id* null, %struct.platform_device_id** %3, align 8
  br label %31

31:                                               ; preds = %30, %22
  %32 = load %struct.platform_device_id*, %struct.platform_device_id** %3, align 8
  ret %struct.platform_device_id* %32
}

declare dso_local i64 @strcmp(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
