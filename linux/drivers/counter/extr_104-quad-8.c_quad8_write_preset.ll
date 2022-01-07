; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_write_preset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_write_preset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.quad8_iio = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@QUAD8_CTR_RLD = common dso_local global i32 0, align 4
@QUAD8_RLD_RESET_BP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i64, %struct.iio_chan_spec*, i8*, i64)* @quad8_write_preset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quad8_write_preset(%struct.iio_dev* %0, i64 %1, %struct.iio_chan_spec* %2, i8* %3, i64 %4) #0 {
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
  store i32 %26, i32* %13, align 4
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @kstrtouint(i8* %27, i32 0, i32* %14)
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %5
  %32 = load i32, i32* %15, align 4
  store i32 %32, i32* %6, align 4
  br label %71

33:                                               ; preds = %5
  %34 = load i32, i32* %14, align 4
  %35 = icmp ugt i32 %34, 16777215
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %71

39:                                               ; preds = %33
  %40 = load i32, i32* %14, align 4
  %41 = load %struct.quad8_iio*, %struct.quad8_iio** %12, align 8
  %42 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %9, align 8
  %45 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %43, i64 %47
  store i32 %40, i32* %48, align 4
  %49 = load i32, i32* @QUAD8_CTR_RLD, align 4
  %50 = load i32, i32* @QUAD8_RLD_RESET_BP, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %52, 1
  %54 = call i32 @outb(i32 %51, i32 %53)
  store i32 0, i32* %16, align 4
  br label %55

55:                                               ; preds = %65, %39
  %56 = load i32, i32* %16, align 4
  %57 = icmp slt i32 %56, 3
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %16, align 4
  %61 = mul nsw i32 8, %60
  %62 = lshr i32 %59, %61
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @outb(i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %58
  %66 = load i32, i32* %16, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %16, align 4
  br label %55

68:                                               ; preds = %55
  %69 = load i64, i64* %11, align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %68, %36, %31
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local %struct.quad8_iio* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
