; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bsg-lib.c_bsg_transport_fill_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bsg-lib.c_bsg_transport_fill_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%struct.sg_io_v4 = type { i64, i32, i64, i32, i32 }
%struct.bsg_job = type { %struct.TYPE_8__*, %struct.TYPE_8__*, i32*, i32 }
%struct.TYPE_8__ = type { i32* }

@REQ_OP_SCSI_IN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request*, %struct.sg_io_v4*, i32)* @bsg_transport_fill_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bsg_transport_fill_hdr(%struct.request* %0, %struct.sg_io_v4* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.sg_io_v4*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bsg_job*, align 8
  %9 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %5, align 8
  store %struct.sg_io_v4* %1, %struct.sg_io_v4** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.request*, %struct.request** %5, align 8
  %11 = call %struct.bsg_job* @blk_mq_rq_to_pdu(%struct.request* %10)
  store %struct.bsg_job* %11, %struct.bsg_job** %8, align 8
  %12 = load %struct.sg_io_v4*, %struct.sg_io_v4** %6, align 8
  %13 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %16 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 8
  %17 = load %struct.sg_io_v4*, %struct.sg_io_v4** %6, align 8
  %18 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @uptr64(i32 %19)
  %21 = load %struct.sg_io_v4*, %struct.sg_io_v4** %6, align 8
  %22 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.TYPE_8__* @memdup_user(i32 %20, i32 %23)
  %25 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %26 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %25, i32 0, i32 0
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %26, align 8
  %27 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %28 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = call i64 @IS_ERR(%struct.TYPE_8__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %3
  %33 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %34 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = call i32 @PTR_ERR(%struct.TYPE_8__* %35)
  store i32 %36, i32* %4, align 4
  br label %115

37:                                               ; preds = %3
  %38 = load %struct.sg_io_v4*, %struct.sg_io_v4** %6, align 8
  %39 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %92

42:                                               ; preds = %37
  %43 = load %struct.sg_io_v4*, %struct.sg_io_v4** %6, align 8
  %44 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %92

47:                                               ; preds = %42
  %48 = load %struct.request*, %struct.request** %5, align 8
  %49 = getelementptr inbounds %struct.request, %struct.request* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @REQ_OP_SCSI_IN, align 4
  %52 = call %struct.TYPE_8__* @blk_get_request(i32 %50, i32 %51, i32 0)
  %53 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %54 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %53, i32 0, i32 1
  store %struct.TYPE_8__* %52, %struct.TYPE_8__** %54, align 8
  %55 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %56 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %55, i32 0, i32 1
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = call i64 @IS_ERR(%struct.TYPE_8__* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %47
  %61 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %62 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %61, i32 0, i32 1
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = call i32 @PTR_ERR(%struct.TYPE_8__* %63)
  store i32 %64, i32* %9, align 4
  br label %109

65:                                               ; preds = %47
  %66 = load %struct.request*, %struct.request** %5, align 8
  %67 = getelementptr inbounds %struct.request, %struct.request* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %70 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %69, i32 0, i32 1
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = load %struct.sg_io_v4*, %struct.sg_io_v4** %6, align 8
  %73 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @uptr64(i32 %74)
  %76 = load %struct.sg_io_v4*, %struct.sg_io_v4** %6, align 8
  %77 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* @GFP_KERNEL, align 4
  %80 = call i32 @blk_rq_map_user(i32 %68, %struct.TYPE_8__* %71, i32* null, i32 %75, i64 %78, i32 %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %65
  br label %98

84:                                               ; preds = %65
  %85 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %86 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %85, i32 0, i32 1
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %91 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %90, i32 0, i32 2
  store i32* %89, i32** %91, align 8
  br label %97

92:                                               ; preds = %42, %37
  %93 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %94 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %93, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %94, align 8
  %95 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %96 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %95, i32 0, i32 2
  store i32* null, i32** %96, align 8
  br label %97

97:                                               ; preds = %92, %84
  store i32 0, i32* %4, align 4
  br label %115

98:                                               ; preds = %83
  %99 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %100 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %99, i32 0, i32 1
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = icmp ne %struct.TYPE_8__* %101, null
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %105 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %104, i32 0, i32 1
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = call i32 @blk_put_request(%struct.TYPE_8__* %106)
  br label %108

108:                                              ; preds = %103, %98
  br label %109

109:                                              ; preds = %108, %60
  %110 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %111 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %110, i32 0, i32 0
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = call i32 @kfree(%struct.TYPE_8__* %112)
  %114 = load i32, i32* %9, align 4
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %109, %97, %32
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local %struct.bsg_job* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local %struct.TYPE_8__* @memdup_user(i32, i32) #1

declare dso_local i32 @uptr64(i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_8__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @blk_get_request(i32, i32, i32) #1

declare dso_local i32 @blk_rq_map_user(i32, %struct.TYPE_8__*, i32*, i32, i64, i32) #1

declare dso_local i32 @blk_put_request(%struct.TYPE_8__*) #1

declare dso_local i32 @kfree(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
