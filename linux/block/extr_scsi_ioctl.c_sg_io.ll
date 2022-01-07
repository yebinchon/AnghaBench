; ModuleID = '/home/carl/AnghaBench/linux/block/extr_scsi_ioctl.c_sg_io.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_scsi_ioctl.c_sg_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.gendisk = type { i32 }
%struct.sg_io_hdr = type { i8, i32, i32, i32, i64, i32, i32, i32 }
%struct.request = type { %struct.bio* }
%struct.bio = type { i32 }
%struct.scsi_request = type { i64, i32 }
%struct.iov_iter = type { i32 }
%struct.iovec = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SG_FLAG_Q_AT_HEAD = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@REQ_OP_SCSI_OUT = common dso_local global i32 0, align 4
@REQ_OP_SCSI_IN = common dso_local global i32 0, align 4
@BLK_MAX_CDB = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.gendisk*, %struct.sg_io_hdr*, i32)* @sg_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sg_io(%struct.request_queue* %0, %struct.gendisk* %1, %struct.sg_io_hdr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca %struct.gendisk*, align 8
  %8 = alloca %struct.sg_io_hdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.request*, align 8
  %15 = alloca %struct.scsi_request*, align 8
  %16 = alloca %struct.bio*, align 8
  %17 = alloca %struct.iov_iter, align 4
  %18 = alloca %struct.iovec*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %6, align 8
  store %struct.gendisk* %1, %struct.gendisk** %7, align 8
  store %struct.sg_io_hdr* %2, %struct.sg_io_hdr** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %19 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %20 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %19, i32 0, i32 0
  %21 = load i8, i8* %20, align 8
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 83
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %190

27:                                               ; preds = %4
  %28 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %29 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %32 = call i32 @queue_max_hw_sectors(%struct.request_queue* %31)
  %33 = shl i32 %32, 9
  %34 = icmp sgt i32 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %190

38:                                               ; preds = %27
  %39 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %40 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %45 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %47 [
    i32 129, label %50
    i32 128, label %51
    i32 130, label %51
  ]

47:                                               ; preds = %43
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %190

50:                                               ; preds = %43
  store i32 1, i32* %12, align 4
  br label %52

51:                                               ; preds = %43, %43
  br label %52

52:                                               ; preds = %51, %50
  br label %53

53:                                               ; preds = %52, %38
  %54 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %55 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @SG_FLAG_Q_AT_HEAD, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store i32 1, i32* %13, align 4
  br label %61

61:                                               ; preds = %60, %53
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %11, align 4
  %64 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* @REQ_OP_SCSI_OUT, align 4
  br label %71

69:                                               ; preds = %61
  %70 = load i32, i32* @REQ_OP_SCSI_IN, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  %73 = call %struct.request* @blk_get_request(%struct.request_queue* %64, i32 %72, i32 0)
  store %struct.request* %73, %struct.request** %14, align 8
  %74 = load %struct.request*, %struct.request** %14, align 8
  %75 = call i64 @IS_ERR(%struct.request* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load %struct.request*, %struct.request** %14, align 8
  %79 = call i32 @PTR_ERR(%struct.request* %78)
  store i32 %79, i32* %5, align 4
  br label %190

80:                                               ; preds = %71
  %81 = load %struct.request*, %struct.request** %14, align 8
  %82 = call %struct.scsi_request* @scsi_req(%struct.request* %81)
  store %struct.scsi_request* %82, %struct.scsi_request** %15, align 8
  %83 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %84 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @BLK_MAX_CDB, align 8
  %87 = icmp sgt i64 %85, %86
  br i1 %87, label %88, label %102

88:                                               ; preds = %80
  %89 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %90 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* @GFP_KERNEL, align 4
  %93 = call i32 @kzalloc(i64 %91, i32 %92)
  %94 = load %struct.scsi_request*, %struct.scsi_request** %15, align 8
  %95 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 8
  %96 = load %struct.scsi_request*, %struct.scsi_request** %15, align 8
  %97 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %88
  br label %186

101:                                              ; preds = %88
  br label %102

102:                                              ; preds = %101, %80
  %103 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %104 = load %struct.request*, %struct.request** %14, align 8
  %105 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @blk_fill_sghdr_rq(%struct.request_queue* %103, %struct.request* %104, %struct.sg_io_hdr* %105, i32 %106)
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %11, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %102
  br label %183

111:                                              ; preds = %102
  store i32 0, i32* %11, align 4
  %112 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %113 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %112, i32 0, i32 7
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %140

116:                                              ; preds = %111
  store %struct.iovec* null, %struct.iovec** %18, align 8
  %117 = load %struct.request*, %struct.request** %14, align 8
  %118 = call i32 @rq_data_dir(%struct.request* %117)
  %119 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %120 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %123 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %122, i32 0, i32 7
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @import_iovec(i32 %118, i32 %121, i32 %124, i32 0, %struct.iovec** %18, %struct.iov_iter* %17)
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* %11, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %116
  br label %183

129:                                              ; preds = %116
  %130 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %131 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @iov_iter_truncate(%struct.iov_iter* %17, i32 %132)
  %134 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %135 = load %struct.request*, %struct.request** %14, align 8
  %136 = load i32, i32* @GFP_KERNEL, align 4
  %137 = call i32 @blk_rq_map_user_iov(%struct.request_queue* %134, %struct.request* %135, i32* null, %struct.iov_iter* %17, i32 %136)
  store i32 %137, i32* %11, align 4
  %138 = load %struct.iovec*, %struct.iovec** %18, align 8
  %139 = call i32 @kfree(%struct.iovec* %138)
  br label %157

140:                                              ; preds = %111
  %141 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %142 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %156

145:                                              ; preds = %140
  %146 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %147 = load %struct.request*, %struct.request** %14, align 8
  %148 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %149 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %152 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @GFP_KERNEL, align 4
  %155 = call i32 @blk_rq_map_user(%struct.request_queue* %146, %struct.request* %147, i32* null, i32 %150, i32 %153, i32 %154)
  store i32 %155, i32* %11, align 4
  br label %156

156:                                              ; preds = %145, %140
  br label %157

157:                                              ; preds = %156, %129
  %158 = load i32, i32* %11, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %157
  br label %183

161:                                              ; preds = %157
  %162 = load %struct.request*, %struct.request** %14, align 8
  %163 = getelementptr inbounds %struct.request, %struct.request* %162, i32 0, i32 0
  %164 = load %struct.bio*, %struct.bio** %163, align 8
  store %struct.bio* %164, %struct.bio** %16, align 8
  %165 = load %struct.scsi_request*, %struct.scsi_request** %15, align 8
  %166 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %165, i32 0, i32 0
  store i64 0, i64* %166, align 8
  %167 = load i64, i64* @jiffies, align 8
  store i64 %167, i64* %10, align 8
  %168 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %169 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %170 = load %struct.request*, %struct.request** %14, align 8
  %171 = load i32, i32* %13, align 4
  %172 = call i32 @blk_execute_rq(%struct.request_queue* %168, %struct.gendisk* %169, %struct.request* %170, i32 %171)
  %173 = load i64, i64* @jiffies, align 8
  %174 = load i64, i64* %10, align 8
  %175 = sub i64 %173, %174
  %176 = call i32 @jiffies_to_msecs(i64 %175)
  %177 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %178 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %177, i32 0, i32 5
  store i32 %176, i32* %178, align 8
  %179 = load %struct.request*, %struct.request** %14, align 8
  %180 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %181 = load %struct.bio*, %struct.bio** %16, align 8
  %182 = call i32 @blk_complete_sghdr_rq(%struct.request* %179, %struct.sg_io_hdr* %180, %struct.bio* %181)
  store i32 %182, i32* %11, align 4
  br label %183

183:                                              ; preds = %161, %160, %128, %110
  %184 = load %struct.scsi_request*, %struct.scsi_request** %15, align 8
  %185 = call i32 @scsi_req_free_cmd(%struct.scsi_request* %184)
  br label %186

186:                                              ; preds = %183, %100
  %187 = load %struct.request*, %struct.request** %14, align 8
  %188 = call i32 @blk_put_request(%struct.request* %187)
  %189 = load i32, i32* %11, align 4
  store i32 %189, i32* %5, align 4
  br label %190

190:                                              ; preds = %186, %77, %47, %35, %24
  %191 = load i32, i32* %5, align 4
  ret i32 %191
}

declare dso_local i32 @queue_max_hw_sectors(%struct.request_queue*) #1

declare dso_local %struct.request* @blk_get_request(%struct.request_queue*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.request*) #1

declare dso_local i32 @PTR_ERR(%struct.request*) #1

declare dso_local %struct.scsi_request* @scsi_req(%struct.request*) #1

declare dso_local i32 @kzalloc(i64, i32) #1

declare dso_local i32 @blk_fill_sghdr_rq(%struct.request_queue*, %struct.request*, %struct.sg_io_hdr*, i32) #1

declare dso_local i32 @import_iovec(i32, i32, i32, i32, %struct.iovec**, %struct.iov_iter*) #1

declare dso_local i32 @rq_data_dir(%struct.request*) #1

declare dso_local i32 @iov_iter_truncate(%struct.iov_iter*, i32) #1

declare dso_local i32 @blk_rq_map_user_iov(%struct.request_queue*, %struct.request*, i32*, %struct.iov_iter*, i32) #1

declare dso_local i32 @kfree(%struct.iovec*) #1

declare dso_local i32 @blk_rq_map_user(%struct.request_queue*, %struct.request*, i32*, i32, i32, i32) #1

declare dso_local i32 @blk_execute_rq(%struct.request_queue*, %struct.gendisk*, %struct.request*, i32) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @blk_complete_sghdr_rq(%struct.request*, %struct.sg_io_hdr*, %struct.bio*) #1

declare dso_local i32 @scsi_req_free_cmd(%struct.scsi_request*) #1

declare dso_local i32 @blk_put_request(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
