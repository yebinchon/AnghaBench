; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_count_preset_enable_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_count_preset_enable_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter_device = type { %struct.quad8_iio* }
%struct.quad8_iio = type { i32, i32*, i32* }
%struct.counter_count = type { i32 }

@QUAD8_CTR_IOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.counter_device*, %struct.counter_count*, i8*, i8*, i64)* @quad8_count_preset_enable_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quad8_count_preset_enable_write(%struct.counter_device* %0, %struct.counter_count* %1, i8* %2, i8* %3, i64 %4) #0 {
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
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %13, align 4
  %29 = load i8*, i8** %10, align 8
  %30 = call i32 @kstrtobool(i8* %29, i32* %14)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %5
  %34 = load i32, i32* %15, align 4
  store i32 %34, i32* %6, align 4
  br label %68

35:                                               ; preds = %5
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = load %struct.quad8_iio*, %struct.quad8_iio** %12, align 8
  %42 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.counter_count*, %struct.counter_count** %8, align 8
  %45 = getelementptr inbounds %struct.counter_count, %struct.counter_count* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %43, i64 %47
  store i32 %40, i32* %48, align 4
  %49 = load %struct.quad8_iio*, %struct.quad8_iio** %12, align 8
  %50 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.counter_count*, %struct.counter_count** %8, align 8
  %53 = getelementptr inbounds %struct.counter_count, %struct.counter_count* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %14, align 4
  %59 = shl i32 %58, 1
  %60 = or i32 %57, %59
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* @QUAD8_CTR_IOR, align 4
  %62 = load i32, i32* %16, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @outb(i32 %63, i32 %64)
  %66 = load i64, i64* %11, align 8
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %35, %33
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i32 @kstrtobool(i8*, i32*) #1

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
