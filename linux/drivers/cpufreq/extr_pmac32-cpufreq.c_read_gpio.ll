; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_pmac32-cpufreq.c_read_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_pmac32-cpufreq.c_read_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@KEYLARGO_GPIO_LEVELS0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device_node*)* @read_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_gpio(%struct.device_node* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %6 = load %struct.device_node*, %struct.device_node** %3, align 8
  %7 = call i64* @of_get_property(%struct.device_node* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null)
  store i64* %7, i64** %4, align 8
  %8 = load i64*, i64** %4, align 8
  %9 = icmp eq i64* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %23

11:                                               ; preds = %1
  %12 = load i64*, i64** %4, align 8
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @KEYLARGO_GPIO_LEVELS0, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load i64, i64* @KEYLARGO_GPIO_LEVELS0, align 8
  %19 = load i64, i64* %5, align 8
  %20 = add nsw i64 %19, %18
  store i64 %20, i64* %5, align 8
  br label %21

21:                                               ; preds = %17, %11
  %22 = load i64, i64* %5, align 8
  store i64 %22, i64* %2, align 8
  br label %23

23:                                               ; preds = %21, %10
  %24 = load i64, i64* %2, align 8
  ret i64 %24
}

declare dso_local i64* @of_get_property(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
