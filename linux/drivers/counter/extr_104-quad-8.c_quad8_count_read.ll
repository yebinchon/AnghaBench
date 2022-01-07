; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_count_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_count_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter_device = type { %struct.quad8_iio* }
%struct.quad8_iio = type { i32 }
%struct.counter_count = type { i32 }
%struct.counter_count_read_value = type { i32 }

@QUAD8_FLAG_BT = common dso_local global i32 0, align 4
@QUAD8_FLAG_CT = common dso_local global i32 0, align 4
@QUAD8_CTR_RLD = common dso_local global i32 0, align 4
@QUAD8_RLD_RESET_BP = common dso_local global i32 0, align 4
@QUAD8_RLD_CNTR_OUT = common dso_local global i32 0, align 4
@COUNTER_COUNT_POSITION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.counter_device*, %struct.counter_count*, %struct.counter_count_read_value*)* @quad8_count_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quad8_count_read(%struct.counter_device* %0, %struct.counter_count* %1, %struct.counter_count_read_value* %2) #0 {
  %4 = alloca %struct.counter_device*, align 8
  %5 = alloca %struct.counter_count*, align 8
  %6 = alloca %struct.counter_count_read_value*, align 8
  %7 = alloca %struct.quad8_iio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.counter_device* %0, %struct.counter_device** %4, align 8
  store %struct.counter_count* %1, %struct.counter_count** %5, align 8
  store %struct.counter_count_read_value* %2, %struct.counter_count_read_value** %6, align 8
  %14 = load %struct.counter_device*, %struct.counter_device** %4, align 8
  %15 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %14, i32 0, i32 0
  %16 = load %struct.quad8_iio*, %struct.quad8_iio** %15, align 8
  store %struct.quad8_iio* %16, %struct.quad8_iio** %7, align 8
  %17 = load %struct.quad8_iio*, %struct.quad8_iio** %7, align 8
  %18 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.counter_count*, %struct.counter_count** %5, align 8
  %21 = getelementptr inbounds %struct.counter_count, %struct.counter_count* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 2, %22
  %24 = add nsw i32 %19, %23
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, 1
  %27 = call i32 @inb(i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @QUAD8_FLAG_BT, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @QUAD8_FLAG_CT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = xor i32 %38, %39
  %41 = zext i32 %40 to i64
  %42 = shl i64 %41, 24
  store i64 %42, i64* %12, align 8
  %43 = load i32, i32* @QUAD8_CTR_RLD, align 4
  %44 = load i32, i32* @QUAD8_RLD_RESET_BP, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @QUAD8_RLD_CNTR_OUT, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  %50 = call i32 @outb(i32 %47, i32 %49)
  store i32 0, i32* %13, align 4
  br label %51

51:                                               ; preds = %64, %3
  %52 = load i32, i32* %13, align 4
  %53 = icmp slt i32 %52, 3
  br i1 %53, label %54, label %67

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @inb(i32 %55)
  %57 = zext i32 %56 to i64
  %58 = load i32, i32* %13, align 4
  %59 = mul nsw i32 8, %58
  %60 = zext i32 %59 to i64
  %61 = shl i64 %57, %60
  %62 = load i64, i64* %12, align 8
  %63 = or i64 %62, %61
  store i64 %63, i64* %12, align 8
  br label %64

64:                                               ; preds = %54
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %13, align 4
  br label %51

67:                                               ; preds = %51
  %68 = load %struct.counter_count_read_value*, %struct.counter_count_read_value** %6, align 8
  %69 = load i32, i32* @COUNTER_COUNT_POSITION, align 4
  %70 = call i32 @counter_count_read_value_set(%struct.counter_count_read_value* %68, i32 %69, i64* %12)
  ret i32 0
}

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @counter_count_read_value_set(%struct.counter_count_read_value*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
