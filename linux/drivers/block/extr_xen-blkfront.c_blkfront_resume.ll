; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_blkfront_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_blkfront_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32, i32 }
%struct.blkfront_info = type { i32, i64, i32, i32, i32, %struct.blkfront_ring_info* }
%struct.blkfront_ring_info = type { %struct.blk_shadow* }
%struct.blk_shadow = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32*, i32, i32 }
%struct.bio_list = type { i32, i32* }

@.str = private unnamed_addr constant [21 x i8] c"blkfront_resume: %s\0A\00", align 1
@REQ_OP_FLUSH = common dso_local global i64 0, align 8
@REQ_OP_DISCARD = common dso_local global i64 0, align 8
@REQ_OP_SECURE_ERASE = common dso_local global i64 0, align 8
@REQ_FUA = common dso_local global i32 0, align 4
@BLK_STS_OK = common dso_local global i32 0, align 4
@BLKIF_STATE_CONNECTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenbus_device*)* @blkfront_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blkfront_resume(%struct.xenbus_device* %0) #0 {
  %2 = alloca %struct.xenbus_device*, align 8
  %3 = alloca %struct.blkfront_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.blkfront_ring_info*, align 8
  %8 = alloca %struct.bio_list, align 8
  %9 = alloca %struct.blk_shadow*, align 8
  store %struct.xenbus_device* %0, %struct.xenbus_device** %2, align 8
  %10 = load %struct.xenbus_device*, %struct.xenbus_device** %2, align 8
  %11 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %10, i32 0, i32 1
  %12 = call %struct.blkfront_info* @dev_get_drvdata(i32* %11)
  store %struct.blkfront_info* %12, %struct.blkfront_info** %3, align 8
  store i32 0, i32* %4, align 4
  %13 = load %struct.xenbus_device*, %struct.xenbus_device** %2, align 8
  %14 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %13, i32 0, i32 1
  %15 = load %struct.xenbus_device*, %struct.xenbus_device** %2, align 8
  %16 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_dbg(i32* %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %20 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %19, i32 0, i32 3
  %21 = call i32 @bio_list_init(i32* %20)
  %22 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %23 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %22, i32 0, i32 4
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %149, %1
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %28 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %31, label %152

31:                                               ; preds = %25
  %32 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %33 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %32, i32 0, i32 5
  %34 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %34, i64 %36
  store %struct.blkfront_ring_info* %37, %struct.blkfront_ring_info** %7, align 8
  %38 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %7, align 8
  %39 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %38, i32 0, i32 0
  %40 = load %struct.blk_shadow*, %struct.blk_shadow** %39, align 8
  store %struct.blk_shadow* %40, %struct.blk_shadow** %9, align 8
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %145, %31
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %44 = call i32 @BLK_RING_SIZE(%struct.blkfront_info* %43)
  %45 = icmp ult i32 %42, %44
  br i1 %45, label %46, label %148

46:                                               ; preds = %41
  %47 = load %struct.blk_shadow*, %struct.blk_shadow** %9, align 8
  %48 = load i32, i32* %6, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.blk_shadow, %struct.blk_shadow* %47, i64 %49
  %51 = getelementptr inbounds %struct.blk_shadow, %struct.blk_shadow* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = icmp ne %struct.TYPE_3__* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %46
  br label %145

55:                                               ; preds = %46
  %56 = load %struct.blk_shadow*, %struct.blk_shadow** %9, align 8
  %57 = load i32, i32* %6, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.blk_shadow, %struct.blk_shadow* %56, i64 %58
  %60 = getelementptr inbounds %struct.blk_shadow, %struct.blk_shadow* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = call i64 @req_op(%struct.TYPE_3__* %61)
  %63 = load i64, i64* @REQ_OP_FLUSH, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %97, label %65

65:                                               ; preds = %55
  %66 = load %struct.blk_shadow*, %struct.blk_shadow** %9, align 8
  %67 = load i32, i32* %6, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.blk_shadow, %struct.blk_shadow* %66, i64 %68
  %70 = getelementptr inbounds %struct.blk_shadow, %struct.blk_shadow* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = call i64 @req_op(%struct.TYPE_3__* %71)
  %73 = load i64, i64* @REQ_OP_DISCARD, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %97, label %75

75:                                               ; preds = %65
  %76 = load %struct.blk_shadow*, %struct.blk_shadow** %9, align 8
  %77 = load i32, i32* %6, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.blk_shadow, %struct.blk_shadow* %76, i64 %78
  %80 = getelementptr inbounds %struct.blk_shadow, %struct.blk_shadow* %79, i32 0, i32 0
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = call i64 @req_op(%struct.TYPE_3__* %81)
  %83 = load i64, i64* @REQ_OP_SECURE_ERASE, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %97, label %85

85:                                               ; preds = %75
  %86 = load %struct.blk_shadow*, %struct.blk_shadow** %9, align 8
  %87 = load i32, i32* %6, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.blk_shadow, %struct.blk_shadow* %86, i64 %88
  %90 = getelementptr inbounds %struct.blk_shadow, %struct.blk_shadow* %89, i32 0, i32 0
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @REQ_FUA, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %85, %75, %65, %55
  %98 = load %struct.blk_shadow*, %struct.blk_shadow** %9, align 8
  %99 = load i32, i32* %6, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.blk_shadow, %struct.blk_shadow* %98, i64 %100
  %102 = getelementptr inbounds %struct.blk_shadow, %struct.blk_shadow* %101, i32 0, i32 0
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 3
  %105 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %106 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %105, i32 0, i32 4
  %107 = call i32 @list_add(i32* %104, i32* %106)
  br label %145

108:                                              ; preds = %85
  %109 = load %struct.blk_shadow*, %struct.blk_shadow** %9, align 8
  %110 = load i32, i32* %6, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.blk_shadow, %struct.blk_shadow* %109, i64 %111
  %113 = getelementptr inbounds %struct.blk_shadow, %struct.blk_shadow* %112, i32 0, i32 0
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds %struct.bio_list, %struct.bio_list* %8, i32 0, i32 1
  store i32* %116, i32** %117, align 8
  %118 = load %struct.blk_shadow*, %struct.blk_shadow** %9, align 8
  %119 = load i32, i32* %6, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.blk_shadow, %struct.blk_shadow* %118, i64 %120
  %122 = getelementptr inbounds %struct.blk_shadow, %struct.blk_shadow* %121, i32 0, i32 0
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = getelementptr inbounds %struct.bio_list, %struct.bio_list* %8, i32 0, i32 0
  store i32 %125, i32* %126, align 8
  %127 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %128 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %127, i32 0, i32 3
  %129 = call i32 @bio_list_merge(i32* %128, %struct.bio_list* %8)
  %130 = load %struct.blk_shadow*, %struct.blk_shadow** %9, align 8
  %131 = load i32, i32* %6, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.blk_shadow, %struct.blk_shadow* %130, i64 %132
  %134 = getelementptr inbounds %struct.blk_shadow, %struct.blk_shadow* %133, i32 0, i32 0
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 1
  store i32* null, i32** %136, align 8
  %137 = load %struct.blk_shadow*, %struct.blk_shadow** %9, align 8
  %138 = load i32, i32* %6, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.blk_shadow, %struct.blk_shadow* %137, i64 %139
  %141 = getelementptr inbounds %struct.blk_shadow, %struct.blk_shadow* %140, i32 0, i32 0
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %141, align 8
  %143 = load i32, i32* @BLK_STS_OK, align 4
  %144 = call i32 @blk_mq_end_request(%struct.TYPE_3__* %142, i32 %143)
  br label %145

145:                                              ; preds = %108, %97, %54
  %146 = load i32, i32* %6, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %6, align 4
  br label %41

148:                                              ; preds = %41
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %5, align 4
  %151 = add i32 %150, 1
  store i32 %151, i32* %5, align 4
  br label %25

152:                                              ; preds = %25
  %153 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %154 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %155 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @BLKIF_STATE_CONNECTED, align 8
  %158 = icmp eq i64 %156, %157
  %159 = zext i1 %158 to i32
  %160 = call i32 @blkif_free(%struct.blkfront_info* %153, i32 %159)
  %161 = load %struct.xenbus_device*, %struct.xenbus_device** %2, align 8
  %162 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %163 = call i32 @talk_to_blkback(%struct.xenbus_device* %161, %struct.blkfront_info* %162)
  store i32 %163, i32* %4, align 4
  %164 = load i32, i32* %4, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %173, label %166

166:                                              ; preds = %152
  %167 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %168 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %167, i32 0, i32 2
  %169 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %170 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @blk_mq_update_nr_hw_queues(i32* %168, i32 %171)
  br label %173

173:                                              ; preds = %166, %152
  %174 = load i32, i32* %4, align 4
  ret i32 %174
}

declare dso_local %struct.blkfront_info* @dev_get_drvdata(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @bio_list_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @BLK_RING_SIZE(%struct.blkfront_info*) #1

declare dso_local i64 @req_op(%struct.TYPE_3__*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @bio_list_merge(i32*, %struct.bio_list*) #1

declare dso_local i32 @blk_mq_end_request(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @blkif_free(%struct.blkfront_info*, i32) #1

declare dso_local i32 @talk_to_blkback(%struct.xenbus_device*, %struct.blkfront_info*) #1

declare dso_local i32 @blk_mq_update_nr_hw_queues(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
