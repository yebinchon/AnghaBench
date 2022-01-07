; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_start_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_start_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktcdvd_device = type { i32, i32 }
%struct.packet_data = type { i32, i32, i32, %struct.TYPE_11__*, i32, i64, i32, %struct.TYPE_10__, %struct.page** }
%struct.TYPE_11__ = type { i32, %struct.packet_data*, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.page = type { i32 }

@pkt_end_io_packet_write = common dso_local global i32 0, align 4
@CD_FRAMESIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"vcnt=%d\0A\00", align 1
@PACKET_WRITE_WAIT_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Writing %d frames for zone %llx\0A\00", align 1
@PACKET_MERGE_SEGS = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pktcdvd_device*, %struct.packet_data*)* @pkt_start_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pkt_start_write(%struct.pktcdvd_device* %0, %struct.packet_data* %1) #0 {
  %3 = alloca %struct.pktcdvd_device*, align 8
  %4 = alloca %struct.packet_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  store %struct.pktcdvd_device* %0, %struct.pktcdvd_device** %3, align 8
  store %struct.packet_data* %1, %struct.packet_data** %4, align 8
  %8 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %9 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %8, i32 0, i32 3
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %11 = call i32 @bio_reset(%struct.TYPE_11__* %10)
  %12 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %13 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %16 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %15, i32 0, i32 3
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  store i64 %14, i64* %19, align 8
  %20 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %21 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %20, i32 0, i32 3
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %24 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @bio_set_dev(%struct.TYPE_11__* %22, i32 %25)
  %27 = load i32, i32* @pkt_end_io_packet_write, align 4
  %28 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %29 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %28, i32 0, i32 3
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 2
  store i32 %27, i32* %31, align 8
  %32 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %33 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %34 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %33, i32 0, i32 3
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  store %struct.packet_data* %32, %struct.packet_data** %36, align 8
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %71, %2
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %40 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %74

43:                                               ; preds = %37
  %44 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %45 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %44, i32 0, i32 8
  %46 = load %struct.page**, %struct.page*** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @CD_FRAMESIZE, align 4
  %49 = mul nsw i32 %47, %48
  %50 = load i32, i32* @PAGE_SIZE, align 4
  %51 = sdiv i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.page*, %struct.page** %46, i64 %52
  %54 = load %struct.page*, %struct.page** %53, align 8
  store %struct.page* %54, %struct.page** %6, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @CD_FRAMESIZE, align 4
  %57 = mul nsw i32 %55, %56
  %58 = load i32, i32* @PAGE_SIZE, align 4
  %59 = srem i32 %57, %58
  store i32 %59, i32* %7, align 4
  %60 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %61 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %60, i32 0, i32 3
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = load %struct.page*, %struct.page** %6, align 8
  %64 = load i32, i32* @CD_FRAMESIZE, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @bio_add_page(%struct.TYPE_11__* %62, %struct.page* %63, i32 %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %43
  %69 = call i32 (...) @BUG()
  br label %70

70:                                               ; preds = %68, %43
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %37

74:                                               ; preds = %37
  %75 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %76 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %77 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %76, i32 0, i32 3
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (i32, %struct.pktcdvd_device*, i8*, i32, ...) @pkt_dbg(i32 2, %struct.pktcdvd_device* %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %83 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %82, i32 0, i32 6
  %84 = call i32 @spin_lock(i32* %83)
  %85 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %86 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %85, i32 0, i32 3
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %89 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %88, i32 0, i32 7
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @bio_list_copy_data(%struct.TYPE_11__* %87, i32 %91)
  %93 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %94 = load i32, i32* @PACKET_WRITE_WAIT_STATE, align 4
  %95 = call i32 @pkt_set_state(%struct.packet_data* %93, i32 %94)
  %96 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %97 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %96, i32 0, i32 6
  %98 = call i32 @spin_unlock(i32* %97)
  %99 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %100 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %101 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %104 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %103, i32 0, i32 5
  %105 = load i64, i64* %104, align 8
  %106 = call i32 (i32, %struct.pktcdvd_device*, i8*, i32, ...) @pkt_dbg(i32 2, %struct.pktcdvd_device* %99, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %102, i64 %105)
  %107 = load i32, i32* @PACKET_MERGE_SEGS, align 4
  %108 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %109 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %108, i32 0, i32 0
  %110 = call i64 @test_bit(i32 %107, i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %120, label %112

112:                                              ; preds = %74
  %113 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %114 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %117 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %112, %74
  %121 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %122 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %121, i32 0, i32 2
  store i32 1, i32* %122, align 8
  br label %126

123:                                              ; preds = %112
  %124 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %125 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %124, i32 0, i32 2
  store i32 0, i32* %125, align 8
  br label %126

126:                                              ; preds = %123, %120
  %127 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %128 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %127, i32 0, i32 4
  %129 = call i32 @atomic_set(i32* %128, i32 1)
  %130 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %131 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %130, i32 0, i32 3
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %131, align 8
  %133 = load i32, i32* @REQ_OP_WRITE, align 4
  %134 = call i32 @bio_set_op_attrs(%struct.TYPE_11__* %132, i32 %133, i32 0)
  %135 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %136 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %137 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %136, i32 0, i32 3
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %137, align 8
  %139 = call i32 @pkt_queue_bio(%struct.pktcdvd_device* %135, %struct.TYPE_11__* %138)
  ret void
}

declare dso_local i32 @bio_reset(%struct.TYPE_11__*) #1

declare dso_local i32 @bio_set_dev(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @bio_add_page(%struct.TYPE_11__*, %struct.page*, i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @pkt_dbg(i32, %struct.pktcdvd_device*, i8*, i32, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @bio_list_copy_data(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @pkt_set_state(%struct.packet_data*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @bio_set_op_attrs(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @pkt_queue_bio(%struct.pktcdvd_device*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
