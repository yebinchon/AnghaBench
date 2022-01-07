; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_sunvdc.c_generic_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_sunvdc.c_generic_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdc_port = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.vio_completion*, i32, %struct.vio_dring_state* }
%struct.vio_completion = type { i32, i32, i32 }
%struct.vio_dring_state = type { i32 }
%struct.vio_disk_desc = type { i32, i32, i32, %struct.TYPE_3__, i64, i32, i64, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LDC_MAP_W = common dso_local global i32 0, align 4
@LDC_MAP_R = common dso_local global i32 0, align 4
@LDC_MAP_RW = common dso_local global i32 0, align 4
@LDC_MAP_SHADOW = common dso_local global i32 0, align 4
@LDC_MAP_DIRECT = common dso_local global i32 0, align 4
@LDC_MAP_IO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VIO_DRIVER_TX_RING = common dso_local global i64 0, align 8
@WAITING_FOR_GEN_CMD = common dso_local global i32 0, align 4
@VIO_ACK_ENABLE = common dso_local global i32 0, align 4
@VIO_DESC_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vdc_port*, i32, i8*, i32)* @generic_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_request(%struct.vdc_port* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vdc_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vio_dring_state*, align 8
  %11 = alloca %struct.vio_completion, align 4
  %12 = alloca %struct.vio_disk_desc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store %struct.vdc_port* %0, %struct.vdc_port** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = shl i32 1, %18
  %20 = load %struct.vdc_port*, %struct.vdc_port** %6, align 8
  %21 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %213

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  switch i32 %29, label %31 [
    i32 140, label %30
    i32 139, label %30
    i32 138, label %34
    i32 133, label %35
    i32 128, label %37
    i32 134, label %39
    i32 129, label %41
    i32 136, label %43
    i32 131, label %45
    i32 132, label %47
    i32 137, label %49
    i32 135, label %51
    i32 130, label %51
  ]

30:                                               ; preds = %28, %28
  br label %31

31:                                               ; preds = %28, %30
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %213

34:                                               ; preds = %28
  store i32 0, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %54

35:                                               ; preds = %28
  store i32 4, i32* %15, align 4
  %36 = load i32, i32* @LDC_MAP_W, align 4
  store i32 %36, i32* %13, align 4
  br label %54

37:                                               ; preds = %28
  store i32 4, i32* %15, align 4
  %38 = load i32, i32* @LDC_MAP_R, align 4
  store i32 %38, i32* %13, align 4
  br label %54

39:                                               ; preds = %28
  store i32 4, i32* %15, align 4
  %40 = load i32, i32* @LDC_MAP_W, align 4
  store i32 %40, i32* %13, align 4
  br label %54

41:                                               ; preds = %28
  store i32 4, i32* %15, align 4
  %42 = load i32, i32* @LDC_MAP_R, align 4
  store i32 %42, i32* %13, align 4
  br label %54

43:                                               ; preds = %28
  store i32 4, i32* %15, align 4
  %44 = load i32, i32* @LDC_MAP_W, align 4
  store i32 %44, i32* %13, align 4
  br label %54

45:                                               ; preds = %28
  store i32 4, i32* %15, align 4
  %46 = load i32, i32* @LDC_MAP_R, align 4
  store i32 %46, i32* %13, align 4
  br label %54

47:                                               ; preds = %28
  store i32 16, i32* %15, align 4
  %48 = load i32, i32* @LDC_MAP_RW, align 4
  store i32 %48, i32* %13, align 4
  br label %54

49:                                               ; preds = %28
  store i32 4, i32* %15, align 4
  %50 = load i32, i32* @LDC_MAP_W, align 4
  store i32 %50, i32* %13, align 4
  br label %54

51:                                               ; preds = %28, %28
  %52 = load i32, i32* @EOPNOTSUPP, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %213

54:                                               ; preds = %49, %47, %45, %43, %41, %39, %37, %35, %34
  %55 = load i32, i32* @LDC_MAP_SHADOW, align 4
  %56 = load i32, i32* @LDC_MAP_DIRECT, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @LDC_MAP_IO, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* %13, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %15, align 4
  %63 = add nsw i32 %62, 7
  %64 = and i32 %63, -8
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call i8* @kzalloc(i32 %65, i32 %66)
  store i8* %67, i8** %17, align 8
  %68 = load i8*, i8** %17, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %54
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %213

73:                                               ; preds = %54
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %15, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i32, i32* %15, align 4
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %77, %73
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @LDC_MAP_R, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load i8*, i8** %17, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @memcpy(i8* %85, i8* %86, i32 %87)
  br label %89

89:                                               ; preds = %84, %79
  %90 = load %struct.vdc_port*, %struct.vdc_port** %6, align 8
  %91 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i64, i64* %14, align 8
  %94 = call i32 @spin_lock_irqsave(i32* %92, i64 %93)
  %95 = load %struct.vdc_port*, %struct.vdc_port** %6, align 8
  %96 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 3
  %98 = load %struct.vio_dring_state*, %struct.vio_dring_state** %97, align 8
  %99 = load i64, i64* @VIO_DRIVER_TX_RING, align 8
  %100 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %98, i64 %99
  store %struct.vio_dring_state* %100, %struct.vio_dring_state** %10, align 8
  %101 = load %struct.vio_dring_state*, %struct.vio_dring_state** %10, align 8
  %102 = call %struct.vio_disk_desc* @vio_dring_cur(%struct.vio_dring_state* %101)
  store %struct.vio_disk_desc* %102, %struct.vio_disk_desc** %12, align 8
  %103 = load %struct.vdc_port*, %struct.vdc_port** %6, align 8
  %104 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i8*, i8** %17, align 8
  %108 = load i32, i32* %15, align 4
  %109 = load %struct.vio_disk_desc*, %struct.vio_disk_desc** %12, align 8
  %110 = getelementptr inbounds %struct.vio_disk_desc, %struct.vio_disk_desc* %109, i32 0, i32 8
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.vdc_port*, %struct.vdc_port** %6, align 8
  %113 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %13, align 4
  %116 = call i32 @ldc_map_single(i32 %106, i8* %107, i32 %108, i32 %111, i32 %114, i32 %115)
  store i32 %116, i32* %16, align 4
  %117 = load i32, i32* %16, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %89
  %120 = load %struct.vdc_port*, %struct.vdc_port** %6, align 8
  %121 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i64, i64* %14, align 8
  %124 = call i32 @spin_unlock_irqrestore(i32* %122, i64 %123)
  %125 = load i8*, i8** %17, align 8
  %126 = call i32 @kfree(i8* %125)
  %127 = load i32, i32* %16, align 4
  store i32 %127, i32* %5, align 4
  br label %213

128:                                              ; preds = %89
  %129 = getelementptr inbounds %struct.vio_completion, %struct.vio_completion* %11, i32 0, i32 1
  %130 = call i32 @init_completion(i32* %129)
  %131 = load i32, i32* @WAITING_FOR_GEN_CMD, align 4
  %132 = getelementptr inbounds %struct.vio_completion, %struct.vio_completion* %11, i32 0, i32 2
  store i32 %131, i32* %132, align 4
  %133 = load %struct.vdc_port*, %struct.vdc_port** %6, align 8
  %134 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  store %struct.vio_completion* %11, %struct.vio_completion** %135, align 8
  %136 = load i32, i32* @VIO_ACK_ENABLE, align 4
  %137 = load %struct.vio_disk_desc*, %struct.vio_disk_desc** %12, align 8
  %138 = getelementptr inbounds %struct.vio_disk_desc, %struct.vio_disk_desc* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 1
  store i32 %136, i32* %139, align 4
  %140 = load %struct.vdc_port*, %struct.vdc_port** %6, align 8
  %141 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.vio_disk_desc*, %struct.vio_disk_desc** %12, align 8
  %144 = getelementptr inbounds %struct.vio_disk_desc, %struct.vio_disk_desc* %143, i32 0, i32 7
  store i32 %142, i32* %144, align 8
  %145 = load i32, i32* %7, align 4
  %146 = load %struct.vio_disk_desc*, %struct.vio_disk_desc** %12, align 8
  %147 = getelementptr inbounds %struct.vio_disk_desc, %struct.vio_disk_desc* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  %148 = load %struct.vio_disk_desc*, %struct.vio_disk_desc** %12, align 8
  %149 = getelementptr inbounds %struct.vio_disk_desc, %struct.vio_disk_desc* %148, i32 0, i32 6
  store i64 0, i64* %149, align 8
  %150 = load %struct.vio_disk_desc*, %struct.vio_disk_desc** %12, align 8
  %151 = getelementptr inbounds %struct.vio_disk_desc, %struct.vio_disk_desc* %150, i32 0, i32 5
  store i32 -1, i32* %151, align 8
  %152 = load %struct.vio_disk_desc*, %struct.vio_disk_desc** %12, align 8
  %153 = getelementptr inbounds %struct.vio_disk_desc, %struct.vio_disk_desc* %152, i32 0, i32 4
  store i64 0, i64* %153, align 8
  %154 = load i32, i32* %15, align 4
  %155 = load %struct.vio_disk_desc*, %struct.vio_disk_desc** %12, align 8
  %156 = getelementptr inbounds %struct.vio_disk_desc, %struct.vio_disk_desc* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 4
  %157 = load i32, i32* %16, align 4
  %158 = load %struct.vio_disk_desc*, %struct.vio_disk_desc** %12, align 8
  %159 = getelementptr inbounds %struct.vio_disk_desc, %struct.vio_disk_desc* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 8
  %160 = call i32 (...) @wmb()
  %161 = load i32, i32* @VIO_DESC_READY, align 4
  %162 = load %struct.vio_disk_desc*, %struct.vio_disk_desc** %12, align 8
  %163 = getelementptr inbounds %struct.vio_disk_desc, %struct.vio_disk_desc* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  store i32 %161, i32* %164, align 4
  %165 = load %struct.vdc_port*, %struct.vdc_port** %6, align 8
  %166 = call i32 @__vdc_tx_trigger(%struct.vdc_port* %165)
  store i32 %166, i32* %16, align 4
  %167 = load i32, i32* %16, align 4
  %168 = icmp sge i32 %167, 0
  br i1 %168, label %169, label %190

169:                                              ; preds = %128
  %170 = load %struct.vdc_port*, %struct.vdc_port** %6, align 8
  %171 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %171, align 8
  %174 = load %struct.vio_dring_state*, %struct.vio_dring_state** %10, align 8
  %175 = load %struct.vio_dring_state*, %struct.vio_dring_state** %10, align 8
  %176 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @vio_dring_next(%struct.vio_dring_state* %174, i32 %177)
  %179 = load %struct.vio_dring_state*, %struct.vio_dring_state** %10, align 8
  %180 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 4
  %181 = load %struct.vdc_port*, %struct.vdc_port** %6, align 8
  %182 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  %184 = load i64, i64* %14, align 8
  %185 = call i32 @spin_unlock_irqrestore(i32* %183, i64 %184)
  %186 = getelementptr inbounds %struct.vio_completion, %struct.vio_completion* %11, i32 0, i32 1
  %187 = call i32 @wait_for_completion(i32* %186)
  %188 = getelementptr inbounds %struct.vio_completion, %struct.vio_completion* %11, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  store i32 %189, i32* %16, align 4
  br label %199

190:                                              ; preds = %128
  %191 = load %struct.vdc_port*, %struct.vdc_port** %6, align 8
  %192 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 1
  store %struct.vio_completion* null, %struct.vio_completion** %193, align 8
  %194 = load %struct.vdc_port*, %struct.vdc_port** %6, align 8
  %195 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = load i64, i64* %14, align 8
  %198 = call i32 @spin_unlock_irqrestore(i32* %196, i64 %197)
  br label %199

199:                                              ; preds = %190, %169
  %200 = load i32, i32* %13, align 4
  %201 = load i32, i32* @LDC_MAP_W, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %199
  %205 = load i8*, i8** %8, align 8
  %206 = load i8*, i8** %17, align 8
  %207 = load i32, i32* %9, align 4
  %208 = call i32 @memcpy(i8* %205, i8* %206, i32 %207)
  br label %209

209:                                              ; preds = %204, %199
  %210 = load i8*, i8** %17, align 8
  %211 = call i32 @kfree(i8* %210)
  %212 = load i32, i32* %16, align 4
  store i32 %212, i32* %5, align 4
  br label %213

213:                                              ; preds = %209, %119, %70, %51, %31, %25
  %214 = load i32, i32* %5, align 4
  ret i32 %214
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.vio_disk_desc* @vio_dring_cur(%struct.vio_dring_state*) #1

declare dso_local i32 @ldc_map_single(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @__vdc_tx_trigger(%struct.vdc_port*) #1

declare dso_local i32 @vio_dring_next(%struct.vio_dring_state*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
