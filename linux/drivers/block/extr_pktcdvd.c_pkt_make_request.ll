; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_make_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_make_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.pktcdvd_device* }
%struct.pktcdvd_device = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.bio = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s incorrect request queue\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"start = %6llx stop = %6llx\0A\00", align 1
@READ = common dso_local global i64 0, align 8
@BLK_QC_T_NONE = common dso_local global i32 0, align 4
@PACKET_WRITABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"WRITE for ro device (%llu)\0A\00", align 1
@CD_FRAMESIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"wrong bio size\0A\00", align 1
@GFP_NOIO = common dso_local global i32 0, align 4
@pkt_bio_set = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.bio*)* @pkt_make_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkt_make_request(%struct.request_queue* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.pktcdvd_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.bio*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %13 = load i32, i32* @BDEVNAME_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %18 = call i32 @blk_queue_split(%struct.request_queue* %17, %struct.bio** %5)
  %19 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %20 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %19, i32 0, i32 0
  %21 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %20, align 8
  store %struct.pktcdvd_device* %21, %struct.pktcdvd_device** %6, align 8
  %22 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %6, align 8
  %23 = icmp ne %struct.pktcdvd_device* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = load %struct.bio*, %struct.bio** %5, align 8
  %26 = call i32 @bio_devname(%struct.bio* %25, i8* %16)
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %127

28:                                               ; preds = %2
  %29 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %6, align 8
  %30 = load %struct.bio*, %struct.bio** %5, align 8
  %31 = getelementptr inbounds %struct.bio, %struct.bio* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.bio*, %struct.bio** %5, align 8
  %35 = call i64 @bio_end_sector(%struct.bio* %34)
  %36 = call i32 @pkt_dbg(i32 2, %struct.pktcdvd_device* %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %33, i64 %35)
  %37 = load %struct.bio*, %struct.bio** %5, align 8
  %38 = call i64 @bio_data_dir(%struct.bio* %37)
  %39 = load i64, i64* @READ, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %28
  %42 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %6, align 8
  %43 = load %struct.bio*, %struct.bio** %5, align 8
  %44 = call i32 @pkt_make_request_read(%struct.pktcdvd_device* %42, %struct.bio* %43)
  %45 = load i32, i32* @BLK_QC_T_NONE, align 4
  store i32 %45, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %131

46:                                               ; preds = %28
  %47 = load i32, i32* @PACKET_WRITABLE, align 4
  %48 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %6, align 8
  %49 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %48, i32 0, i32 1
  %50 = call i32 @test_bit(i32 %47, i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %46
  %53 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %6, align 8
  %54 = load %struct.bio*, %struct.bio** %5, align 8
  %55 = getelementptr inbounds %struct.bio, %struct.bio* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @pkt_notice(%struct.pktcdvd_device* %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %57)
  br label %127

59:                                               ; preds = %46
  %60 = load %struct.bio*, %struct.bio** %5, align 8
  %61 = getelementptr inbounds %struct.bio, %struct.bio* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = load %struct.bio*, %struct.bio** %5, align 8
  %67 = getelementptr inbounds %struct.bio, %struct.bio* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @CD_FRAMESIZE, align 4
  %71 = srem i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %65, %59
  %74 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %6, align 8
  %75 = call i32 @pkt_err(%struct.pktcdvd_device* %74, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %127

76:                                               ; preds = %65
  br label %77

77:                                               ; preds = %121, %76
  %78 = load %struct.bio*, %struct.bio** %5, align 8
  %79 = getelementptr inbounds %struct.bio, %struct.bio* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %6, align 8
  %83 = call i64 @get_zone(i64 %81, %struct.pktcdvd_device* %82)
  store i64 %83, i64* %11, align 8
  %84 = load %struct.bio*, %struct.bio** %5, align 8
  %85 = call i64 @bio_end_sector(%struct.bio* %84)
  %86 = sub nsw i64 %85, 1
  %87 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %6, align 8
  %88 = call i64 @get_zone(i64 %86, %struct.pktcdvd_device* %87)
  store i64 %88, i64* %12, align 8
  %89 = load i64, i64* %12, align 8
  %90 = load i64, i64* %11, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %115

92:                                               ; preds = %77
  %93 = load i64, i64* %12, align 8
  %94 = load i64, i64* %11, align 8
  %95 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %6, align 8
  %96 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %94, %98
  %100 = icmp ne i64 %93, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @BUG_ON(i32 %101)
  %103 = load %struct.bio*, %struct.bio** %5, align 8
  %104 = load i64, i64* %12, align 8
  %105 = load %struct.bio*, %struct.bio** %5, align 8
  %106 = getelementptr inbounds %struct.bio, %struct.bio* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = sub nsw i64 %104, %108
  %110 = load i32, i32* @GFP_NOIO, align 4
  %111 = call %struct.bio* @bio_split(%struct.bio* %103, i64 %109, i32 %110, i32* @pkt_bio_set)
  store %struct.bio* %111, %struct.bio** %9, align 8
  %112 = load %struct.bio*, %struct.bio** %9, align 8
  %113 = load %struct.bio*, %struct.bio** %5, align 8
  %114 = call i32 @bio_chain(%struct.bio* %112, %struct.bio* %113)
  br label %117

115:                                              ; preds = %77
  %116 = load %struct.bio*, %struct.bio** %5, align 8
  store %struct.bio* %116, %struct.bio** %9, align 8
  br label %117

117:                                              ; preds = %115, %92
  %118 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %119 = load %struct.bio*, %struct.bio** %9, align 8
  %120 = call i32 @pkt_make_request_write(%struct.request_queue* %118, %struct.bio* %119)
  br label %121

121:                                              ; preds = %117
  %122 = load %struct.bio*, %struct.bio** %9, align 8
  %123 = load %struct.bio*, %struct.bio** %5, align 8
  %124 = icmp ne %struct.bio* %122, %123
  br i1 %124, label %77, label %125

125:                                              ; preds = %121
  %126 = load i32, i32* @BLK_QC_T_NONE, align 4
  store i32 %126, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %131

127:                                              ; preds = %73, %52, %24
  %128 = load %struct.bio*, %struct.bio** %5, align 8
  %129 = call i32 @bio_io_error(%struct.bio* %128)
  %130 = load i32, i32* @BLK_QC_T_NONE, align 4
  store i32 %130, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %131

131:                                              ; preds = %127, %125, %41
  %132 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %132)
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @blk_queue_split(%struct.request_queue*, %struct.bio**) #2

declare dso_local i32 @pr_err(i8*, i32) #2

declare dso_local i32 @bio_devname(%struct.bio*, i8*) #2

declare dso_local i32 @pkt_dbg(i32, %struct.pktcdvd_device*, i8*, i64, i64) #2

declare dso_local i64 @bio_end_sector(%struct.bio*) #2

declare dso_local i64 @bio_data_dir(%struct.bio*) #2

declare dso_local i32 @pkt_make_request_read(%struct.pktcdvd_device*, %struct.bio*) #2

declare dso_local i32 @test_bit(i32, i32*) #2

declare dso_local i32 @pkt_notice(%struct.pktcdvd_device*, i8*, i64) #2

declare dso_local i32 @pkt_err(%struct.pktcdvd_device*, i8*) #2

declare dso_local i64 @get_zone(i64, %struct.pktcdvd_device*) #2

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local %struct.bio* @bio_split(%struct.bio*, i64, i32, i32*) #2

declare dso_local i32 @bio_chain(%struct.bio*, %struct.bio*) #2

declare dso_local i32 @pkt_make_request_write(%struct.request_queue*, %struct.bio*) #2

declare dso_local i32 @bio_io_error(%struct.bio*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
