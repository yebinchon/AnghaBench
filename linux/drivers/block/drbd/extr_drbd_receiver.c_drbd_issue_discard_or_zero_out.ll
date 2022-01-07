; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_drbd_issue_discard_or_zero_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_drbd_issue_discard_or_zero_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.block_device* }
%struct.block_device = type { i32 }
%struct.request_queue = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@EE_ZEROOUT = common dso_local global i32 0, align 4
@EE_TRIM = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@BLKDEV_ZERO_NOUNMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drbd_issue_discard_or_zero_out(%struct.drbd_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.drbd_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.block_device*, align 8
  %10 = alloca %struct.request_queue*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.drbd_device* %0, %struct.drbd_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %18 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.block_device*, %struct.block_device** %20, align 8
  store %struct.block_device* %21, %struct.block_device** %9, align 8
  %22 = load %struct.block_device*, %struct.block_device** %9, align 8
  %23 = call %struct.request_queue* @bdev_get_queue(%struct.block_device* %22)
  store %struct.request_queue* %23, %struct.request_queue** %10, align 8
  store i32 0, i32* %16, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @EE_ZEROOUT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @EE_TRIM, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28, %4
  br label %155

34:                                               ; preds = %28
  %35 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  %36 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %38, 9
  %40 = call i32 @max(i32 %39, i32 1)
  store i32 %40, i32* %14, align 4
  %41 = load %struct.block_device*, %struct.block_device** %9, align 8
  %42 = call i32 @bdev_discard_alignment(%struct.block_device* %41)
  %43 = ashr i32 %42, 9
  %44 = load i32, i32* %14, align 4
  %45 = urem i32 %43, %44
  store i32 %45, i32* %15, align 4
  %46 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  %47 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @min(i32 %49, i32 4194304)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %14, align 4
  %53 = urem i32 %51, %52
  %54 = load i32, i32* %13, align 4
  %55 = sub i32 %54, %53
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %34
  br label %155

63:                                               ; preds = %34
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %14, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %155

68:                                               ; preds = %63
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %14, align 4
  %72 = call i32 @sector_div(i32 %70, i32 %71)
  %73 = load i32, i32* %15, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %108

75:                                               ; preds = %68
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %14, align 4
  %78 = mul i32 2, %77
  %79 = icmp ult i32 %76, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %155

81:                                               ; preds = %75
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %14, align 4
  %84 = add i32 %82, %83
  %85 = load i32, i32* %15, align 4
  %86 = sub i32 %84, %85
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %14, align 4
  %89 = add i32 %87, %88
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @sector_div(i32 %90, i32 %91)
  %93 = sub i32 %89, %92
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %6, align 4
  %96 = sub i32 %94, %95
  store i32 %96, i32* %12, align 4
  %97 = load %struct.block_device*, %struct.block_device** %9, align 8
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* @GFP_NOIO, align 4
  %101 = call i32 @blkdev_issue_zeroout(%struct.block_device* %97, i32 %98, i32 %99, i32 %100, i32 0)
  %102 = load i32, i32* %16, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %16, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %7, align 4
  %106 = sub i32 %105, %104
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %11, align 4
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %81, %68
  br label %109

109:                                              ; preds = %113, %108
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %13, align 4
  %112 = icmp uge i32 %110, %111
  br i1 %112, label %113, label %127

113:                                              ; preds = %109
  %114 = load %struct.block_device*, %struct.block_device** %9, align 8
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* @GFP_NOIO, align 4
  %118 = call i32 @blkdev_issue_discard(%struct.block_device* %114, i32 %115, i32 %116, i32 %117, i32 0)
  %119 = load i32, i32* %16, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %16, align 4
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* %7, align 4
  %123 = sub i32 %122, %121
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* %6, align 4
  %126 = add i32 %125, %124
  store i32 %126, i32* %6, align 4
  br label %109

127:                                              ; preds = %109
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %154

130:                                              ; preds = %127
  %131 = load i32, i32* %7, align 4
  store i32 %131, i32* %12, align 4
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %14, align 4
  %134 = urem i32 %132, %133
  %135 = load i32, i32* %12, align 4
  %136 = sub i32 %135, %134
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* %12, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %153

139:                                              ; preds = %130
  %140 = load %struct.block_device*, %struct.block_device** %9, align 8
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* @GFP_NOIO, align 4
  %144 = call i32 @blkdev_issue_discard(%struct.block_device* %140, i32 %141, i32 %142, i32 %143, i32 0)
  %145 = load i32, i32* %16, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %16, align 4
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* %7, align 4
  %149 = sub i32 %148, %147
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* %6, align 4
  %152 = add i32 %151, %150
  store i32 %152, i32* %6, align 4
  br label %153

153:                                              ; preds = %139, %130
  br label %154

154:                                              ; preds = %153, %127
  br label %155

155:                                              ; preds = %154, %80, %67, %62, %33
  %156 = load i32, i32* %7, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %175

158:                                              ; preds = %155
  %159 = load %struct.block_device*, %struct.block_device** %9, align 8
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* @GFP_NOIO, align 4
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* @EE_TRIM, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %158
  br label %170

168:                                              ; preds = %158
  %169 = load i32, i32* @BLKDEV_ZERO_NOUNMAP, align 4
  br label %170

170:                                              ; preds = %168, %167
  %171 = phi i32 [ 0, %167 ], [ %169, %168 ]
  %172 = call i32 @blkdev_issue_zeroout(%struct.block_device* %159, i32 %160, i32 %161, i32 %162, i32 %171)
  %173 = load i32, i32* %16, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %16, align 4
  br label %175

175:                                              ; preds = %170, %155
  %176 = load i32, i32* %16, align 4
  %177 = icmp ne i32 %176, 0
  %178 = zext i1 %177 to i32
  ret i32 %178
}

declare dso_local %struct.request_queue* @bdev_get_queue(%struct.block_device*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @bdev_discard_alignment(%struct.block_device*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sector_div(i32, i32) #1

declare dso_local i32 @blkdev_issue_zeroout(%struct.block_device*, i32, i32, i32, i32) #1

declare dso_local i32 @blkdev_issue_discard(%struct.block_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
