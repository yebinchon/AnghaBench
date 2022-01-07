; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_fill_bitmap_rle_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_fill_bitmap_rle_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { i32 }
%struct.p_compressed_bm = type { i32 }
%struct.bm_xfer_ctx = type { i64, i64, i32 }
%struct.bitstream = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [61 x i8] c"unexpected zero runlength while encoding bitmap t:%u bo:%lu\0A\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"error while encoding bitmap: %d\0A\00", align 1
@BITS_PER_LONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbd_device*, %struct.p_compressed_bm*, i32, %struct.bm_xfer_ctx*)* @fill_bitmap_rle_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_bitmap_rle_bits(%struct.drbd_device* %0, %struct.p_compressed_bm* %1, i32 %2, %struct.bm_xfer_ctx* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drbd_device*, align 8
  %7 = alloca %struct.p_compressed_bm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bm_xfer_ctx*, align 8
  %10 = alloca %struct.bitstream, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.drbd_device* %0, %struct.drbd_device** %6, align 8
  store %struct.p_compressed_bm* %1, %struct.p_compressed_bm** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.bm_xfer_ctx* %3, %struct.bm_xfer_ctx** %9, align 8
  %18 = call i32 (...) @rcu_read_lock()
  %19 = load %struct.drbd_device*, %struct.drbd_device** %6, align 8
  %20 = call %struct.TYPE_8__* @first_peer_device(%struct.drbd_device* %19)
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.TYPE_7__* @rcu_dereference(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %17, align 4
  %28 = call i32 (...) @rcu_read_unlock()
  %29 = load i32, i32* %17, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %4
  %32 = load %struct.drbd_device*, %struct.drbd_device** %6, align 8
  %33 = call %struct.TYPE_8__* @first_peer_device(%struct.drbd_device* %32)
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %37, 90
  br i1 %38, label %39, label %40

39:                                               ; preds = %31, %4
  store i32 0, i32* %5, align 4
  br label %196

40:                                               ; preds = %31
  %41 = load %struct.bm_xfer_ctx*, %struct.bm_xfer_ctx** %9, align 8
  %42 = getelementptr inbounds %struct.bm_xfer_ctx, %struct.bm_xfer_ctx* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.bm_xfer_ctx*, %struct.bm_xfer_ctx** %9, align 8
  %45 = getelementptr inbounds %struct.bm_xfer_ctx, %struct.bm_xfer_ctx* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp uge i64 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %196

49:                                               ; preds = %40
  %50 = load %struct.p_compressed_bm*, %struct.p_compressed_bm** %7, align 8
  %51 = getelementptr inbounds %struct.p_compressed_bm, %struct.p_compressed_bm* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @bitstream_init(%struct.bitstream* %10, i32 %52, i32 %53, i32 0)
  %55 = load %struct.p_compressed_bm*, %struct.p_compressed_bm** %7, align 8
  %56 = getelementptr inbounds %struct.p_compressed_bm, %struct.p_compressed_bm* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @memset(i32 %57, i32 0, i32 %58)
  store i64 0, i64* %11, align 8
  store i32 2, i32* %15, align 4
  br label %60

60:                                               ; preds = %140, %49
  %61 = load i32, i32* %15, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load %struct.drbd_device*, %struct.drbd_device** %6, align 8
  %65 = load %struct.bm_xfer_ctx*, %struct.bm_xfer_ctx** %9, align 8
  %66 = getelementptr inbounds %struct.bm_xfer_ctx, %struct.bm_xfer_ctx* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @_drbd_bm_find_next_zero(%struct.drbd_device* %64, i64 %67)
  br label %75

69:                                               ; preds = %60
  %70 = load %struct.drbd_device*, %struct.drbd_device** %6, align 8
  %71 = load %struct.bm_xfer_ctx*, %struct.bm_xfer_ctx** %9, align 8
  %72 = getelementptr inbounds %struct.bm_xfer_ctx, %struct.bm_xfer_ctx* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @_drbd_bm_find_next(%struct.drbd_device* %70, i64 %73)
  br label %75

75:                                               ; preds = %69, %63
  %76 = phi i64 [ %68, %63 ], [ %74, %69 ]
  store i64 %76, i64* %12, align 8
  %77 = load i64, i64* %12, align 8
  %78 = icmp eq i64 %77, -1
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load %struct.bm_xfer_ctx*, %struct.bm_xfer_ctx** %9, align 8
  %81 = getelementptr inbounds %struct.bm_xfer_ctx, %struct.bm_xfer_ctx* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %12, align 8
  br label %83

83:                                               ; preds = %79, %75
  %84 = load i64, i64* %12, align 8
  %85 = load %struct.bm_xfer_ctx*, %struct.bm_xfer_ctx** %9, align 8
  %86 = getelementptr inbounds %struct.bm_xfer_ctx, %struct.bm_xfer_ctx* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = sub i64 %84, %87
  store i64 %88, i64* %13, align 8
  %89 = load i32, i32* %15, align 4
  %90 = icmp eq i32 %89, 2
  br i1 %90, label %91, label %104

91:                                               ; preds = %83
  %92 = load i64, i64* %13, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = load %struct.p_compressed_bm*, %struct.p_compressed_bm** %7, align 8
  %96 = call i32 @dcbp_set_start(%struct.p_compressed_bm* %95, i32 1)
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %15, align 4
  br label %140

101:                                              ; preds = %91
  %102 = load %struct.p_compressed_bm*, %struct.p_compressed_bm** %7, align 8
  %103 = call i32 @dcbp_set_start(%struct.p_compressed_bm* %102, i32 0)
  br label %104

104:                                              ; preds = %101, %83
  %105 = load i64, i64* %13, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %104
  %108 = load %struct.drbd_device*, %struct.drbd_device** %6, align 8
  %109 = load i32, i32* %15, align 4
  %110 = load %struct.bm_xfer_ctx*, %struct.bm_xfer_ctx** %9, align 8
  %111 = getelementptr inbounds %struct.bm_xfer_ctx, %struct.bm_xfer_ctx* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 (%struct.drbd_device*, i8*, i32, ...) @drbd_err(%struct.drbd_device* %108, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %109, i64 %112)
  store i32 -1, i32* %5, align 4
  br label %196

114:                                              ; preds = %104
  %115 = load i64, i64* %13, align 8
  %116 = call i32 @vli_encode_bits(%struct.bitstream* %10, i64 %115)
  store i32 %116, i32* %16, align 4
  %117 = load i32, i32* %16, align 4
  %118 = load i32, i32* @ENOBUFS, align 4
  %119 = sub nsw i32 0, %118
  %120 = icmp eq i32 %117, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  br label %148

122:                                              ; preds = %114
  %123 = load i32, i32* %16, align 4
  %124 = icmp sle i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %122
  %126 = load %struct.drbd_device*, %struct.drbd_device** %6, align 8
  %127 = load i32, i32* %16, align 4
  %128 = call i32 (%struct.drbd_device*, i8*, i32, ...) @drbd_err(%struct.drbd_device* %126, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %127)
  store i32 0, i32* %5, align 4
  br label %196

129:                                              ; preds = %122
  %130 = load i32, i32* %15, align 4
  %131 = icmp ne i32 %130, 0
  %132 = xor i1 %131, true
  %133 = zext i1 %132 to i32
  store i32 %133, i32* %15, align 4
  %134 = load i64, i64* %13, align 8
  %135 = load i64, i64* %11, align 8
  %136 = add i64 %135, %134
  store i64 %136, i64* %11, align 8
  %137 = load i64, i64* %12, align 8
  %138 = load %struct.bm_xfer_ctx*, %struct.bm_xfer_ctx** %9, align 8
  %139 = getelementptr inbounds %struct.bm_xfer_ctx, %struct.bm_xfer_ctx* %138, i32 0, i32 0
  store i64 %137, i64* %139, align 8
  br label %140

140:                                              ; preds = %129, %94
  %141 = load %struct.bm_xfer_ctx*, %struct.bm_xfer_ctx** %9, align 8
  %142 = getelementptr inbounds %struct.bm_xfer_ctx, %struct.bm_xfer_ctx* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.bm_xfer_ctx*, %struct.bm_xfer_ctx** %9, align 8
  %145 = getelementptr inbounds %struct.bm_xfer_ctx, %struct.bm_xfer_ctx* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = icmp ult i64 %143, %146
  br i1 %147, label %60, label %148

148:                                              ; preds = %140, %121
  %149 = getelementptr inbounds %struct.bitstream, %struct.bitstream* %10, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.p_compressed_bm*, %struct.p_compressed_bm** %7, align 8
  %153 = getelementptr inbounds %struct.p_compressed_bm, %struct.p_compressed_bm* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = sub nsw i32 %151, %154
  %156 = getelementptr inbounds %struct.bitstream, %struct.bitstream* %10, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 0
  %160 = xor i1 %159, true
  %161 = xor i1 %160, true
  %162 = zext i1 %161 to i32
  %163 = add nsw i32 %155, %162
  store i32 %163, i32* %14, align 4
  %164 = load i64, i64* %11, align 8
  %165 = load i32, i32* %14, align 4
  %166 = shl i32 %165, 3
  %167 = zext i32 %166 to i64
  %168 = icmp ult i64 %164, %167
  br i1 %168, label %169, label %185

169:                                              ; preds = %148
  %170 = load i64, i64* %11, align 8
  %171 = load %struct.bm_xfer_ctx*, %struct.bm_xfer_ctx** %9, align 8
  %172 = getelementptr inbounds %struct.bm_xfer_ctx, %struct.bm_xfer_ctx* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = sub i64 %173, %170
  store i64 %174, i64* %172, align 8
  %175 = load %struct.bm_xfer_ctx*, %struct.bm_xfer_ctx** %9, align 8
  %176 = call i32 @bm_xfer_ctx_bit_to_word_offset(%struct.bm_xfer_ctx* %175)
  %177 = load %struct.bm_xfer_ctx*, %struct.bm_xfer_ctx** %9, align 8
  %178 = getelementptr inbounds %struct.bm_xfer_ctx, %struct.bm_xfer_ctx* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @BITS_PER_LONG, align 4
  %181 = mul nsw i32 %179, %180
  %182 = sext i32 %181 to i64
  %183 = load %struct.bm_xfer_ctx*, %struct.bm_xfer_ctx** %9, align 8
  %184 = getelementptr inbounds %struct.bm_xfer_ctx, %struct.bm_xfer_ctx* %183, i32 0, i32 0
  store i64 %182, i64* %184, align 8
  store i32 0, i32* %5, align 4
  br label %196

185:                                              ; preds = %148
  %186 = load %struct.bm_xfer_ctx*, %struct.bm_xfer_ctx** %9, align 8
  %187 = call i32 @bm_xfer_ctx_bit_to_word_offset(%struct.bm_xfer_ctx* %186)
  %188 = load %struct.p_compressed_bm*, %struct.p_compressed_bm** %7, align 8
  %189 = getelementptr inbounds %struct.bitstream, %struct.bitstream* %10, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = sub nsw i32 8, %191
  %193 = and i32 %192, 7
  %194 = call i32 @dcbp_set_pad_bits(%struct.p_compressed_bm* %188, i32 %193)
  %195 = load i32, i32* %14, align 4
  store i32 %195, i32* %5, align 4
  br label %196

196:                                              ; preds = %185, %169, %125, %107, %48, %39
  %197 = load i32, i32* %5, align 4
  ret i32 %197
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.TYPE_7__* @rcu_dereference(i32) #1

declare dso_local %struct.TYPE_8__* @first_peer_device(%struct.drbd_device*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @bitstream_init(%struct.bitstream*, i32, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @_drbd_bm_find_next_zero(%struct.drbd_device*, i64) #1

declare dso_local i64 @_drbd_bm_find_next(%struct.drbd_device*, i64) #1

declare dso_local i32 @dcbp_set_start(%struct.p_compressed_bm*, i32) #1

declare dso_local i32 @drbd_err(%struct.drbd_device*, i8*, i32, ...) #1

declare dso_local i32 @vli_encode_bits(%struct.bitstream*, i64) #1

declare dso_local i32 @bm_xfer_ctx_bit_to_word_offset(%struct.bm_xfer_ctx*) #1

declare dso_local i32 @dcbp_set_pad_bits(%struct.p_compressed_bm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
