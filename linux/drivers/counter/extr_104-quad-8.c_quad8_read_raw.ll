; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i32 }
%struct.quad8_iio = type { i32, i32*, i32* }

@IIO_INDEX = common dso_local global i32 0, align 4
@QUAD8_REG_INDEX_INPUT_LEVELS = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@QUAD8_FLAG_BT = common dso_local global i32 0, align 4
@QUAD8_FLAG_CT = common dso_local global i32 0, align 4
@QUAD8_CTR_RLD = common dso_local global i32 0, align 4
@QUAD8_RLD_RESET_BP = common dso_local global i32 0, align 4
@QUAD8_RLD_CNTR_OUT = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @quad8_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quad8_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.quad8_iio*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = call %struct.quad8_iio* @iio_priv(%struct.iio_dev* %18)
  store %struct.quad8_iio* %19, %struct.quad8_iio** %12, align 8
  %20 = load %struct.quad8_iio*, %struct.quad8_iio** %12, align 8
  %21 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %24 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 2, %25
  %27 = add nsw i32 %22, %26
  store i32 %27, i32* %13, align 4
  %28 = load i64, i64* %11, align 8
  switch i64 %28, label %122 [
    i64 129, label %29
    i64 130, label %97
    i64 128, label %109
  ]

29:                                               ; preds = %5
  %30 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %31 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IIO_INDEX, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %29
  %36 = load %struct.quad8_iio*, %struct.quad8_iio** %12, align 8
  %37 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @QUAD8_REG_INDEX_INPUT_LEVELS, align 4
  %40 = add nsw i32 %38, %39
  %41 = call i32 @inb(i32 %40)
  %42 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %43 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @BIT(i32 %44)
  %46 = and i32 %41, %45
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = load i32*, i32** %9, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %52, i32* %6, align 4
  br label %125

53:                                               ; preds = %29
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, 1
  %56 = call i32 @inb(i32 %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* @QUAD8_FLAG_BT, align 4
  %59 = and i32 %57, %58
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* @QUAD8_FLAG_CT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %16, align 4
  %69 = xor i32 %67, %68
  %70 = shl i32 %69, 24
  %71 = load i32*, i32** %9, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* @QUAD8_CTR_RLD, align 4
  %73 = load i32, i32* @QUAD8_RLD_RESET_BP, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @QUAD8_RLD_CNTR_OUT, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %77, 1
  %79 = call i32 @outb(i32 %76, i32 %78)
  store i32 0, i32* %17, align 4
  br label %80

80:                                               ; preds = %92, %53
  %81 = load i32, i32* %17, align 4
  %82 = icmp slt i32 %81, 3
  br i1 %82, label %83, label %95

83:                                               ; preds = %80
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @inb(i32 %84)
  %86 = load i32, i32* %17, align 4
  %87 = mul nsw i32 8, %86
  %88 = shl i32 %85, %87
  %89 = load i32*, i32** %9, align 8
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %88
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %83
  %93 = load i32, i32* %17, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %17, align 4
  br label %80

95:                                               ; preds = %80
  %96 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %96, i32* %6, align 4
  br label %125

97:                                               ; preds = %5
  %98 = load %struct.quad8_iio*, %struct.quad8_iio** %12, align 8
  %99 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %102 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %100, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %9, align 8
  store i32 %106, i32* %107, align 4
  %108 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %108, i32* %6, align 4
  br label %125

109:                                              ; preds = %5
  %110 = load i32*, i32** %9, align 8
  store i32 1, i32* %110, align 4
  %111 = load %struct.quad8_iio*, %struct.quad8_iio** %12, align 8
  %112 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %115 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %113, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %10, align 8
  store i32 %119, i32* %120, align 4
  %121 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %121, i32* %6, align 4
  br label %125

122:                                              ; preds = %5
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %122, %109, %97, %95, %35
  %126 = load i32, i32* %6, align 4
  ret i32 %126
}

declare dso_local %struct.quad8_iio* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
