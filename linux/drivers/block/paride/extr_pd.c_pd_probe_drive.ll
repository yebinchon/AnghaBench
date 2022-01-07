; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_pd.c_pd_probe_drive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_pd.c_pd_probe_drive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pd_unit = type { i32, %struct.gendisk*, %struct.TYPE_9__, i32 }
%struct.gendisk = type { i32, %struct.TYPE_10__*, %struct.pd_unit*, i32, i32, i32*, i32 }
%struct.TYPE_10__ = type { %struct.pd_unit* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32* }

@PD_BITS = common dso_local global i32 0, align 4
@pd_fops = common dso_local global i32 0, align 4
@major = common dso_local global i32 0, align 4
@pd = common dso_local global %struct.pd_unit* null, align 8
@DISK_EVENT_MEDIA_CHANGE = common dso_local global i32 0, align 4
@pd_mq_ops = common dso_local global i32 0, align 4
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@BLK_MQ_F_SHOULD_MERGE = common dso_local global i32 0, align 4
@BLK_MQ_F_BLOCKING = common dso_local global i32 0, align 4
@cluster = common dso_local global i32 0, align 4
@BLK_BOUNCE_HIGH = common dso_local global i32 0, align 4
@pd_identify = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pd_unit*)* @pd_probe_drive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pd_probe_drive(%struct.pd_unit* %0) #0 {
  %2 = alloca %struct.pd_unit*, align 8
  %3 = alloca %struct.gendisk*, align 8
  store %struct.pd_unit* %0, %struct.pd_unit** %2, align 8
  %4 = load i32, i32* @PD_BITS, align 4
  %5 = shl i32 1, %4
  %6 = call %struct.gendisk* @alloc_disk(i32 %5)
  store %struct.gendisk* %6, %struct.gendisk** %3, align 8
  %7 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %8 = icmp ne %struct.gendisk* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %147

10:                                               ; preds = %1
  %11 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %12 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %15 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @strcpy(i32 %13, i32 %16)
  %18 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %19 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %18, i32 0, i32 5
  store i32* @pd_fops, i32** %19, align 8
  %20 = load i32, i32* @major, align 4
  %21 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %22 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 4
  %23 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %24 = load %struct.pd_unit*, %struct.pd_unit** @pd, align 8
  %25 = ptrtoint %struct.pd_unit* %23 to i64
  %26 = ptrtoint %struct.pd_unit* %24 to i64
  %27 = sub i64 %25, %26
  %28 = sdiv exact i64 %27, 56
  %29 = load i32, i32* @PD_BITS, align 4
  %30 = zext i32 %29 to i64
  %31 = shl i64 %28, %30
  %32 = trunc i64 %31 to i32
  %33 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %34 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @DISK_EVENT_MEDIA_CHANGE, align 4
  %36 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %37 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %39 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %40 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %39, i32 0, i32 1
  store %struct.gendisk* %38, %struct.gendisk** %40, align 8
  %41 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %42 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %43 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %42, i32 0, i32 2
  store %struct.pd_unit* %41, %struct.pd_unit** %43, align 8
  %44 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %45 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %44, i32 0, i32 2
  %46 = call i32 @memset(%struct.TYPE_9__* %45, i32 0, i32 32)
  %47 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %48 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 6
  store i32* @pd_mq_ops, i32** %49, align 8
  %50 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %51 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  store i32 4, i32* %52, align 8
  %53 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %54 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  store i32 1, i32* %55, align 4
  %56 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %57 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  store i32 1, i32* %58, align 8
  %59 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %60 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 3
  store i32 2, i32* %61, align 4
  %62 = load i32, i32* @NUMA_NO_NODE, align 4
  %63 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %64 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 5
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* @BLK_MQ_F_SHOULD_MERGE, align 4
  %67 = load i32, i32* @BLK_MQ_F_BLOCKING, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %70 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 4
  store i32 %68, i32* %71, align 8
  %72 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %73 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %72, i32 0, i32 2
  %74 = call i64 @blk_mq_alloc_tag_set(%struct.TYPE_9__* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %10
  br label %147

77:                                               ; preds = %10
  %78 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %79 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %78, i32 0, i32 2
  %80 = call %struct.TYPE_10__* @blk_mq_init_queue(%struct.TYPE_9__* %79)
  %81 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %82 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %81, i32 0, i32 1
  store %struct.TYPE_10__* %80, %struct.TYPE_10__** %82, align 8
  %83 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %84 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %83, i32 0, i32 1
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %84, align 8
  %86 = call i64 @IS_ERR(%struct.TYPE_10__* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %77
  %89 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %90 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %89, i32 0, i32 2
  %91 = call i32 @blk_mq_free_tag_set(%struct.TYPE_9__* %90)
  %92 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %93 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %92, i32 0, i32 1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %93, align 8
  br label %147

94:                                               ; preds = %77
  %95 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %96 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %97 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %96, i32 0, i32 1
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  store %struct.pd_unit* %95, %struct.pd_unit** %99, align 8
  %100 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %101 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %100, i32 0, i32 1
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = load i32, i32* @cluster, align 4
  %104 = call i32 @blk_queue_max_hw_sectors(%struct.TYPE_10__* %102, i32 %103)
  %105 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %106 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %105, i32 0, i32 1
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = load i32, i32* @BLK_BOUNCE_HIGH, align 4
  %109 = call i32 @blk_queue_bounce_limit(%struct.TYPE_10__* %107, i32 %108)
  %110 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %111 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %114, label %135

114:                                              ; preds = %94
  %115 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %116 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %115, i32 0, i32 0
  store i32 0, i32* %116, align 8
  br label %117

117:                                              ; preds = %129, %114
  %118 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %119 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp sle i32 %120, 1
  br i1 %121, label %122, label %134

122:                                              ; preds = %117
  %123 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %124 = load i32, i32* @pd_identify, align 4
  %125 = call i64 @pd_special_command(%struct.pd_unit* %123, i32 %124)
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  br label %147

128:                                              ; preds = %122
  br label %129

129:                                              ; preds = %128
  %130 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %131 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 8
  br label %117

134:                                              ; preds = %117
  br label %142

135:                                              ; preds = %94
  %136 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %137 = load i32, i32* @pd_identify, align 4
  %138 = call i64 @pd_special_command(%struct.pd_unit* %136, i32 %137)
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  br label %147

141:                                              ; preds = %135
  br label %142

142:                                              ; preds = %141, %134
  %143 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %144 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %143, i32 0, i32 1
  store %struct.gendisk* null, %struct.gendisk** %144, align 8
  %145 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %146 = call i32 @put_disk(%struct.gendisk* %145)
  br label %147

147:                                              ; preds = %142, %140, %127, %88, %76, %9
  ret void
}

declare dso_local %struct.gendisk* @alloc_disk(i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i64 @blk_mq_alloc_tag_set(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_10__* @blk_mq_init_queue(%struct.TYPE_9__*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_10__*) #1

declare dso_local i32 @blk_mq_free_tag_set(%struct.TYPE_9__*) #1

declare dso_local i32 @blk_queue_max_hw_sectors(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @blk_queue_bounce_limit(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @pd_special_command(%struct.pd_unit*, i32) #1

declare dso_local i32 @put_disk(%struct.gendisk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
