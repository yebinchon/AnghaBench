; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bsg-lib.c_bsg_prepare_job.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bsg-lib.c_bsg_prepare_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.request = type { i64, i32 }
%struct.bsg_job = type { i32, %struct.TYPE_2__, i32, %struct.device*, %struct.request*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.request*)* @bsg_prepare_job to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bsg_prepare_job(%struct.device* %0, %struct.request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.bsg_job*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  %8 = load %struct.request*, %struct.request** %5, align 8
  %9 = call %struct.bsg_job* @blk_mq_rq_to_pdu(%struct.request* %8)
  store %struct.bsg_job* %9, %struct.bsg_job** %6, align 8
  %10 = load %struct.request*, %struct.request** %5, align 8
  %11 = getelementptr inbounds %struct.request, %struct.request* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %14 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %13, i32 0, i32 6
  store i32 %12, i32* %14, align 4
  %15 = load %struct.request*, %struct.request** %5, align 8
  %16 = getelementptr inbounds %struct.request, %struct.request* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %21 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %20, i32 0, i32 1
  %22 = load %struct.request*, %struct.request** %5, align 8
  %23 = call i32 @bsg_map_buffer(%struct.TYPE_2__* %21, %struct.request* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %61

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27, %2
  %29 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %30 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %29, i32 0, i32 4
  %31 = load %struct.request*, %struct.request** %30, align 8
  %32 = icmp ne %struct.request* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %35 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %34, i32 0, i32 5
  %36 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %37 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %36, i32 0, i32 4
  %38 = load %struct.request*, %struct.request** %37, align 8
  %39 = call i32 @bsg_map_buffer(%struct.TYPE_2__* %35, %struct.request* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %55

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %28
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %47 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %46, i32 0, i32 3
  store %struct.device* %45, %struct.device** %47, align 8
  %48 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %49 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %48, i32 0, i32 3
  %50 = load %struct.device*, %struct.device** %49, align 8
  %51 = call i32 @get_device(%struct.device* %50)
  %52 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %53 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %52, i32 0, i32 2
  %54 = call i32 @kref_init(i32* %53)
  store i32 1, i32* %3, align 4
  br label %66

55:                                               ; preds = %42
  %56 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %57 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @kfree(i32 %59)
  br label %61

61:                                               ; preds = %55, %26
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  %64 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %65 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %61, %44
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.bsg_job* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @bsg_map_buffer(%struct.TYPE_2__*, %struct.request*) #1

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
