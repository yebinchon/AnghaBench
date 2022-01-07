; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_set_count_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_set_count_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.quad8_iio = type { i32, i32*, i32*, i64* }

@QUAD8_CTR_CMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32)* @quad8_set_count_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quad8_set_count_mode(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2) #0 {
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
  %12 = load i32, i32* %6, align 4
  %13 = shl i32 %12, 1
  store i32 %13, i32* %8, align 4
  %14 = load %struct.quad8_iio*, %struct.quad8_iio** %7, align 8
  %15 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %18 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 2, %19
  %21 = add nsw i32 %16, %20
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.quad8_iio*, %struct.quad8_iio** %7, align 8
  %25 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %28 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %26, i64 %30
  store i32 %23, i32* %31, align 4
  %32 = load %struct.quad8_iio*, %struct.quad8_iio** %7, align 8
  %33 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %32, i32 0, i32 3
  %34 = load i64*, i64** %33, align 8
  %35 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %36 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %34, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %3
  %43 = load %struct.quad8_iio*, %struct.quad8_iio** %7, align 8
  %44 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %47 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  %53 = shl i32 %52, 3
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %42, %3
  %57 = load i32, i32* @QUAD8_CTR_CMR, align 4
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @outb(i32 %59, i32 %60)
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
