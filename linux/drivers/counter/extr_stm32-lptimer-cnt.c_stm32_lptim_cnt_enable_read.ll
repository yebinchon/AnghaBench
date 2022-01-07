; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_stm32-lptimer-cnt.c_stm32_lptim_cnt_enable_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_stm32-lptimer-cnt.c_stm32_lptim_cnt_enable_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter_device = type { %struct.stm32_lptim_cnt* }
%struct.stm32_lptim_cnt = type { i32 }
%struct.counter_count = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.counter_device*, %struct.counter_count*, i8*, i8*)* @stm32_lptim_cnt_enable_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_lptim_cnt_enable_read(%struct.counter_device* %0, %struct.counter_count* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.counter_device*, align 8
  %7 = alloca %struct.counter_count*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.stm32_lptim_cnt*, align 8
  %11 = alloca i32, align 4
  store %struct.counter_device* %0, %struct.counter_device** %6, align 8
  store %struct.counter_count* %1, %struct.counter_count** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.counter_device*, %struct.counter_device** %6, align 8
  %13 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %12, i32 0, i32 0
  %14 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %13, align 8
  store %struct.stm32_lptim_cnt* %14, %struct.stm32_lptim_cnt** %10, align 8
  %15 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %10, align 8
  %16 = call i32 @stm32_lptim_is_enabled(%struct.stm32_lptim_cnt* %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %5, align 4
  br label %26

21:                                               ; preds = %4
  %22 = load i8*, i8** %9, align 8
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @scnprintf(i8* %22, i32 %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %21, %19
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @stm32_lptim_is_enabled(%struct.stm32_lptim_cnt*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
