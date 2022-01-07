; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.c_drbd_request_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.c_drbd_request_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_request = type { i64, i32, i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i64 }
%struct.drbd_device = type { i32, i32 }
%struct.bio = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"could not kmalloc() req\0A\00", align 1
@BLK_STS_RESOURCE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@REQ_OP_WRITE_ZEROES = common dso_local global i64 0, align 8
@REQ_OP_DISCARD = common dso_local global i64 0, align 8
@WRITE = common dso_local global i32 0, align 4
@AL_SUSPENDED = common dso_local global i32 0, align 4
@RQ_IN_ACT_LOG = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drbd_request* (%struct.drbd_device*, %struct.bio*, i64)* @drbd_request_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drbd_request* @drbd_request_prepare(%struct.drbd_device* %0, %struct.bio* %1, i64 %2) #0 {
  %4 = alloca %struct.drbd_request*, align 8
  %5 = alloca %struct.drbd_device*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.drbd_request*, align 8
  store %struct.drbd_device* %0, %struct.drbd_device** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.bio*, %struct.bio** %6, align 8
  %11 = call i32 @bio_data_dir(%struct.bio* %10)
  store i32 %11, i32* %8, align 4
  %12 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %13 = load %struct.bio*, %struct.bio** %6, align 8
  %14 = call %struct.drbd_request* @drbd_req_new(%struct.drbd_device* %12, %struct.bio* %13)
  store %struct.drbd_request* %14, %struct.drbd_request** %9, align 8
  %15 = load %struct.drbd_request*, %struct.drbd_request** %9, align 8
  %16 = icmp ne %struct.drbd_request* %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %3
  %18 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %19 = call i32 @dec_ap_bio(%struct.drbd_device* %18)
  %20 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %21 = call i32 @drbd_err(%struct.drbd_device* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @BLK_STS_RESOURCE, align 4
  %23 = load %struct.bio*, %struct.bio** %6, align 8
  %24 = getelementptr inbounds %struct.bio, %struct.bio* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.bio*, %struct.bio** %6, align 8
  %26 = call i32 @bio_endio(%struct.bio* %25)
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.drbd_request* @ERR_PTR(i32 %28)
  store %struct.drbd_request* %29, %struct.drbd_request** %4, align 8
  br label %104

30:                                               ; preds = %3
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.drbd_request*, %struct.drbd_request** %9, align 8
  %33 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %35 = call i32 @get_ldev(%struct.drbd_device* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %30
  %38 = load %struct.drbd_request*, %struct.drbd_request** %9, align 8
  %39 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @bio_put(i32* %40)
  %42 = load %struct.drbd_request*, %struct.drbd_request** %9, align 8
  %43 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %42, i32 0, i32 4
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %37, %30
  %45 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %46 = load %struct.drbd_request*, %struct.drbd_request** %9, align 8
  %47 = call i32 @_drbd_start_io_acct(%struct.drbd_device* %45, %struct.drbd_request* %46)
  %48 = load %struct.bio*, %struct.bio** %6, align 8
  %49 = call i64 @bio_op(%struct.bio* %48)
  %50 = load i64, i64* @REQ_OP_WRITE_ZEROES, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %57, label %52

52:                                               ; preds = %44
  %53 = load %struct.bio*, %struct.bio** %6, align 8
  %54 = call i64 @bio_op(%struct.bio* %53)
  %55 = load i64, i64* @REQ_OP_DISCARD, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %52, %44
  br label %97

58:                                               ; preds = %52
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @WRITE, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %95

62:                                               ; preds = %58
  %63 = load %struct.drbd_request*, %struct.drbd_request** %9, align 8
  %64 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %63, i32 0, i32 4
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %95

67:                                               ; preds = %62
  %68 = load %struct.drbd_request*, %struct.drbd_request** %9, align 8
  %69 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %95

73:                                               ; preds = %67
  %74 = load i32, i32* @AL_SUSPENDED, align 4
  %75 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %76 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %75, i32 0, i32 1
  %77 = call i32 @test_bit(i32 %74, i32* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %95, label %79

79:                                               ; preds = %73
  %80 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %81 = load %struct.drbd_request*, %struct.drbd_request** %9, align 8
  %82 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %81, i32 0, i32 3
  %83 = call i32 @drbd_al_begin_io_fastpath(%struct.drbd_device* %80, %struct.TYPE_2__* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %79
  br label %97

86:                                               ; preds = %79
  %87 = load i32, i32* @RQ_IN_ACT_LOG, align 4
  %88 = load %struct.drbd_request*, %struct.drbd_request** %9, align 8
  %89 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load i32, i32* @jiffies, align 4
  %93 = load %struct.drbd_request*, %struct.drbd_request** %9, align 8
  %94 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 8
  br label %95

95:                                               ; preds = %86, %73, %67, %62, %58
  %96 = load %struct.drbd_request*, %struct.drbd_request** %9, align 8
  store %struct.drbd_request* %96, %struct.drbd_request** %4, align 8
  br label %104

97:                                               ; preds = %85, %57
  %98 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %99 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %98, i32 0, i32 0
  %100 = call i32 @atomic_inc(i32* %99)
  %101 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %102 = load %struct.drbd_request*, %struct.drbd_request** %9, align 8
  %103 = call i32 @drbd_queue_write(%struct.drbd_device* %101, %struct.drbd_request* %102)
  store %struct.drbd_request* null, %struct.drbd_request** %4, align 8
  br label %104

104:                                              ; preds = %97, %95, %17
  %105 = load %struct.drbd_request*, %struct.drbd_request** %4, align 8
  ret %struct.drbd_request* %105
}

declare dso_local i32 @bio_data_dir(%struct.bio*) #1

declare dso_local %struct.drbd_request* @drbd_req_new(%struct.drbd_device*, %struct.bio*) #1

declare dso_local i32 @dec_ap_bio(%struct.drbd_device*) #1

declare dso_local i32 @drbd_err(%struct.drbd_device*, i8*) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

declare dso_local %struct.drbd_request* @ERR_PTR(i32) #1

declare dso_local i32 @get_ldev(%struct.drbd_device*) #1

declare dso_local i32 @bio_put(i32*) #1

declare dso_local i32 @_drbd_start_io_acct(%struct.drbd_device*, %struct.drbd_request*) #1

declare dso_local i64 @bio_op(%struct.bio*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @drbd_al_begin_io_fastpath(%struct.drbd_device*, %struct.TYPE_2__*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @drbd_queue_write(%struct.drbd_device*, %struct.drbd_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
