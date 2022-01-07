; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_set_index_polarity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_set_index_polarity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.quad8_iio = type { i32*, i32, i32* }

@QUAD8_CTR_IDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32)* @quad8_set_index_polarity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quad8_set_index_polarity(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2) #0 {
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.iio_chan_spec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.quad8_iio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %11 = call %struct.quad8_iio* @iio_priv(%struct.iio_dev* %10)
  store %struct.quad8_iio* %11, %struct.quad8_iio** %7, align 8
  %12 = load %struct.quad8_iio*, %struct.quad8_iio** %7, align 8
  %13 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %16 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = shl i32 %20, 1
  %22 = or i32 %19, %21
  store i32 %22, i32* %8, align 4
  %23 = load %struct.quad8_iio*, %struct.quad8_iio** %7, align 8
  %24 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %28 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = mul i64 2, %29
  %31 = add i64 %26, %30
  %32 = add i64 %31, 1
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.quad8_iio*, %struct.quad8_iio** %7, align 8
  %36 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %39 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  store i32 %34, i32* %41, align 4
  %42 = load i32, i32* @QUAD8_CTR_IDR, align 4
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @outb(i32 %44, i32 %45)
  ret i32 0
}

declare dso_local %struct.quad8_iio* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
