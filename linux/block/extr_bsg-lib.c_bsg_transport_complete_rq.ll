; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bsg-lib.c_bsg_transport_complete_rq.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bsg-lib.c_bsg_transport_complete_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%struct.sg_io_v4 = type { i32, i32, i32, i64, i64, i32, i32, i32, i32 }
%struct.bsg_job = type { i32, i32, i32, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@SG_INFO_CHECK = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request*, %struct.sg_io_v4*)* @bsg_transport_complete_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bsg_transport_complete_rq(%struct.request* %0, %struct.sg_io_v4* %1) #0 {
  %3 = alloca %struct.request*, align 8
  %4 = alloca %struct.sg_io_v4*, align 8
  %5 = alloca %struct.bsg_job*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %3, align 8
  store %struct.sg_io_v4* %1, %struct.sg_io_v4** %4, align 8
  %9 = load %struct.request*, %struct.request** %3, align 8
  %10 = call %struct.bsg_job* @blk_mq_rq_to_pdu(%struct.request* %9)
  store %struct.bsg_job* %10, %struct.bsg_job** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %12 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, 255
  %15 = load %struct.sg_io_v4*, %struct.sg_io_v4** %4, align 8
  %16 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %18 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @host_byte(i32 %19)
  %21 = load %struct.sg_io_v4*, %struct.sg_io_v4** %4, align 8
  %22 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %21, i32 0, i32 8
  store i32 %20, i32* %22, align 4
  %23 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %24 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @driver_byte(i32 %25)
  %27 = load %struct.sg_io_v4*, %struct.sg_io_v4** %4, align 8
  %28 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %27, i32 0, i32 7
  store i32 %26, i32* %28, align 8
  %29 = load %struct.sg_io_v4*, %struct.sg_io_v4** %4, align 8
  %30 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %29, i32 0, i32 6
  store i32 0, i32* %30, align 4
  %31 = load %struct.sg_io_v4*, %struct.sg_io_v4** %4, align 8
  %32 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %2
  %36 = load %struct.sg_io_v4*, %struct.sg_io_v4** %4, align 8
  %37 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load %struct.sg_io_v4*, %struct.sg_io_v4** %4, align 8
  %42 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40, %35, %2
  %46 = load i32, i32* @SG_INFO_CHECK, align 4
  %47 = load %struct.sg_io_v4*, %struct.sg_io_v4** %4, align 8
  %48 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %45, %40
  %52 = load %struct.sg_io_v4*, %struct.sg_io_v4** %4, align 8
  %53 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %52, i32 0, i32 1
  store i32 0, i32* %53, align 4
  %54 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %55 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %51
  %59 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %60 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %59, i32 0, i32 1
  store i32 4, i32* %60, align 4
  %61 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %62 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %58, %51
  %65 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %66 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %100

69:                                               ; preds = %64
  %70 = load %struct.sg_io_v4*, %struct.sg_io_v4** %4, align 8
  %71 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %100

74:                                               ; preds = %69
  %75 = load %struct.sg_io_v4*, %struct.sg_io_v4** %4, align 8
  %76 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %79 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @min(i32 %77, i32 %80)
  store i32 %81, i32* %7, align 4
  %82 = load %struct.sg_io_v4*, %struct.sg_io_v4** %4, align 8
  %83 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @uptr64(i64 %84)
  %86 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %87 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i64 @copy_to_user(i32 %85, i32 %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %74
  %93 = load i32, i32* @EFAULT, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %6, align 4
  br label %99

95:                                               ; preds = %74
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.sg_io_v4*, %struct.sg_io_v4** %4, align 8
  %98 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %95, %92
  br label %100

100:                                              ; preds = %99, %69, %64
  %101 = load %struct.sg_io_v4*, %struct.sg_io_v4** %4, align 8
  %102 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %101, i32 0, i32 3
  store i64 0, i64* %102, align 8
  %103 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %104 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %132

107:                                              ; preds = %100
  %108 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %109 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %8, align 4
  %112 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %113 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = icmp ugt i32 %114, %115
  %117 = zext i1 %116 to i32
  %118 = call i64 @WARN_ON(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %107
  %121 = load %struct.sg_io_v4*, %struct.sg_io_v4** %4, align 8
  %122 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %121, i32 0, i32 2
  store i32 0, i32* %122, align 8
  br label %131

123:                                              ; preds = %107
  %124 = load i32, i32* %8, align 4
  %125 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %126 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = sub i32 %124, %127
  %129 = load %struct.sg_io_v4*, %struct.sg_io_v4** %4, align 8
  %130 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 8
  br label %131

131:                                              ; preds = %123, %120
  br label %135

132:                                              ; preds = %100
  %133 = load %struct.sg_io_v4*, %struct.sg_io_v4** %4, align 8
  %134 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %133, i32 0, i32 2
  store i32 0, i32* %134, align 8
  br label %135

135:                                              ; preds = %132, %131
  %136 = load i32, i32* %6, align 4
  ret i32 %136
}

declare dso_local %struct.bsg_job* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @host_byte(i32) #1

declare dso_local i32 @driver_byte(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @copy_to_user(i32, i32, i32) #1

declare dso_local i32 @uptr64(i64) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
