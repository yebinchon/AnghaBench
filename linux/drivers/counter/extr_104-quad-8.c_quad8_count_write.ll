; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_count_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_count_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter_device = type { %struct.quad8_iio* }
%struct.quad8_iio = type { i32, i64* }
%struct.counter_count = type { i32 }
%struct.counter_count_write_value = type { i32 }

@COUNTER_COUNT_POSITION = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@QUAD8_CTR_RLD = common dso_local global i64 0, align 8
@QUAD8_RLD_RESET_BP = common dso_local global i64 0, align 8
@QUAD8_RLD_PRESET_CNTR = common dso_local global i64 0, align 8
@QUAD8_RLD_RESET_FLAGS = common dso_local global i64 0, align 8
@QUAD8_RLD_RESET_E = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.counter_device*, %struct.counter_count*, %struct.counter_count_write_value*)* @quad8_count_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quad8_count_write(%struct.counter_device* %0, %struct.counter_count* %1, %struct.counter_count_write_value* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.counter_device*, align 8
  %6 = alloca %struct.counter_count*, align 8
  %7 = alloca %struct.counter_count_write_value*, align 8
  %8 = alloca %struct.quad8_iio*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.counter_device* %0, %struct.counter_device** %5, align 8
  store %struct.counter_count* %1, %struct.counter_count** %6, align 8
  store %struct.counter_count_write_value* %2, %struct.counter_count_write_value** %7, align 8
  %13 = load %struct.counter_device*, %struct.counter_device** %5, align 8
  %14 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %13, i32 0, i32 0
  %15 = load %struct.quad8_iio*, %struct.quad8_iio** %14, align 8
  store %struct.quad8_iio* %15, %struct.quad8_iio** %8, align 8
  %16 = load %struct.quad8_iio*, %struct.quad8_iio** %8, align 8
  %17 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.counter_count*, %struct.counter_count** %6, align 8
  %20 = getelementptr inbounds %struct.counter_count, %struct.counter_count* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 2, %21
  %23 = add nsw i32 %18, %22
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* @COUNTER_COUNT_POSITION, align 4
  %25 = load %struct.counter_count_write_value*, %struct.counter_count_write_value** %7, align 8
  %26 = call i32 @counter_count_write_value_get(i64* %11, i32 %24, %struct.counter_count_write_value* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %4, align 4
  br label %107

31:                                               ; preds = %3
  %32 = load i64, i64* %11, align 8
  %33 = icmp ugt i64 %32, 16777215
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %107

37:                                               ; preds = %31
  %38 = load i64, i64* @QUAD8_CTR_RLD, align 8
  %39 = load i64, i64* @QUAD8_RLD_RESET_BP, align 8
  %40 = or i64 %38, %39
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  %43 = call i32 @outb(i64 %40, i32 %42)
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %55, %37
  %45 = load i32, i32* %12, align 4
  %46 = icmp slt i32 %45, 3
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = load i64, i64* %11, align 8
  %49 = load i32, i32* %12, align 4
  %50 = mul nsw i32 8, %49
  %51 = zext i32 %50 to i64
  %52 = lshr i64 %48, %51
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @outb(i64 %52, i32 %53)
  br label %55

55:                                               ; preds = %47
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  br label %44

58:                                               ; preds = %44
  %59 = load i64, i64* @QUAD8_CTR_RLD, align 8
  %60 = load i64, i64* @QUAD8_RLD_PRESET_CNTR, align 8
  %61 = or i64 %59, %60
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  %64 = call i32 @outb(i64 %61, i32 %63)
  %65 = load i64, i64* @QUAD8_CTR_RLD, align 8
  %66 = load i64, i64* @QUAD8_RLD_RESET_BP, align 8
  %67 = or i64 %65, %66
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  %70 = call i32 @outb(i64 %67, i32 %69)
  %71 = load %struct.quad8_iio*, %struct.quad8_iio** %8, align 8
  %72 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %71, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  %74 = load %struct.counter_count*, %struct.counter_count** %6, align 8
  %75 = getelementptr inbounds %struct.counter_count, %struct.counter_count* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %73, i64 %77
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %11, align 8
  store i32 0, i32* %12, align 4
  br label %80

80:                                               ; preds = %91, %58
  %81 = load i32, i32* %12, align 4
  %82 = icmp slt i32 %81, 3
  br i1 %82, label %83, label %94

83:                                               ; preds = %80
  %84 = load i64, i64* %11, align 8
  %85 = load i32, i32* %12, align 4
  %86 = mul nsw i32 8, %85
  %87 = zext i32 %86 to i64
  %88 = lshr i64 %84, %87
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @outb(i64 %88, i32 %89)
  br label %91

91:                                               ; preds = %83
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %12, align 4
  br label %80

94:                                               ; preds = %80
  %95 = load i64, i64* @QUAD8_CTR_RLD, align 8
  %96 = load i64, i64* @QUAD8_RLD_RESET_FLAGS, align 8
  %97 = or i64 %95, %96
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  %100 = call i32 @outb(i64 %97, i32 %99)
  %101 = load i64, i64* @QUAD8_CTR_RLD, align 8
  %102 = load i64, i64* @QUAD8_RLD_RESET_E, align 8
  %103 = or i64 %101, %102
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  %106 = call i32 @outb(i64 %103, i32 %105)
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %94, %34, %29
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @counter_count_write_value_get(i64*, i32, %struct.counter_count_write_value*) #1

declare dso_local i32 @outb(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
