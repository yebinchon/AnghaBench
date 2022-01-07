; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_get_index_polarity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_get_index_polarity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.quad8_iio = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*)* @quad8_get_index_polarity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quad8_get_index_polarity(%struct.iio_dev* %0, %struct.iio_chan_spec* %1) #0 {
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.iio_chan_spec*, align 8
  %5 = alloca %struct.quad8_iio*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %4, align 8
  %6 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %7 = call %struct.quad8_iio* @iio_priv(%struct.iio_dev* %6)
  store %struct.quad8_iio* %7, %struct.quad8_iio** %5, align 8
  %8 = load %struct.quad8_iio*, %struct.quad8_iio** %5, align 8
  %9 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %12 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i32, i32* %10, i64 %13
  %15 = load i32, i32* %14, align 4
  ret i32 %15
}

declare dso_local %struct.quad8_iio* @iio_priv(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
