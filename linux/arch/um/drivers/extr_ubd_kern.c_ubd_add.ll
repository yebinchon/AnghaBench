; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_ubd_kern.c_ubd_add.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_ubd_kern.c_ubd_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubd = type { %struct.TYPE_14__*, %struct.TYPE_15__, i32, i32* }
%struct.TYPE_14__ = type { %struct.ubd* }
%struct.TYPE_15__ = type { i32, i32, %struct.ubd*, i32, i32, i32* }
%struct.TYPE_13__ = type { i32 }

@ubd_devs = common dso_local global %struct.ubd* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"Couldn't determine size of device's file\00", align 1
@ubd_mq_ops = common dso_local global i32 0, align 4
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@BLK_MQ_F_SHOULD_MERGE = common dso_local global i32 0, align 4
@MAX_SG = common dso_local global i32 0, align 4
@UBD_MAJOR = common dso_local global i64 0, align 8
@ubd_gendisk = common dso_local global %struct.TYPE_13__** null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to register device\00", align 1
@fake_major = common dso_local global i64 0, align 8
@fake_gendisk = common dso_local global %struct.TYPE_13__** null, align 8
@fake_ide = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @ubd_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubd_add(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.ubd*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %7 = load %struct.ubd*, %struct.ubd** @ubd_devs, align 8
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.ubd, %struct.ubd* %7, i64 %9
  store %struct.ubd* %10, %struct.ubd** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.ubd*, %struct.ubd** %5, align 8
  %12 = getelementptr inbounds %struct.ubd, %struct.ubd* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %132

16:                                               ; preds = %2
  %17 = load %struct.ubd*, %struct.ubd** %5, align 8
  %18 = load %struct.ubd*, %struct.ubd** %5, align 8
  %19 = getelementptr inbounds %struct.ubd, %struct.ubd* %18, i32 0, i32 2
  %20 = call i32 @ubd_file_size(%struct.ubd* %17, i32* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i8**, i8*** %4, align 8
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %24, align 8
  br label %132

25:                                               ; preds = %16
  %26 = load %struct.ubd*, %struct.ubd** %5, align 8
  %27 = getelementptr inbounds %struct.ubd, %struct.ubd* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @ROUND_BLOCK(i32 %28)
  %30 = load %struct.ubd*, %struct.ubd** %5, align 8
  %31 = getelementptr inbounds %struct.ubd, %struct.ubd* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.ubd*, %struct.ubd** %5, align 8
  %33 = getelementptr inbounds %struct.ubd, %struct.ubd* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 5
  store i32* @ubd_mq_ops, i32** %34, align 8
  %35 = load %struct.ubd*, %struct.ubd** %5, align 8
  %36 = getelementptr inbounds %struct.ubd, %struct.ubd* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  store i32 64, i32* %37, align 8
  %38 = load i32, i32* @NUMA_NO_NODE, align 4
  %39 = load %struct.ubd*, %struct.ubd** %5, align 8
  %40 = getelementptr inbounds %struct.ubd, %struct.ubd* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 4
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @BLK_MQ_F_SHOULD_MERGE, align 4
  %43 = load %struct.ubd*, %struct.ubd** %5, align 8
  %44 = getelementptr inbounds %struct.ubd, %struct.ubd* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 3
  store i32 %42, i32* %45, align 8
  %46 = load %struct.ubd*, %struct.ubd** %5, align 8
  %47 = load %struct.ubd*, %struct.ubd** %5, align 8
  %48 = getelementptr inbounds %struct.ubd, %struct.ubd* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 2
  store %struct.ubd* %46, %struct.ubd** %49, align 8
  %50 = load %struct.ubd*, %struct.ubd** %5, align 8
  %51 = getelementptr inbounds %struct.ubd, %struct.ubd* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 1
  store i32 1, i32* %52, align 4
  %53 = load %struct.ubd*, %struct.ubd** %5, align 8
  %54 = getelementptr inbounds %struct.ubd, %struct.ubd* %53, i32 0, i32 1
  %55 = call i32 @blk_mq_alloc_tag_set(%struct.TYPE_15__* %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %25
  br label %132

59:                                               ; preds = %25
  %60 = load %struct.ubd*, %struct.ubd** %5, align 8
  %61 = getelementptr inbounds %struct.ubd, %struct.ubd* %60, i32 0, i32 1
  %62 = call %struct.TYPE_14__* @blk_mq_init_queue(%struct.TYPE_15__* %61)
  %63 = load %struct.ubd*, %struct.ubd** %5, align 8
  %64 = getelementptr inbounds %struct.ubd, %struct.ubd* %63, i32 0, i32 0
  store %struct.TYPE_14__* %62, %struct.TYPE_14__** %64, align 8
  %65 = load %struct.ubd*, %struct.ubd** %5, align 8
  %66 = getelementptr inbounds %struct.ubd, %struct.ubd* %65, i32 0, i32 0
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %66, align 8
  %68 = call i64 @IS_ERR(%struct.TYPE_14__* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %59
  %71 = load %struct.ubd*, %struct.ubd** %5, align 8
  %72 = getelementptr inbounds %struct.ubd, %struct.ubd* %71, i32 0, i32 0
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %72, align 8
  %74 = call i32 @PTR_ERR(%struct.TYPE_14__* %73)
  store i32 %74, i32* %6, align 4
  br label %134

75:                                               ; preds = %59
  %76 = load %struct.ubd*, %struct.ubd** %5, align 8
  %77 = load %struct.ubd*, %struct.ubd** %5, align 8
  %78 = getelementptr inbounds %struct.ubd, %struct.ubd* %77, i32 0, i32 0
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  store %struct.ubd* %76, %struct.ubd** %80, align 8
  %81 = load %struct.ubd*, %struct.ubd** %5, align 8
  %82 = getelementptr inbounds %struct.ubd, %struct.ubd* %81, i32 0, i32 0
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %82, align 8
  %84 = call i32 @blk_queue_write_cache(%struct.TYPE_14__* %83, i32 1, i32 0)
  %85 = load %struct.ubd*, %struct.ubd** %5, align 8
  %86 = getelementptr inbounds %struct.ubd, %struct.ubd* %85, i32 0, i32 0
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %86, align 8
  %88 = load i32, i32* @MAX_SG, align 4
  %89 = call i32 @blk_queue_max_segments(%struct.TYPE_14__* %87, i32 %88)
  %90 = load i64, i64* @UBD_MAJOR, align 8
  %91 = load %struct.ubd*, %struct.ubd** %5, align 8
  %92 = getelementptr inbounds %struct.ubd, %struct.ubd* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %3, align 4
  %95 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @ubd_gendisk, align 8
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %95, i64 %97
  %99 = call i32 @ubd_disk_register(i64 %90, i32 %93, i32 %94, %struct.TYPE_13__** %98)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %75
  %103 = load i8**, i8*** %4, align 8
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8** %103, align 8
  br label %134

104:                                              ; preds = %75
  %105 = load i64, i64* @fake_major, align 8
  %106 = load i64, i64* @UBD_MAJOR, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %119

108:                                              ; preds = %104
  %109 = load i64, i64* @fake_major, align 8
  %110 = load %struct.ubd*, %struct.ubd** %5, align 8
  %111 = getelementptr inbounds %struct.ubd, %struct.ubd* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %3, align 4
  %114 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @fake_gendisk, align 8
  %115 = load i32, i32* %3, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %114, i64 %116
  %118 = call i32 @ubd_disk_register(i64 %109, i32 %112, i32 %113, %struct.TYPE_13__** %117)
  br label %119

119:                                              ; preds = %108, %104
  %120 = load i64, i64* @fake_ide, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %119
  %123 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @ubd_gendisk, align 8
  %124 = load i32, i32* %3, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %123, i64 %125
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @make_ide_entries(i32 %129)
  br label %131

131:                                              ; preds = %122, %119
  store i32 0, i32* %6, align 4
  br label %132

132:                                              ; preds = %148, %131, %58, %23, %15
  %133 = load i32, i32* %6, align 4
  ret i32 %133

134:                                              ; preds = %102, %70
  %135 = load %struct.ubd*, %struct.ubd** %5, align 8
  %136 = getelementptr inbounds %struct.ubd, %struct.ubd* %135, i32 0, i32 1
  %137 = call i32 @blk_mq_free_tag_set(%struct.TYPE_15__* %136)
  %138 = load %struct.ubd*, %struct.ubd** %5, align 8
  %139 = getelementptr inbounds %struct.ubd, %struct.ubd* %138, i32 0, i32 0
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %139, align 8
  %141 = call i64 @IS_ERR(%struct.TYPE_14__* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %134
  %144 = load %struct.ubd*, %struct.ubd** %5, align 8
  %145 = getelementptr inbounds %struct.ubd, %struct.ubd* %144, i32 0, i32 0
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %145, align 8
  %147 = call i32 @blk_cleanup_queue(%struct.TYPE_14__* %146)
  br label %148

148:                                              ; preds = %143, %134
  br label %132
}

declare dso_local i32 @ubd_file_size(%struct.ubd*, i32*) #1

declare dso_local i32 @ROUND_BLOCK(i32) #1

declare dso_local i32 @blk_mq_alloc_tag_set(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_14__* @blk_mq_init_queue(%struct.TYPE_15__*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_14__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_14__*) #1

declare dso_local i32 @blk_queue_write_cache(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @blk_queue_max_segments(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ubd_disk_register(i64, i32, i32, %struct.TYPE_13__**) #1

declare dso_local i32 @make_ide_entries(i32) #1

declare dso_local i32 @blk_mq_free_tag_set(%struct.TYPE_15__*) #1

declare dso_local i32 @blk_cleanup_queue(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
