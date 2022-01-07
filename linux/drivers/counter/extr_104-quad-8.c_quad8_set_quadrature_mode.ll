; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_set_quadrature_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_set_quadrature_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.quad8_iio = type { i32*, i32, i32*, i32*, i64* }

@QUAD8_CTR_CMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32)* @quad8_set_quadrature_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quad8_set_quadrature_mode(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2) #0 {
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
  %20 = shl i32 %19, 1
  store i32 %20, i32* %8, align 4
  %21 = load %struct.quad8_iio*, %struct.quad8_iio** %7, align 8
  %22 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %26 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = mul i64 2, %27
  %29 = add i64 %24, %28
  %30 = add i64 %29, 1
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %3
  %35 = load %struct.quad8_iio*, %struct.quad8_iio** %7, align 8
  %36 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %39 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  %44 = shl i32 %43, 3
  %45 = load i32, i32* %8, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %8, align 4
  br label %69

47:                                               ; preds = %3
  %48 = load %struct.quad8_iio*, %struct.quad8_iio** %7, align 8
  %49 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %52 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  store i32 0, i32* %54, align 4
  %55 = load %struct.quad8_iio*, %struct.quad8_iio** %7, align 8
  %56 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %55, i32 0, i32 4
  %57 = load i64*, i64** %56, align 8
  %58 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %59 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i64, i64* %57, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %47
  %65 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %66 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %67 = call i32 @quad8_set_synchronous_mode(%struct.iio_dev* %65, %struct.iio_chan_spec* %66, i32 0)
  br label %68

68:                                               ; preds = %64, %47
  br label %69

69:                                               ; preds = %68, %34
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.quad8_iio*, %struct.quad8_iio** %7, align 8
  %72 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %75 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  store i32 %70, i32* %77, align 4
  %78 = load i32, i32* @QUAD8_CTR_CMR, align 4
  %79 = load i32, i32* %8, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @outb(i32 %80, i32 %81)
  ret i32 0
}

declare dso_local %struct.quad8_iio* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @quad8_set_synchronous_mode(%struct.iio_dev*, %struct.iio_chan_spec*, i32) #1

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
