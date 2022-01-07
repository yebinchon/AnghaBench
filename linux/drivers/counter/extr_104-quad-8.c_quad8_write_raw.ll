; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i32 }
%struct.quad8_iio = type { i32, i32*, i32*, i32*, i32*, i32* }

@IIO_INDEX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@QUAD8_CTR_RLD = common dso_local global i32 0, align 4
@QUAD8_RLD_RESET_BP = common dso_local global i32 0, align 4
@QUAD8_RLD_PRESET_CNTR = common dso_local global i32 0, align 4
@QUAD8_RLD_RESET_FLAGS = common dso_local global i32 0, align 4
@QUAD8_RLD_RESET_E = common dso_local global i32 0, align 4
@QUAD8_CTR_IOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @quad8_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quad8_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.quad8_iio*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = call %struct.quad8_iio* @iio_priv(%struct.iio_dev* %16)
  store %struct.quad8_iio* %17, %struct.quad8_iio** %12, align 8
  %18 = load %struct.quad8_iio*, %struct.quad8_iio** %12, align 8
  %19 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %22 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 2, %23
  %25 = add nsw i32 %20, %24
  store i32 %25, i32* %13, align 4
  %26 = load i64, i64* %11, align 8
  switch i64 %26, label %214 [
    i64 129, label %27
    i64 130, label %110
    i64 128, label %147
  ]

27:                                               ; preds = %5
  %28 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %29 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IIO_INDEX, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %217

36:                                               ; preds = %27
  %37 = load i32, i32* %9, align 4
  %38 = icmp ugt i32 %37, 16777215
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %217

42:                                               ; preds = %36
  %43 = load i32, i32* @QUAD8_CTR_RLD, align 4
  %44 = load i32, i32* @QUAD8_RLD_RESET_BP, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %13, align 4
  %47 = add nsw i32 %46, 1
  %48 = call i32 @outb(i32 %45, i32 %47)
  store i32 0, i32* %14, align 4
  br label %49

49:                                               ; preds = %59, %42
  %50 = load i32, i32* %14, align 4
  %51 = icmp slt i32 %50, 3
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %14, align 4
  %55 = mul nsw i32 8, %54
  %56 = ashr i32 %53, %55
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @outb(i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %52
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %14, align 4
  br label %49

62:                                               ; preds = %49
  %63 = load i32, i32* @QUAD8_CTR_RLD, align 4
  %64 = load i32, i32* @QUAD8_RLD_PRESET_CNTR, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, 1
  %68 = call i32 @outb(i32 %65, i32 %67)
  %69 = load i32, i32* @QUAD8_CTR_RLD, align 4
  %70 = load i32, i32* @QUAD8_RLD_RESET_BP, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %72, 1
  %74 = call i32 @outb(i32 %71, i32 %73)
  %75 = load %struct.quad8_iio*, %struct.quad8_iio** %12, align 8
  %76 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %79 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %77, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %9, align 4
  store i32 0, i32* %14, align 4
  br label %84

84:                                               ; preds = %94, %62
  %85 = load i32, i32* %14, align 4
  %86 = icmp slt i32 %85, 3
  br i1 %86, label %87, label %97

87:                                               ; preds = %84
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %14, align 4
  %90 = mul nsw i32 8, %89
  %91 = ashr i32 %88, %90
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @outb(i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %87
  %95 = load i32, i32* %14, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %14, align 4
  br label %84

97:                                               ; preds = %84
  %98 = load i32, i32* @QUAD8_CTR_RLD, align 4
  %99 = load i32, i32* @QUAD8_RLD_RESET_FLAGS, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %101, 1
  %103 = call i32 @outb(i32 %100, i32 %102)
  %104 = load i32, i32* @QUAD8_CTR_RLD, align 4
  %105 = load i32, i32* @QUAD8_RLD_RESET_E, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %107, 1
  %109 = call i32 @outb(i32 %106, i32 %108)
  store i32 0, i32* %6, align 4
  br label %217

110:                                              ; preds = %5
  %111 = load i32, i32* %9, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = load i32, i32* %9, align 4
  %115 = icmp sgt i32 %114, 1
  br i1 %115, label %116, label %119

116:                                              ; preds = %113, %110
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %6, align 4
  br label %217

119:                                              ; preds = %113
  %120 = load i32, i32* %9, align 4
  %121 = load %struct.quad8_iio*, %struct.quad8_iio** %12, align 8
  %122 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %125 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %123, i64 %127
  store i32 %120, i32* %128, align 4
  %129 = load i32, i32* %9, align 4
  %130 = load %struct.quad8_iio*, %struct.quad8_iio** %12, align 8
  %131 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %130, i32 0, i32 3
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %134 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %132, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = shl i32 %138, 1
  %140 = or i32 %129, %139
  store i32 %140, i32* %15, align 4
  %141 = load i32, i32* @QUAD8_CTR_IOR, align 4
  %142 = load i32, i32* %15, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %144, 1
  %146 = call i32 @outb(i32 %143, i32 %145)
  store i32 0, i32* %6, align 4
  br label %217

147:                                              ; preds = %5
  %148 = load %struct.quad8_iio*, %struct.quad8_iio** %12, align 8
  %149 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %148, i32 0, i32 5
  %150 = load i32*, i32** %149, align 8
  %151 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %152 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %150, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %167, label %158

158:                                              ; preds = %147
  %159 = load i32, i32* %10, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %158
  %162 = load i32, i32* %9, align 4
  %163 = icmp ne i32 %162, 1
  br i1 %163, label %164, label %167

164:                                              ; preds = %161, %158
  %165 = load i32, i32* @EINVAL, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %6, align 4
  br label %217

167:                                              ; preds = %161, %147
  %168 = load i32, i32* %9, align 4
  %169 = icmp eq i32 %168, 1
  br i1 %169, label %170, label %182

170:                                              ; preds = %167
  %171 = load i32, i32* %10, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %182, label %173

173:                                              ; preds = %170
  %174 = load %struct.quad8_iio*, %struct.quad8_iio** %12, align 8
  %175 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %174, i32 0, i32 4
  %176 = load i32*, i32** %175, align 8
  %177 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %178 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %176, i64 %180
  store i32 0, i32* %181, align 4
  br label %213

182:                                              ; preds = %170, %167
  %183 = load i32, i32* %9, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %209, label %185

185:                                              ; preds = %182
  %186 = load i32, i32* %10, align 4
  switch i32 %186, label %205 [
    i32 500000, label %187
    i32 250000, label %196
  ]

187:                                              ; preds = %185
  %188 = load %struct.quad8_iio*, %struct.quad8_iio** %12, align 8
  %189 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %188, i32 0, i32 4
  %190 = load i32*, i32** %189, align 8
  %191 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %192 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %190, i64 %194
  store i32 1, i32* %195, align 4
  br label %208

196:                                              ; preds = %185
  %197 = load %struct.quad8_iio*, %struct.quad8_iio** %12, align 8
  %198 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %197, i32 0, i32 4
  %199 = load i32*, i32** %198, align 8
  %200 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %201 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %199, i64 %203
  store i32 2, i32* %204, align 4
  br label %208

205:                                              ; preds = %185
  %206 = load i32, i32* @EINVAL, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %6, align 4
  br label %217

208:                                              ; preds = %196, %187
  br label %212

209:                                              ; preds = %182
  %210 = load i32, i32* @EINVAL, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %6, align 4
  br label %217

212:                                              ; preds = %208
  br label %213

213:                                              ; preds = %212, %173
  store i32 0, i32* %6, align 4
  br label %217

214:                                              ; preds = %5
  %215 = load i32, i32* @EINVAL, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %6, align 4
  br label %217

217:                                              ; preds = %214, %213, %209, %205, %164, %119, %116, %97, %39, %33
  %218 = load i32, i32* %6, align 4
  ret i32 %218
}

declare dso_local %struct.quad8_iio* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
