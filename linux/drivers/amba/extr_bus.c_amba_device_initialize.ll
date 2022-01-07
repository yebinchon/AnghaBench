; ModuleID = '/home/carl/AnghaBench/linux/drivers/amba/extr_bus.c_amba_device_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/amba/extr_bus.c_amba_device_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amba_device = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32*, i32*, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@amba_device_release = common dso_local global i32 0, align 4
@amba_bustype = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amba_device*, i8*)* @amba_device_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amba_device_initialize(%struct.amba_device* %0, i8* %1) #0 {
  %3 = alloca %struct.amba_device*, align 8
  %4 = alloca i8*, align 8
  store %struct.amba_device* %0, %struct.amba_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.amba_device*, %struct.amba_device** %3, align 8
  %6 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %5, i32 0, i32 0
  %7 = call i32 @device_initialize(%struct.TYPE_6__* %6)
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.amba_device*, %struct.amba_device** %3, align 8
  %12 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %11, i32 0, i32 0
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @dev_set_name(%struct.TYPE_6__* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %13)
  br label %15

15:                                               ; preds = %10, %2
  %16 = load i32, i32* @amba_device_release, align 4
  %17 = load %struct.amba_device*, %struct.amba_device** %3, align 8
  %18 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 3
  store i32 %16, i32* %19, align 8
  %20 = load %struct.amba_device*, %struct.amba_device** %3, align 8
  %21 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  store i32* @amba_bustype, i32** %22, align 8
  %23 = load %struct.amba_device*, %struct.amba_device** %3, align 8
  %24 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.amba_device*, %struct.amba_device** %3, align 8
  %27 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  store i32* %25, i32** %28, align 8
  %29 = load %struct.amba_device*, %struct.amba_device** %3, align 8
  %30 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %29, i32 0, i32 0
  %31 = call i32 @dev_name(%struct.TYPE_6__* %30)
  %32 = load %struct.amba_device*, %struct.amba_device** %3, align 8
  %33 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  ret void
}

declare dso_local i32 @device_initialize(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_6__*, i8*, i8*) #1

declare dso_local i32 @dev_name(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
