; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_set_synchronous_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_set_synchronous_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.quad8_iio = type { i32*, i32, i32*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@QUAD8_CTR_IDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32)* @quad8_set_synchronous_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quad8_set_synchronous_mode(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.quad8_iio*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %12 = call %struct.quad8_iio* @iio_priv(%struct.iio_dev* %11)
  store %struct.quad8_iio* %12, %struct.quad8_iio** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.quad8_iio*, %struct.quad8_iio** %8, align 8
  %15 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %18 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 1
  %23 = or i32 %13, %22
  store i32 %23, i32* %9, align 4
  %24 = load %struct.quad8_iio*, %struct.quad8_iio** %8, align 8
  %25 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %29 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = mul i64 2, %30
  %32 = add i64 %27, %31
  %33 = add i64 %32, 1
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %3
  %38 = load %struct.quad8_iio*, %struct.quad8_iio** %8, align 8
  %39 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %42 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %37
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %64

50:                                               ; preds = %37, %3
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.quad8_iio*, %struct.quad8_iio** %8, align 8
  %53 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %56 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  store i32 %51, i32* %58, align 4
  %59 = load i32, i32* @QUAD8_CTR_IDR, align 4
  %60 = load i32, i32* %9, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @outb(i32 %61, i32 %62)
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %50, %47
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.quad8_iio* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
