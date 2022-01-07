; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_new_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_new_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktcdvd_device = type { i64, i32, %struct.TYPE_2__, %struct.block_device* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.block_device = type { i64 }

@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"recursive setup not allowed\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@MAX_WRITERS = common dso_local global i32 0, align 4
@pkt_devs = common dso_local global %struct.pktcdvd_device** null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"%s already setup\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"can't chain pktcdvd devices\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_NDELAY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@CD_FRAMESIZE = common dso_local global i32 0, align 4
@kcdrwd = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"can't start kernel thread\0A\00", align 1
@pkt_proc = common dso_local global i32 0, align 4
@pkt_seq_show = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"writer mapped to %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pktcdvd_device*, i64)* @pkt_new_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkt_new_dev(%struct.pktcdvd_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pktcdvd_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.block_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pktcdvd_device*, align 8
  store %struct.pktcdvd_device* %0, %struct.pktcdvd_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* @BDEVNAME_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %18 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %24 = call i32 (%struct.pktcdvd_device*, i8*, ...) @pkt_err(%struct.pktcdvd_device* %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %160

27:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %70, %27
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @MAX_WRITERS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %73

32:                                               ; preds = %28
  %33 = load %struct.pktcdvd_device**, %struct.pktcdvd_device*** @pkt_devs, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.pktcdvd_device*, %struct.pktcdvd_device** %33, i64 %35
  %37 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %36, align 8
  store %struct.pktcdvd_device* %37, %struct.pktcdvd_device** %12, align 8
  %38 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %12, align 8
  %39 = icmp ne %struct.pktcdvd_device* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  br label %70

41:                                               ; preds = %32
  %42 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %12, align 8
  %43 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %42, i32 0, i32 3
  %44 = load %struct.block_device*, %struct.block_device** %43, align 8
  %45 = getelementptr inbounds %struct.block_device, %struct.block_device* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %5, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %41
  %50 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %51 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %12, align 8
  %52 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %51, i32 0, i32 3
  %53 = load %struct.block_device*, %struct.block_device** %52, align 8
  %54 = call i32 @bdevname(%struct.block_device* %53, i8* %16)
  %55 = call i32 (%struct.pktcdvd_device*, i8*, ...) @pkt_err(%struct.pktcdvd_device* %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @EBUSY, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %160

58:                                               ; preds = %41
  %59 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %12, align 8
  %60 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %5, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %66 = call i32 (%struct.pktcdvd_device*, i8*, ...) @pkt_err(%struct.pktcdvd_device* %65, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* @EBUSY, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %160

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69, %40
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %28

73:                                               ; preds = %28
  %74 = load i64, i64* %5, align 8
  %75 = call %struct.block_device* @bdget(i64 %74)
  store %struct.block_device* %75, %struct.block_device** %10, align 8
  %76 = load %struct.block_device*, %struct.block_device** %10, align 8
  %77 = icmp ne %struct.block_device* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %160

81:                                               ; preds = %73
  %82 = load %struct.block_device*, %struct.block_device** %10, align 8
  %83 = load i32, i32* @FMODE_READ, align 4
  %84 = load i32, i32* @FMODE_NDELAY, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @blkdev_get(%struct.block_device* %82, i32 %85, i32* null)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %81
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %160

91:                                               ; preds = %81
  %92 = load %struct.block_device*, %struct.block_device** %10, align 8
  %93 = call i32 @bdev_get_queue(%struct.block_device* %92)
  %94 = call i32 @blk_queue_scsi_passthrough(i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %104, label %96

96:                                               ; preds = %91
  %97 = load %struct.block_device*, %struct.block_device** %10, align 8
  %98 = load i32, i32* @FMODE_READ, align 4
  %99 = load i32, i32* @FMODE_NDELAY, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @blkdev_put(%struct.block_device* %97, i32 %100)
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %160

104:                                              ; preds = %91
  %105 = load i32, i32* @THIS_MODULE, align 4
  %106 = call i32 @__module_get(i32 %105)
  %107 = load %struct.block_device*, %struct.block_device** %10, align 8
  %108 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %109 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %108, i32 0, i32 3
  store %struct.block_device* %107, %struct.block_device** %109, align 8
  %110 = load %struct.block_device*, %struct.block_device** %10, align 8
  %111 = load i32, i32* @CD_FRAMESIZE, align 4
  %112 = call i32 @set_blocksize(%struct.block_device* %110, i32 %111)
  %113 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %114 = call i32 @pkt_init_queue(%struct.pktcdvd_device* %113)
  %115 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %116 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = call i32 @atomic_set(i32* %117, i32 0)
  %119 = load i32, i32* @kcdrwd, align 4
  %120 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %121 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %122 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @kthread_run(i32 %119, %struct.pktcdvd_device* %120, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %123)
  %125 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %126 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  store i32 %124, i32* %127, align 4
  %128 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %129 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i64 @IS_ERR(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %104
  %135 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %136 = call i32 (%struct.pktcdvd_device*, i8*, ...) @pkt_err(%struct.pktcdvd_device* %135, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %137 = load i32, i32* @ENOMEM, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %7, align 4
  br label %151

139:                                              ; preds = %104
  %140 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %141 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @pkt_proc, align 4
  %144 = load i32, i32* @pkt_seq_show, align 4
  %145 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %146 = call i32 @proc_create_single_data(i32 %142, i32 0, i32 %143, i32 %144, %struct.pktcdvd_device* %145)
  %147 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %148 = load %struct.block_device*, %struct.block_device** %10, align 8
  %149 = call i32 @bdevname(%struct.block_device* %148, i8* %16)
  %150 = call i32 @pkt_dbg(i32 1, %struct.pktcdvd_device* %147, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %149)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %160

151:                                              ; preds = %134
  %152 = load %struct.block_device*, %struct.block_device** %10, align 8
  %153 = load i32, i32* @FMODE_READ, align 4
  %154 = load i32, i32* @FMODE_NDELAY, align 4
  %155 = or i32 %153, %154
  %156 = call i32 @blkdev_put(%struct.block_device* %152, i32 %155)
  %157 = load i32, i32* @THIS_MODULE, align 4
  %158 = call i32 @module_put(i32 %157)
  %159 = load i32, i32* %7, align 4
  store i32 %159, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %160

160:                                              ; preds = %151, %139, %96, %89, %78, %64, %49, %22
  %161 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %161)
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pkt_err(%struct.pktcdvd_device*, i8*, ...) #2

declare dso_local i32 @bdevname(%struct.block_device*, i8*) #2

declare dso_local %struct.block_device* @bdget(i64) #2

declare dso_local i32 @blkdev_get(%struct.block_device*, i32, i32*) #2

declare dso_local i32 @blk_queue_scsi_passthrough(i32) #2

declare dso_local i32 @bdev_get_queue(%struct.block_device*) #2

declare dso_local i32 @blkdev_put(%struct.block_device*, i32) #2

declare dso_local i32 @__module_get(i32) #2

declare dso_local i32 @set_blocksize(%struct.block_device*, i32) #2

declare dso_local i32 @pkt_init_queue(%struct.pktcdvd_device*) #2

declare dso_local i32 @atomic_set(i32*, i32) #2

declare dso_local i32 @kthread_run(i32, %struct.pktcdvd_device*, i8*, i32) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @proc_create_single_data(i32, i32, i32, i32, %struct.pktcdvd_device*) #2

declare dso_local i32 @pkt_dbg(i32, %struct.pktcdvd_device*, i8*, i32) #2

declare dso_local i32 @module_put(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
