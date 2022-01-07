; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_count_enable_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_count_enable_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter_device = type { %struct.quad8_iio* }
%struct.quad8_iio = type { i32, i32*, i32* }
%struct.counter_count = type { i32 }

@QUAD8_CTR_IOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.counter_device*, %struct.counter_count*, i8*, i8*, i64)* @quad8_count_enable_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quad8_count_enable_write(%struct.counter_device* %0, %struct.counter_count* %1, i8* %2, i8* %3, i64 %4) #0 {
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
  %29 = call i32 @kstrtobool(i8* %28, i32* %15)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %5
  %33 = load i32, i32* %14, align 4
  store i32 %33, i32* %6, align 4
  br label %64

34:                                               ; preds = %5
  %35 = load i32, i32* %15, align 4
  %36 = load %struct.quad8_iio*, %struct.quad8_iio** %12, align 8
  %37 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.counter_count*, %struct.counter_count** %8, align 8
  %40 = getelementptr inbounds %struct.counter_count, %struct.counter_count* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %38, i64 %42
  store i32 %35, i32* %43, align 4
  %44 = load i32, i32* %15, align 4
  %45 = load %struct.quad8_iio*, %struct.quad8_iio** %12, align 8
  %46 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.counter_count*, %struct.counter_count** %8, align 8
  %49 = getelementptr inbounds %struct.counter_count, %struct.counter_count* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 1
  %55 = or i32 %44, %54
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* @QUAD8_CTR_IOR, align 4
  %57 = load i32, i32* %16, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %59, 1
  %61 = call i32 @outb(i32 %58, i32 %60)
  %62 = load i64, i64* %11, align 8
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %34, %32
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32 @kstrtobool(i8*, i32*) #1

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
