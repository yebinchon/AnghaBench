; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iio_dev = type { %struct.TYPE_3__, i8*, i8*, i8*, i32, i32* }
%struct.TYPE_3__ = type { %struct.device* }
%struct.quad8_iio = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.quad8_iio*, i8*, i8*, i8*, i8*, i32*, %struct.device*, i8* }

@base = common dso_local global i32* null, align 8
@QUAD8_EXTENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Unable to lock port addresses (0x%X-0x%X)\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@quad8_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@quad8_channels = common dso_local global i8* null, align 8
@quad8_ops = common dso_local global i32 0, align 4
@quad8_counts = common dso_local global i8* null, align 8
@quad8_signals = common dso_local global i8* null, align 8
@QUAD8_CHAN_OP_RESET_COUNTERS = common dso_local global i32 0, align 4
@QUAD8_REG_CHAN_OP = common dso_local global i32 0, align 4
@QUAD8_NUM_COUNTERS = common dso_local global i32 0, align 4
@QUAD8_CTR_RLD = common dso_local global i32 0, align 4
@QUAD8_RLD_RESET_BP = common dso_local global i32 0, align 4
@QUAD8_RLD_RESET_FLAGS = common dso_local global i32 0, align 4
@QUAD8_RLD_RESET_E = common dso_local global i32 0, align 4
@QUAD8_CTR_CMR = common dso_local global i32 0, align 4
@QUAD8_CTR_IOR = common dso_local global i32 0, align 4
@QUAD8_CTR_IDR = common dso_local global i32 0, align 4
@QUAD8_CHAN_OP_ENABLE_COUNTERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @quad8_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quad8_probe(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.quad8_iio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = load i32*, i32** @base, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* @QUAD8_EXTENT, align 8
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call i8* @dev_name(%struct.device* %19)
  %21 = call i32 @devm_request_region(%struct.device* %12, i32 %17, i64 %18, i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %41, label %23

23:                                               ; preds = %2
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load i32*, i32** @base, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** @base, align 8
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* @QUAD8_EXTENT, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %29, i64 %37)
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %200

41:                                               ; preds = %2
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %42, i32 72)
  store %struct.iio_dev* %43, %struct.iio_dev** %6, align 8
  %44 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %45 = icmp ne %struct.iio_dev* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %200

49:                                               ; preds = %41
  %50 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %51 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %50, i32 0, i32 5
  store i32* @quad8_info, i32** %51, align 8
  %52 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %53 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %54 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 8
  %55 = load i8*, i8** @quad8_channels, align 8
  %56 = call i8* @ARRAY_SIZE(i8* %55)
  %57 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %58 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** @quad8_channels, align 8
  %60 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %61 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = call i8* @dev_name(%struct.device* %62)
  %64 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %65 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = load %struct.device*, %struct.device** %4, align 8
  %67 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %68 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  store %struct.device* %66, %struct.device** %69, align 8
  %70 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %71 = call %struct.quad8_iio* @iio_priv(%struct.iio_dev* %70)
  store %struct.quad8_iio* %71, %struct.quad8_iio** %7, align 8
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = call i8* @dev_name(%struct.device* %72)
  %74 = load %struct.quad8_iio*, %struct.quad8_iio** %7, align 8
  %75 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 7
  store i8* %73, i8** %76, align 8
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = load %struct.quad8_iio*, %struct.quad8_iio** %7, align 8
  %79 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 6
  store %struct.device* %77, %struct.device** %80, align 8
  %81 = load %struct.quad8_iio*, %struct.quad8_iio** %7, align 8
  %82 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 5
  store i32* @quad8_ops, i32** %83, align 8
  %84 = load i8*, i8** @quad8_counts, align 8
  %85 = load %struct.quad8_iio*, %struct.quad8_iio** %7, align 8
  %86 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 4
  store i8* %84, i8** %87, align 8
  %88 = load i8*, i8** @quad8_counts, align 8
  %89 = call i8* @ARRAY_SIZE(i8* %88)
  %90 = load %struct.quad8_iio*, %struct.quad8_iio** %7, align 8
  %91 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 3
  store i8* %89, i8** %92, align 8
  %93 = load i8*, i8** @quad8_signals, align 8
  %94 = load %struct.quad8_iio*, %struct.quad8_iio** %7, align 8
  %95 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  store i8* %93, i8** %96, align 8
  %97 = load i8*, i8** @quad8_signals, align 8
  %98 = call i8* @ARRAY_SIZE(i8* %97)
  %99 = load %struct.quad8_iio*, %struct.quad8_iio** %7, align 8
  %100 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  store i8* %98, i8** %101, align 8
  %102 = load %struct.quad8_iio*, %struct.quad8_iio** %7, align 8
  %103 = load %struct.quad8_iio*, %struct.quad8_iio** %7, align 8
  %104 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  store %struct.quad8_iio* %102, %struct.quad8_iio** %105, align 8
  %106 = load i32*, i32** @base, align 8
  %107 = load i32, i32* %5, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.quad8_iio*, %struct.quad8_iio** %7, align 8
  %112 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* @QUAD8_CHAN_OP_RESET_COUNTERS, align 4
  %114 = load i32*, i32** @base, align 8
  %115 = load i32, i32* %5, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @QUAD8_REG_CHAN_OP, align 4
  %120 = add nsw i32 %118, %119
  %121 = call i32 @outb(i32 %113, i32 %120)
  store i32 0, i32* %8, align 4
  br label %122

122:                                              ; preds = %175, %49
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* @QUAD8_NUM_COUNTERS, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %178

126:                                              ; preds = %122
  %127 = load i32*, i32** @base, align 8
  %128 = load i32, i32* %5, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %8, align 4
  %133 = mul nsw i32 2, %132
  %134 = add nsw i32 %131, %133
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* @QUAD8_CTR_RLD, align 4
  %136 = load i32, i32* @QUAD8_RLD_RESET_BP, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* %10, align 4
  %139 = add i32 %138, 1
  %140 = call i32 @outb(i32 %137, i32 %139)
  store i32 0, i32* %9, align 4
  br label %141

141:                                              ; preds = %147, %126
  %142 = load i32, i32* %9, align 4
  %143 = icmp slt i32 %142, 3
  br i1 %143, label %144, label %150

144:                                              ; preds = %141
  %145 = load i32, i32* %10, align 4
  %146 = call i32 @outb(i32 0, i32 %145)
  br label %147

147:                                              ; preds = %144
  %148 = load i32, i32* %9, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %9, align 4
  br label %141

150:                                              ; preds = %141
  %151 = load i32, i32* @QUAD8_CTR_RLD, align 4
  %152 = load i32, i32* @QUAD8_RLD_RESET_FLAGS, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* %10, align 4
  %155 = add i32 %154, 1
  %156 = call i32 @outb(i32 %153, i32 %155)
  %157 = load i32, i32* @QUAD8_CTR_RLD, align 4
  %158 = load i32, i32* @QUAD8_RLD_RESET_E, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* %10, align 4
  %161 = add i32 %160, 1
  %162 = call i32 @outb(i32 %159, i32 %161)
  %163 = load i32, i32* @QUAD8_CTR_CMR, align 4
  %164 = load i32, i32* %10, align 4
  %165 = add i32 %164, 1
  %166 = call i32 @outb(i32 %163, i32 %165)
  %167 = load i32, i32* @QUAD8_CTR_IOR, align 4
  %168 = load i32, i32* %10, align 4
  %169 = add i32 %168, 1
  %170 = call i32 @outb(i32 %167, i32 %169)
  %171 = load i32, i32* @QUAD8_CTR_IDR, align 4
  %172 = load i32, i32* %10, align 4
  %173 = add i32 %172, 1
  %174 = call i32 @outb(i32 %171, i32 %173)
  br label %175

175:                                              ; preds = %150
  %176 = load i32, i32* %8, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %8, align 4
  br label %122

178:                                              ; preds = %122
  %179 = load i32, i32* @QUAD8_CHAN_OP_ENABLE_COUNTERS, align 4
  %180 = load i32*, i32** @base, align 8
  %181 = load i32, i32* %5, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @QUAD8_REG_CHAN_OP, align 4
  %186 = add nsw i32 %184, %185
  %187 = call i32 @outb(i32 %179, i32 %186)
  %188 = load %struct.device*, %struct.device** %4, align 8
  %189 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %190 = call i32 @devm_iio_device_register(%struct.device* %188, %struct.iio_dev* %189)
  store i32 %190, i32* %11, align 4
  %191 = load i32, i32* %11, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %178
  %194 = load i32, i32* %11, align 4
  store i32 %194, i32* %3, align 4
  br label %200

195:                                              ; preds = %178
  %196 = load %struct.device*, %struct.device** %4, align 8
  %197 = load %struct.quad8_iio*, %struct.quad8_iio** %7, align 8
  %198 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %197, i32 0, i32 1
  %199 = call i32 @devm_counter_register(%struct.device* %196, %struct.TYPE_4__* %198)
  store i32 %199, i32* %3, align 4
  br label %200

200:                                              ; preds = %195, %193, %46, %23
  %201 = load i32, i32* %3, align 4
  ret i32 %201
}

declare dso_local i32 @devm_request_region(%struct.device*, i32, i64, i8*) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i64) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local %struct.quad8_iio* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @devm_iio_device_register(%struct.device*, %struct.iio_dev*) #1

declare dso_local i32 @devm_counter_register(%struct.device*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
