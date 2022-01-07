; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_umem.c_set_fault_to_battery_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_umem.c_set_fault_to_battery_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardinfo = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@LED_FAULT = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i32 0, align 4
@LED_ON = common dso_local global i32 0, align 4
@LED_FLASH_7_0 = common dso_local global i32 0, align 4
@LED_FLASH_3_5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cardinfo*)* @set_fault_to_battery_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_fault_to_battery_status(%struct.cardinfo* %0) #0 {
  %2 = alloca %struct.cardinfo*, align 8
  store %struct.cardinfo* %0, %struct.cardinfo** %2, align 8
  %3 = load %struct.cardinfo*, %struct.cardinfo** %2, align 8
  %4 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i64 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = load %struct.cardinfo*, %struct.cardinfo** %2, align 8
  %12 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %10
  %19 = load %struct.cardinfo*, %struct.cardinfo** %2, align 8
  %20 = load i32, i32* @LED_FAULT, align 4
  %21 = load i32, i32* @LED_OFF, align 4
  %22 = call i32 @set_led(%struct.cardinfo* %19, i32 %20, i32 %21)
  br label %72

23:                                               ; preds = %10, %1
  %24 = load %struct.cardinfo*, %struct.cardinfo** %2, align 8
  %25 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %23
  %32 = load %struct.cardinfo*, %struct.cardinfo** %2, align 8
  %33 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %31, %23
  %40 = load %struct.cardinfo*, %struct.cardinfo** %2, align 8
  %41 = load i32, i32* @LED_FAULT, align 4
  %42 = load i32, i32* @LED_ON, align 4
  %43 = call i32 @set_led(%struct.cardinfo* %40, i32 %41, i32 %42)
  br label %71

44:                                               ; preds = %31
  %45 = load %struct.cardinfo*, %struct.cardinfo** %2, align 8
  %46 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %65, label %52

52:                                               ; preds = %44
  %53 = load %struct.cardinfo*, %struct.cardinfo** %2, align 8
  %54 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %52
  %61 = load %struct.cardinfo*, %struct.cardinfo** %2, align 8
  %62 = load i32, i32* @LED_FAULT, align 4
  %63 = load i32, i32* @LED_FLASH_7_0, align 4
  %64 = call i32 @set_led(%struct.cardinfo* %61, i32 %62, i32 %63)
  br label %70

65:                                               ; preds = %52, %44
  %66 = load %struct.cardinfo*, %struct.cardinfo** %2, align 8
  %67 = load i32, i32* @LED_FAULT, align 4
  %68 = load i32, i32* @LED_FLASH_3_5, align 4
  %69 = call i32 @set_led(%struct.cardinfo* %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %65, %60
  br label %71

71:                                               ; preds = %70, %39
  br label %72

72:                                               ; preds = %71, %18
  ret void
}

declare dso_local i32 @set_led(%struct.cardinfo*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
