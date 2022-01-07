; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_ftm-quaddec.c_ftm_quaddec_count_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_ftm-quaddec.c_ftm_quaddec_count_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter_device = type { %struct.ftm_quaddec* }
%struct.ftm_quaddec = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.counter_count = type { i32 }
%struct.counter_count_write_value = type { i32 }

@COUNTER_COUNT_POSITION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Can only accept '0' as new counter value\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.counter_device*, %struct.counter_count*, %struct.counter_count_write_value*)* @ftm_quaddec_count_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftm_quaddec_count_write(%struct.counter_device* %0, %struct.counter_count* %1, %struct.counter_count_write_value* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.counter_device*, align 8
  %6 = alloca %struct.counter_count*, align 8
  %7 = alloca %struct.counter_count_write_value*, align 8
  %8 = alloca %struct.ftm_quaddec*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.counter_device* %0, %struct.counter_device** %5, align 8
  store %struct.counter_count* %1, %struct.counter_count** %6, align 8
  store %struct.counter_count_write_value* %2, %struct.counter_count_write_value** %7, align 8
  %11 = load %struct.counter_device*, %struct.counter_device** %5, align 8
  %12 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %11, i32 0, i32 0
  %13 = load %struct.ftm_quaddec*, %struct.ftm_quaddec** %12, align 8
  store %struct.ftm_quaddec* %13, %struct.ftm_quaddec** %8, align 8
  %14 = load i32, i32* @COUNTER_COUNT_POSITION, align 4
  %15 = load %struct.counter_count_write_value*, %struct.counter_count_write_value** %7, align 8
  %16 = call i32 @counter_count_write_value_get(i64* %9, i32 %14, %struct.counter_count_write_value* %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %4, align 4
  br label %35

21:                                               ; preds = %3
  %22 = load i64, i64* %9, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load %struct.ftm_quaddec*, %struct.ftm_quaddec** %8, align 8
  %26 = getelementptr inbounds %struct.ftm_quaddec, %struct.ftm_quaddec* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @dev_warn(i32* %28, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %35

32:                                               ; preds = %21
  %33 = load %struct.ftm_quaddec*, %struct.ftm_quaddec** %8, align 8
  %34 = call i32 @ftm_reset_counter(%struct.ftm_quaddec* %33)
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %32, %24, %19
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @counter_count_write_value_get(i64*, i32, %struct.counter_count_write_value*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @ftm_reset_counter(%struct.ftm_quaddec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
