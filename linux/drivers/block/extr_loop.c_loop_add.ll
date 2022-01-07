; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_loop.c_loop_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_loop.c_loop_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop_device = type { i32, %struct.TYPE_11__, %struct.TYPE_10__*, i32, i32, %struct.gendisk*, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, %struct.loop_device*, i32, i32, i32* }
%struct.TYPE_10__ = type { %struct.loop_device* }
%struct.gendisk = type { i32, i32, %struct.TYPE_10__*, %struct.loop_device*, i32*, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@Lo_unbound = common dso_local global i32 0, align 4
@loop_index_idr = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@loop_mq_ops = common dso_local global i32 0, align 4
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@BLK_MQ_F_SHOULD_MERGE = common dso_local global i32 0, align 4
@BLK_DEF_MAX_SECTORS = common dso_local global i32 0, align 4
@QUEUE_FLAG_NOMERGES = common dso_local global i32 0, align 4
@part_shift = common dso_local global i32 0, align 4
@GENHD_FL_NO_PART_SCAN = common dso_local global i32 0, align 4
@GENHD_FL_EXT_DEVT = common dso_local global i32 0, align 4
@LOOP_MAJOR = common dso_local global i32 0, align 4
@lo_fops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"loop%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop_device**, i32)* @loop_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loop_add(%struct.loop_device** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.loop_device**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.loop_device*, align 8
  %7 = alloca %struct.gendisk*, align 8
  %8 = alloca i32, align 4
  store %struct.loop_device** %0, %struct.loop_device*** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.loop_device* @kzalloc(i32 80, i32 %11)
  store %struct.loop_device* %12, %struct.loop_device** %6, align 8
  %13 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %14 = icmp ne %struct.loop_device* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %190

16:                                               ; preds = %2
  %17 = load i32, i32* @Lo_unbound, align 4
  %18 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %19 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %5, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %16
  %23 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i32 @idr_alloc(i32* @loop_index_idr, %struct.loop_device* %23, i32 %24, i32 %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @ENOSPC, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load i32, i32* @EEXIST, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %33, %22
  br label %41

37:                                               ; preds = %16
  %38 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i32 @idr_alloc(i32* @loop_index_idr, %struct.loop_device* %38, i32 0, i32 0, i32 %39)
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %37, %36
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %187

45:                                               ; preds = %41
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %8, align 4
  %49 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %50 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 6
  store i32* @loop_mq_ops, i32** %51, align 8
  %52 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %53 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %56 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  store i32 128, i32* %57, align 4
  %58 = load i32, i32* @NUMA_NO_NODE, align 4
  %59 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %60 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 5
  store i32 %58, i32* %61, align 4
  %62 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %63 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 2
  store i32 4, i32* %64, align 8
  %65 = load i32, i32* @BLK_MQ_F_SHOULD_MERGE, align 4
  %66 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %67 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 4
  store i32 %65, i32* %68, align 8
  %69 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %70 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %71 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 3
  store %struct.loop_device* %69, %struct.loop_device** %72, align 8
  %73 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %74 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %73, i32 0, i32 1
  %75 = call i32 @blk_mq_alloc_tag_set(%struct.TYPE_11__* %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %45
  br label %184

79:                                               ; preds = %45
  %80 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %81 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %80, i32 0, i32 1
  %82 = call %struct.TYPE_10__* @blk_mq_init_queue(%struct.TYPE_11__* %81)
  %83 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %84 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %83, i32 0, i32 2
  store %struct.TYPE_10__* %82, %struct.TYPE_10__** %84, align 8
  %85 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %86 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %85, i32 0, i32 2
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = call i64 @IS_ERR(%struct.TYPE_10__* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %79
  %91 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %92 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %91, i32 0, i32 2
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = call i32 @PTR_ERR(%struct.TYPE_10__* %93)
  store i32 %94, i32* %8, align 4
  br label %180

95:                                               ; preds = %79
  %96 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %97 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %98 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %97, i32 0, i32 2
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  store %struct.loop_device* %96, %struct.loop_device** %100, align 8
  %101 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %102 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %101, i32 0, i32 2
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = load i32, i32* @BLK_DEF_MAX_SECTORS, align 4
  %105 = call i32 @blk_queue_max_hw_sectors(%struct.TYPE_10__* %103, i32 %104)
  %106 = load i32, i32* @QUEUE_FLAG_NOMERGES, align 4
  %107 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %108 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %107, i32 0, i32 2
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = call i32 @blk_queue_flag_set(i32 %106, %struct.TYPE_10__* %109)
  %111 = load i32, i32* @ENOMEM, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* @part_shift, align 4
  %114 = shl i32 1, %113
  %115 = call %struct.gendisk* @alloc_disk(i32 %114)
  %116 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %117 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %116, i32 0, i32 5
  store %struct.gendisk* %115, %struct.gendisk** %117, align 8
  store %struct.gendisk* %115, %struct.gendisk** %7, align 8
  %118 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %119 = icmp ne %struct.gendisk* %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %95
  br label %175

121:                                              ; preds = %95
  %122 = load i32, i32* @part_shift, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %130, label %124

124:                                              ; preds = %121
  %125 = load i32, i32* @GENHD_FL_NO_PART_SCAN, align 4
  %126 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %127 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %124, %121
  %131 = load i32, i32* @GENHD_FL_EXT_DEVT, align 4
  %132 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %133 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 4
  %136 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %137 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %136, i32 0, i32 4
  %138 = call i32 @atomic_set(i32* %137, i32 0)
  %139 = load i32, i32* %5, align 4
  %140 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %141 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %143 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %142, i32 0, i32 3
  %144 = call i32 @spin_lock_init(i32* %143)
  %145 = load i32, i32* @LOOP_MAJOR, align 4
  %146 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %147 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %146, i32 0, i32 5
  store i32 %145, i32* %147, align 8
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* @part_shift, align 4
  %150 = shl i32 %148, %149
  %151 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %152 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  %153 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %154 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %153, i32 0, i32 4
  store i32* @lo_fops, i32** %154, align 8
  %155 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %156 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %157 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %156, i32 0, i32 3
  store %struct.loop_device* %155, %struct.loop_device** %157, align 8
  %158 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %159 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %158, i32 0, i32 2
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %159, align 8
  %161 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %162 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %161, i32 0, i32 2
  store %struct.TYPE_10__* %160, %struct.TYPE_10__** %162, align 8
  %163 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %164 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %5, align 4
  %167 = call i32 @sprintf(i32 %165, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %166)
  %168 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %169 = call i32 @add_disk(%struct.gendisk* %168)
  %170 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %171 = load %struct.loop_device**, %struct.loop_device*** %4, align 8
  store %struct.loop_device* %170, %struct.loop_device** %171, align 8
  %172 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %173 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  store i32 %174, i32* %3, align 4
  br label %192

175:                                              ; preds = %120
  %176 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %177 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %176, i32 0, i32 2
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %177, align 8
  %179 = call i32 @blk_cleanup_queue(%struct.TYPE_10__* %178)
  br label %180

180:                                              ; preds = %175, %90
  %181 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %182 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %181, i32 0, i32 1
  %183 = call i32 @blk_mq_free_tag_set(%struct.TYPE_11__* %182)
  br label %184

184:                                              ; preds = %180, %78
  %185 = load i32, i32* %5, align 4
  %186 = call i32 @idr_remove(i32* @loop_index_idr, i32 %185)
  br label %187

187:                                              ; preds = %184, %44
  %188 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %189 = call i32 @kfree(%struct.loop_device* %188)
  br label %190

190:                                              ; preds = %187, %15
  %191 = load i32, i32* %8, align 4
  store i32 %191, i32* %3, align 4
  br label %192

192:                                              ; preds = %190, %130
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

declare dso_local %struct.loop_device* @kzalloc(i32, i32) #1

declare dso_local i32 @idr_alloc(i32*, %struct.loop_device*, i32, i32, i32) #1

declare dso_local i32 @blk_mq_alloc_tag_set(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_10__* @blk_mq_init_queue(%struct.TYPE_11__*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_10__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_10__*) #1

declare dso_local i32 @blk_queue_max_hw_sectors(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @blk_queue_flag_set(i32, %struct.TYPE_10__*) #1

declare dso_local %struct.gendisk* @alloc_disk(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @add_disk(%struct.gendisk*) #1

declare dso_local i32 @blk_cleanup_queue(%struct.TYPE_10__*) #1

declare dso_local i32 @blk_mq_free_tag_set(%struct.TYPE_11__*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @kfree(%struct.loop_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
