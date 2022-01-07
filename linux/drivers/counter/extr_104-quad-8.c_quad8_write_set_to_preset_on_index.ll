; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_write_set_to_preset_on_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_write_set_to_preset_on_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.quad8_iio = type { i32, i32*, i32* }

@QUAD8_CTR_IOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i64, %struct.iio_chan_spec*, i8*, i64)* @quad8_write_set_to_preset_on_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quad8_write_set_to_preset_on_index(%struct.iio_dev* %0, i64 %1, %struct.iio_chan_spec* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iio_chan_spec*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.quad8_iio*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.iio_chan_spec* %2, %struct.iio_chan_spec** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %18 = call %struct.quad8_iio* @iio_priv(%struct.iio_dev* %17)
  store %struct.quad8_iio* %18, %struct.quad8_iio** %12, align 8
  %19 = load %struct.quad8_iio*, %struct.quad8_iio** %12, align 8
  %20 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %9, align 8
  %23 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 2, %24
  %26 = add nsw i32 %21, %25
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %13, align 4
  %28 = load i8*, i8** %10, align 8
  %29 = call i32 @kstrtobool(i8* %28, i32* %14)
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %5
  %33 = load i32, i32* %15, align 4
  store i32 %33, i32* %6, align 4
  br label %67

34:                                               ; preds = %5
  %35 = load i32, i32* %14, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load %struct.quad8_iio*, %struct.quad8_iio** %12, align 8
  %41 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %9, align 8
  %44 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %42, i64 %46
  store i32 %39, i32* %47, align 4
  %48 = load %struct.quad8_iio*, %struct.quad8_iio** %12, align 8
  %49 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %9, align 8
  %52 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %50, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %14, align 4
  %58 = shl i32 %57, 1
  %59 = or i32 %56, %58
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* @QUAD8_CTR_IOR, align 4
  %61 = load i32, i32* %16, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @outb(i32 %62, i32 %63)
  %65 = load i64, i64* %11, align 8
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %34, %32
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local %struct.quad8_iio* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @kstrtobool(i8*, i32*) #1

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
