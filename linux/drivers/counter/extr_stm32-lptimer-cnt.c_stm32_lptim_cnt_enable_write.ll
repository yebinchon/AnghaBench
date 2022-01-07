; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_stm32-lptimer-cnt.c_stm32_lptim_cnt_enable_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_stm32-lptimer-cnt.c_stm32_lptim_cnt_enable_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter_device = type { %struct.stm32_lptim_cnt* }
%struct.stm32_lptim_cnt = type { i32 }
%struct.counter_count = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.counter_device*, %struct.counter_count*, i8*, i8*, i64)* @stm32_lptim_cnt_enable_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_lptim_cnt_enable_write(%struct.counter_device* %0, %struct.counter_count* %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.counter_device*, align 8
  %8 = alloca %struct.counter_count*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.stm32_lptim_cnt*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.counter_device* %0, %struct.counter_device** %7, align 8
  store %struct.counter_count* %1, %struct.counter_count** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.counter_device*, %struct.counter_device** %7, align 8
  %16 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %15, i32 0, i32 0
  %17 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %16, align 8
  store %struct.stm32_lptim_cnt* %17, %struct.stm32_lptim_cnt** %12, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = call i32 @kstrtobool(i8* %18, i32* %13)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* %14, align 4
  store i32 %23, i32* %6, align 4
  br label %65

24:                                               ; preds = %5
  %25 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %12, align 8
  %26 = call i32 @stm32_lptim_is_enabled(%struct.stm32_lptim_cnt* %25)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %14, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32, %24
  %36 = load i32, i32* %14, align 4
  store i32 %36, i32* %6, align 4
  br label %65

37:                                               ; preds = %32, %29
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* @EBUSY, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %65

46:                                               ; preds = %40, %37
  %47 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %12, align 8
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @stm32_lptim_setup(%struct.stm32_lptim_cnt* %47, i32 %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %14, align 4
  store i32 %53, i32* %6, align 4
  br label %65

54:                                               ; preds = %46
  %55 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %12, align 8
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @stm32_lptim_set_enable_state(%struct.stm32_lptim_cnt* %55, i32 %56)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %14, align 4
  store i32 %61, i32* %6, align 4
  br label %65

62:                                               ; preds = %54
  %63 = load i64, i64* %11, align 8
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %62, %60, %52, %43, %35, %22
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32 @kstrtobool(i8*, i32*) #1

declare dso_local i32 @stm32_lptim_is_enabled(%struct.stm32_lptim_cnt*) #1

declare dso_local i32 @stm32_lptim_setup(%struct.stm32_lptim_cnt*, i32) #1

declare dso_local i32 @stm32_lptim_set_enable_state(%struct.stm32_lptim_cnt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
