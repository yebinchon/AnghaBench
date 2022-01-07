; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_count_preset_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_count_preset_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter_device = type { %struct.quad8_iio* }
%struct.quad8_iio = type { i32, i32* }
%struct.counter_count = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@QUAD8_CTR_RLD = common dso_local global i32 0, align 4
@QUAD8_RLD_RESET_BP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.counter_device*, %struct.counter_count*, i8*, i8*, i64)* @quad8_count_preset_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quad8_count_preset_write(%struct.counter_device* %0, %struct.counter_count* %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.counter_device*, align 8
  %8 = alloca %struct.counter_count*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.quad8_iio*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.counter_device* %0, %struct.counter_device** %7, align 8
  store %struct.counter_count* %1, %struct.counter_count** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load %struct.counter_device*, %struct.counter_device** %7, align 8
  %18 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %17, i32 0, i32 0
  %19 = load %struct.quad8_iio*, %struct.quad8_iio** %18, align 8
  store %struct.quad8_iio* %19, %struct.quad8_iio** %12, align 8
  %20 = load %struct.quad8_iio*, %struct.quad8_iio** %12, align 8
  %21 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.counter_count*, %struct.counter_count** %8, align 8
  %24 = getelementptr inbounds %struct.counter_count, %struct.counter_count* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 2, %25
  %27 = add nsw i32 %22, %26
  store i32 %27, i32* %13, align 4
  %28 = load i8*, i8** %10, align 8
  %29 = call i32 @kstrtouint(i8* %28, i32 0, i32* %14)
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %5
  %33 = load i32, i32* %15, align 4
  store i32 %33, i32* %6, align 4
  br label %72

34:                                               ; preds = %5
  %35 = load i32, i32* %14, align 4
  %36 = icmp ugt i32 %35, 16777215
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %72

40:                                               ; preds = %34
  %41 = load i32, i32* %14, align 4
  %42 = load %struct.quad8_iio*, %struct.quad8_iio** %12, align 8
  %43 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.counter_count*, %struct.counter_count** %8, align 8
  %46 = getelementptr inbounds %struct.counter_count, %struct.counter_count* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %44, i64 %48
  store i32 %41, i32* %49, align 4
  %50 = load i32, i32* @QUAD8_CTR_RLD, align 4
  %51 = load i32, i32* @QUAD8_RLD_RESET_BP, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* %13, align 4
  %54 = add nsw i32 %53, 1
  %55 = call i32 @outb(i32 %52, i32 %54)
  store i32 0, i32* %16, align 4
  br label %56

56:                                               ; preds = %66, %40
  %57 = load i32, i32* %16, align 4
  %58 = icmp slt i32 %57, 3
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %16, align 4
  %62 = mul nsw i32 8, %61
  %63 = lshr i32 %60, %62
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @outb(i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %59
  %67 = load i32, i32* %16, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %16, align 4
  br label %56

69:                                               ; preds = %56
  %70 = load i64, i64* %11, align 8
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %69, %37, %32
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local i32 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
