; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-zoned.c_blk_revalidate_disk_zones.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-zoned.c_blk_revalidate_disk_zones.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { i32, %struct.request_queue* }
%struct.request_queue = type { i32, i32, i32, i32 }
%struct.blk_zone = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@BLK_ZONE_TYPE_CONVENTIONAL = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%s: failed to revalidate zones\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_revalidate_disk_zones(%struct.gendisk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gendisk*, align 8
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.blk_zone*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.gendisk* %0, %struct.gendisk** %3, align 8
  %16 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %17 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %16, i32 0, i32 1
  %18 = load %struct.request_queue*, %struct.request_queue** %17, align 8
  store %struct.request_queue* %18, %struct.request_queue** %4, align 8
  %19 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %20 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %21 = call i32 @get_capacity(%struct.gendisk* %20)
  %22 = call i32 @__blkdev_nr_zones(%struct.request_queue* %19, i32 %21)
  store i32 %22, i32* %5, align 4
  store i64* null, i64** %6, align 8
  store i64* null, i64** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store %struct.blk_zone* null, %struct.blk_zone** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %23 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %24 = call i32 @queue_is_mq(%struct.request_queue* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %29 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  store i32 0, i32* %2, align 4
  br label %171

30:                                               ; preds = %1
  %31 = call i32 (...) @memalloc_noio_save()
  store i32 %31, i32* %13, align 4
  %32 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %33 = call i32 @blk_queue_is_zoned(%struct.request_queue* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35, %30
  store i32 0, i32* %5, align 4
  br label %129

39:                                               ; preds = %35
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %15, align 4
  %42 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %43 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i64* @blk_alloc_zone_bitmap(i32 %44, i32 %45)
  store i64* %46, i64** %6, align 8
  %47 = load i64*, i64** %6, align 8
  %48 = icmp ne i64* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %39
  br label %147

50:                                               ; preds = %39
  %51 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %52 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i64* @blk_alloc_zone_bitmap(i32 %53, i32 %54)
  store i64* %55, i64** %7, align 8
  %56 = load i64*, i64** %7, align 8
  %57 = icmp ne i64* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %50
  br label %147

59:                                               ; preds = %50
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %9, align 4
  %61 = call %struct.blk_zone* @blk_alloc_zones(i32* %9)
  store %struct.blk_zone* %61, %struct.blk_zone** %12, align 8
  %62 = load %struct.blk_zone*, %struct.blk_zone** %12, align 8
  %63 = icmp ne %struct.blk_zone* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  br label %147

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %111, %65
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %70, label %118

70:                                               ; preds = %66
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %10, align 4
  %73 = sub i32 %71, %72
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @min(i32 %73, i32 %74)
  store i32 %75, i32* %11, align 4
  %76 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %77 = load i32, i32* %14, align 4
  %78 = load %struct.blk_zone*, %struct.blk_zone** %12, align 8
  %79 = call i32 @blk_report_zones(%struct.gendisk* %76, i32 %77, %struct.blk_zone* %78, i32* %11)
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %15, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %70
  br label %147

83:                                               ; preds = %70
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  br label %118

87:                                               ; preds = %83
  store i32 0, i32* %8, align 4
  br label %88

88:                                               ; preds = %108, %87
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp ult i32 %89, %90
  br i1 %91, label %92, label %111

92:                                               ; preds = %88
  %93 = load %struct.blk_zone*, %struct.blk_zone** %12, align 8
  %94 = load i32, i32* %8, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %93, i64 %95
  %97 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @BLK_ZONE_TYPE_CONVENTIONAL, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %92
  %102 = load i32, i32* %10, align 4
  %103 = load i64*, i64** %7, align 8
  %104 = call i32 @set_bit(i32 %102, i64* %103)
  br label %105

105:                                              ; preds = %101, %92
  %106 = load i32, i32* %10, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %105
  %109 = load i32, i32* %8, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %8, align 4
  br label %88

111:                                              ; preds = %88
  %112 = load i32, i32* %11, align 4
  %113 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %114 = call i32 @blk_queue_zone_sectors(%struct.request_queue* %113)
  %115 = mul i32 %112, %114
  %116 = load i32, i32* %14, align 4
  %117 = add i32 %116, %115
  store i32 %117, i32* %14, align 4
  br label %66

118:                                              ; preds = %86, %66
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %5, align 4
  %121 = icmp ne i32 %119, %120
  %122 = zext i1 %121 to i32
  %123 = call i64 @WARN_ON(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %118
  %126 = load i32, i32* @EIO, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %15, align 4
  br label %147

128:                                              ; preds = %118
  br label %129

129:                                              ; preds = %128, %38
  %130 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %131 = call i32 @blk_mq_freeze_queue(%struct.request_queue* %130)
  %132 = load i32, i32* %5, align 4
  %133 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %134 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 4
  %135 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %136 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load i64*, i64** %6, align 8
  %139 = call i32 @swap(i32 %137, i64* %138)
  %140 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %141 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i64*, i64** %7, align 8
  %144 = call i32 @swap(i32 %142, i64* %143)
  %145 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %146 = call i32 @blk_mq_unfreeze_queue(%struct.request_queue* %145)
  br label %147

147:                                              ; preds = %129, %125, %82, %64, %58, %49
  %148 = load i32, i32* %13, align 4
  %149 = call i32 @memalloc_noio_restore(i32 %148)
  %150 = load %struct.blk_zone*, %struct.blk_zone** %12, align 8
  %151 = call i32 @kvfree(%struct.blk_zone* %150)
  %152 = load i64*, i64** %6, align 8
  %153 = call i32 @kfree(i64* %152)
  %154 = load i64*, i64** %7, align 8
  %155 = call i32 @kfree(i64* %154)
  %156 = load i32, i32* %15, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %169

158:                                              ; preds = %147
  %159 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %160 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @pr_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %161)
  %163 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %164 = call i32 @blk_mq_freeze_queue(%struct.request_queue* %163)
  %165 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %166 = call i32 @blk_queue_free_zone_bitmaps(%struct.request_queue* %165)
  %167 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %168 = call i32 @blk_mq_unfreeze_queue(%struct.request_queue* %167)
  br label %169

169:                                              ; preds = %158, %147
  %170 = load i32, i32* %15, align 4
  store i32 %170, i32* %2, align 4
  br label %171

171:                                              ; preds = %169, %26
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i32 @__blkdev_nr_zones(%struct.request_queue*, i32) #1

declare dso_local i32 @get_capacity(%struct.gendisk*) #1

declare dso_local i32 @queue_is_mq(%struct.request_queue*) #1

declare dso_local i32 @memalloc_noio_save(...) #1

declare dso_local i32 @blk_queue_is_zoned(%struct.request_queue*) #1

declare dso_local i64* @blk_alloc_zone_bitmap(i32, i32) #1

declare dso_local %struct.blk_zone* @blk_alloc_zones(i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @blk_report_zones(%struct.gendisk*, i32, %struct.blk_zone*, i32*) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @blk_queue_zone_sectors(%struct.request_queue*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @blk_mq_freeze_queue(%struct.request_queue*) #1

declare dso_local i32 @swap(i32, i64*) #1

declare dso_local i32 @blk_mq_unfreeze_queue(%struct.request_queue*) #1

declare dso_local i32 @memalloc_noio_restore(i32) #1

declare dso_local i32 @kvfree(%struct.blk_zone*) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @blk_queue_free_zone_bitmaps(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
