; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_moxtet.c_moxtet_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_moxtet.c_moxtet_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_driver = type { i32 }
%struct.moxtet_device = type { i32 }
%struct.moxtet_driver = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_driver*)* @moxtet_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @moxtet_match(%struct.device* %0, %struct.device_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca %struct.moxtet_device*, align 8
  %7 = alloca %struct.moxtet_driver*, align 8
  %8 = alloca i32*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_driver* %1, %struct.device_driver** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.moxtet_device* @to_moxtet_device(%struct.device* %9)
  store %struct.moxtet_device* %10, %struct.moxtet_device** %6, align 8
  %11 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %12 = call %struct.moxtet_driver* @to_moxtet_driver(%struct.device_driver* %11)
  store %struct.moxtet_driver* %12, %struct.moxtet_driver** %7, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %15 = call i64 @of_driver_match_device(%struct.device* %13, %struct.device_driver* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %45

18:                                               ; preds = %2
  %19 = load %struct.moxtet_driver*, %struct.moxtet_driver** %7, align 8
  %20 = getelementptr inbounds %struct.moxtet_driver, %struct.moxtet_driver* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %45

24:                                               ; preds = %18
  %25 = load %struct.moxtet_driver*, %struct.moxtet_driver** %7, align 8
  %26 = getelementptr inbounds %struct.moxtet_driver, %struct.moxtet_driver* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %8, align 8
  br label %28

28:                                               ; preds = %41, %24
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.moxtet_device*, %struct.moxtet_device** %6, align 8
  %36 = getelementptr inbounds %struct.moxtet_device, %struct.moxtet_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 1, i32* %3, align 4
  br label %45

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40
  %42 = load i32*, i32** %8, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %8, align 8
  br label %28

44:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %39, %23, %17
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.moxtet_device* @to_moxtet_device(%struct.device*) #1

declare dso_local %struct.moxtet_driver* @to_moxtet_driver(%struct.device_driver*) #1

declare dso_local i64 @of_driver_match_device(%struct.device*, %struct.device_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
