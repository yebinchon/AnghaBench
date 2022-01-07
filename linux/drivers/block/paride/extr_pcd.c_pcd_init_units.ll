; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_pcd.c_pcd_init_units.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_pcd.c_pcd_init_units.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcd_unit = type { i32, i32*, %struct.TYPE_5__, i64, i64, i64, i32, i32*, %struct.gendisk*, i32, i32 }
%struct.TYPE_5__ = type { i32, i64, i64, %struct.pcd_unit*, i32*, i32* }
%struct.gendisk = type { i32, i32, i32, i32*, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.pcd_unit* }

@pcd_drive_count = common dso_local global i64 0, align 8
@pcd = common dso_local global %struct.pcd_unit* null, align 8
@PCD_UNITS = common dso_local global i32 0, align 4
@pcd_mq_ops = common dso_local global i32 0, align 4
@BLK_MQ_F_SHOULD_MERGE = common dso_local global i32 0, align 4
@BLK_BOUNCE_HIGH = common dso_local global i32 0, align 4
@drives = common dso_local global i64*** null, align 8
@D_SLV = common dso_local global i64 0, align 8
@D_PRT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@name = common dso_local global i8* null, align 8
@pcd_dops = common dso_local global i32 0, align 4
@major = common dso_local global i32 0, align 4
@pcd_bdops = common dso_local global i32 0, align 4
@GENHD_FL_BLOCK_EVENTS_ON_EXCL_WRITE = common dso_local global i32 0, align 4
@DISK_EVENT_MEDIA_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pcd_init_units to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcd_init_units() #0 {
  %1 = alloca %struct.pcd_unit*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.gendisk*, align 8
  store i64 0, i64* @pcd_drive_count, align 8
  store i32 0, i32* %2, align 4
  %4 = load %struct.pcd_unit*, %struct.pcd_unit** @pcd, align 8
  store %struct.pcd_unit* %4, %struct.pcd_unit** %1, align 8
  br label %5

5:                                                ; preds = %133, %0
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @PCD_UNITS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %138

9:                                                ; preds = %5
  %10 = call %struct.gendisk* @alloc_disk(i32 1)
  store %struct.gendisk* %10, %struct.gendisk** %3, align 8
  %11 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %12 = icmp ne %struct.gendisk* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  br label %133

14:                                               ; preds = %9
  %15 = load %struct.pcd_unit*, %struct.pcd_unit** %1, align 8
  %16 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %15, i32 0, i32 10
  %17 = load i32, i32* @BLK_MQ_F_SHOULD_MERGE, align 4
  %18 = call %struct.TYPE_6__* @blk_mq_init_sq_queue(i32* %16, i32* @pcd_mq_ops, i32 1, i32 %17)
  %19 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %20 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %19, i32 0, i32 6
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %20, align 8
  %21 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %22 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %21, i32 0, i32 6
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = call i64 @IS_ERR(%struct.TYPE_6__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %14
  %27 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %28 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %27, i32 0, i32 6
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %28, align 8
  %29 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %30 = call i32 @put_disk(%struct.gendisk* %29)
  br label %133

31:                                               ; preds = %14
  %32 = load %struct.pcd_unit*, %struct.pcd_unit** %1, align 8
  %33 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %32, i32 0, i32 9
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.pcd_unit*, %struct.pcd_unit** %1, align 8
  %36 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %37 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %36, i32 0, i32 6
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store %struct.pcd_unit* %35, %struct.pcd_unit** %39, align 8
  %40 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %41 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %40, i32 0, i32 6
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = load i32, i32* @BLK_BOUNCE_HIGH, align 4
  %44 = call i32 @blk_queue_bounce_limit(%struct.TYPE_6__* %42, i32 %43)
  %45 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %46 = load %struct.pcd_unit*, %struct.pcd_unit** %1, align 8
  %47 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %46, i32 0, i32 8
  store %struct.gendisk* %45, %struct.gendisk** %47, align 8
  %48 = load %struct.pcd_unit*, %struct.pcd_unit** %1, align 8
  %49 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %48, i32 0, i32 6
  %50 = load %struct.pcd_unit*, %struct.pcd_unit** %1, align 8
  %51 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %50, i32 0, i32 7
  store i32* %49, i32** %51, align 8
  %52 = load %struct.pcd_unit*, %struct.pcd_unit** %1, align 8
  %53 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %52, i32 0, i32 5
  store i64 0, i64* %53, align 8
  %54 = load %struct.pcd_unit*, %struct.pcd_unit** %1, align 8
  %55 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %54, i32 0, i32 4
  store i64 0, i64* %55, align 8
  %56 = load %struct.pcd_unit*, %struct.pcd_unit** %1, align 8
  %57 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load i64***, i64**** @drives, align 8
  %59 = load i32, i32* %2, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64**, i64*** %58, i64 %60
  %62 = load i64**, i64*** %61, align 8
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* @D_SLV, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.pcd_unit*, %struct.pcd_unit** %1, align 8
  %68 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %67, i32 0, i32 3
  store i64 %66, i64* %68, align 8
  %69 = load i64***, i64**** @drives, align 8
  %70 = load i32, i32* %2, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64**, i64*** %69, i64 %71
  %73 = load i64**, i64*** %72, align 8
  %74 = load i64*, i64** %73, align 8
  %75 = load i64, i64* @D_PRT, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %31
  %80 = load i64, i64* @pcd_drive_count, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* @pcd_drive_count, align 8
  br label %82

82:                                               ; preds = %79, %31
  %83 = load %struct.pcd_unit*, %struct.pcd_unit** %1, align 8
  %84 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 5
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load %struct.pcd_unit*, %struct.pcd_unit** %1, align 8
  %89 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %88, i32 0, i32 1
  store i32* %87, i32** %89, align 8
  %90 = load %struct.pcd_unit*, %struct.pcd_unit** %1, align 8
  %91 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i8*, i8** @name, align 8
  %94 = load i32, i32* %2, align 4
  %95 = call i32 @snprintf(i32* %92, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %93, i32 %94)
  %96 = load %struct.pcd_unit*, %struct.pcd_unit** %1, align 8
  %97 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 4
  store i32* @pcd_dops, i32** %98, align 8
  %99 = load %struct.pcd_unit*, %struct.pcd_unit** %1, align 8
  %100 = load %struct.pcd_unit*, %struct.pcd_unit** %1, align 8
  %101 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 3
  store %struct.pcd_unit* %99, %struct.pcd_unit** %102, align 8
  %103 = load %struct.pcd_unit*, %struct.pcd_unit** %1, align 8
  %104 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  store i64 0, i64* %105, align 8
  %106 = load %struct.pcd_unit*, %struct.pcd_unit** %1, align 8
  %107 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  store i32 1, i32* %108, align 8
  %109 = load %struct.pcd_unit*, %struct.pcd_unit** %1, align 8
  %110 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  store i64 0, i64* %111, align 8
  %112 = load i32, i32* @major, align 4
  %113 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %114 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %113, i32 0, i32 5
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* %2, align 4
  %116 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %117 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %119 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.pcd_unit*, %struct.pcd_unit** %1, align 8
  %122 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @strcpy(i32 %120, i32* %123)
  %125 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %126 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %125, i32 0, i32 3
  store i32* @pcd_bdops, i32** %126, align 8
  %127 = load i32, i32* @GENHD_FL_BLOCK_EVENTS_ON_EXCL_WRITE, align 4
  %128 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %129 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* @DISK_EVENT_MEDIA_CHANGE, align 4
  %131 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %132 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  br label %133

133:                                              ; preds = %82, %26, %13
  %134 = load i32, i32* %2, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %2, align 4
  %136 = load %struct.pcd_unit*, %struct.pcd_unit** %1, align 8
  %137 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %136, i32 1
  store %struct.pcd_unit* %137, %struct.pcd_unit** %1, align 8
  br label %5

138:                                              ; preds = %5
  ret void
}

declare dso_local %struct.gendisk* @alloc_disk(i32) #1

declare dso_local %struct.TYPE_6__* @blk_mq_init_sq_queue(i32*, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_6__*) #1

declare dso_local i32 @put_disk(%struct.gendisk*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @blk_queue_bounce_limit(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @snprintf(i32*, i32, i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
