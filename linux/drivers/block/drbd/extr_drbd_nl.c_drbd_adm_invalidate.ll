; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_drbd_adm_invalidate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_drbd_adm_invalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32 }
%struct.drbd_config_context = type { %struct.TYPE_7__*, %struct.drbd_device*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.drbd_device = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@DRBD_ADM_NEED_MINOR = common dso_local global i32 0, align 4
@NO_ERROR = common dso_local global i32 0, align 4
@ERR_NO_DISK = common dso_local global i32 0, align 4
@BITMAP_IO = common dso_local global i32 0, align 4
@C_STANDALONE = common dso_local global i64 0, align 8
@R_SECONDARY = common dso_local global i64 0, align 8
@disk = common dso_local global i32 0, align 4
@D_INCONSISTENT = common dso_local global i32 0, align 4
@SS_SUCCESS = common dso_local global i32 0, align 4
@drbd_bmio_set_n_write = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"set_n_write from invalidate\00", align 1
@BM_LOCKED_MASK = common dso_local global i32 0, align 4
@ERR_IO_MD_DISK = common dso_local global i32 0, align 4
@conn = common dso_local global i32 0, align 4
@C_STARTING_SYNC_T = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drbd_adm_invalidate(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.drbd_config_context, align 8
  %7 = alloca %struct.drbd_device*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %11 = load i32, i32* @DRBD_ADM_NEED_MINOR, align 4
  %12 = call i32 @drbd_adm_prepare(%struct.drbd_config_context* %6, %struct.sk_buff* %9, %struct.genl_info* %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %6, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %105

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @NO_ERROR, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %101

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %6, i32 0, i32 1
  %25 = load %struct.drbd_device*, %struct.drbd_device** %24, align 8
  store %struct.drbd_device* %25, %struct.drbd_device** %7, align 8
  %26 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %27 = call i32 @get_ldev(%struct.drbd_device* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @ERR_NO_DISK, align 4
  store i32 %30, i32* %8, align 4
  br label %101

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %6, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %37 = call i32 @drbd_suspend_io(%struct.drbd_device* %36)
  %38 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %39 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @BITMAP_IO, align 4
  %42 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %43 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %42, i32 0, i32 1
  %44 = call i32 @test_bit(i32 %41, i32* %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @wait_event(i32 %40, i32 %47)
  %49 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %50 = call %struct.TYPE_8__* @first_peer_device(%struct.drbd_device* %49)
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = call i32 @drbd_flush_workqueue(i32* %53)
  %55 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %56 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @C_STANDALONE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %86

61:                                               ; preds = %31
  %62 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %63 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @R_SECONDARY, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %86

68:                                               ; preds = %61
  %69 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %70 = load i32, i32* @disk, align 4
  %71 = load i32, i32* @D_INCONSISTENT, align 4
  %72 = call i32 @NS(i32 %70, i32 %71)
  %73 = call i32 @drbd_request_state(%struct.drbd_device* %69, i32 %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @SS_SUCCESS, align 4
  %76 = icmp sge i32 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %68
  %78 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %79 = load i32, i32* @BM_LOCKED_MASK, align 4
  %80 = call i64 @drbd_bitmap_io(%struct.drbd_device* %78, i32* @drbd_bmio_set_n_write, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* @ERR_IO_MD_DISK, align 4
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %82, %77
  br label %85

85:                                               ; preds = %84, %68
  br label %92

86:                                               ; preds = %61, %31
  %87 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %88 = load i32, i32* @conn, align 4
  %89 = load i32, i32* @C_STARTING_SYNC_T, align 4
  %90 = call i32 @NS(i32 %88, i32 %89)
  %91 = call i32 @drbd_request_state(%struct.drbd_device* %87, i32 %90)
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %86, %85
  %93 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %94 = call i32 @drbd_resume_io(%struct.drbd_device* %93)
  %95 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %6, i32 0, i32 0
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = call i32 @mutex_unlock(i32* %97)
  %99 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %100 = call i32 @put_ldev(%struct.drbd_device* %99)
  br label %101

101:                                              ; preds = %92, %29, %22
  %102 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @drbd_adm_finish(%struct.drbd_config_context* %6, %struct.genl_info* %102, i32 %103)
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %101, %16
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @drbd_adm_prepare(%struct.drbd_config_context*, %struct.sk_buff*, %struct.genl_info*, i32) #1

declare dso_local i32 @get_ldev(%struct.drbd_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @drbd_suspend_io(%struct.drbd_device*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @drbd_flush_workqueue(i32*) #1

declare dso_local %struct.TYPE_8__* @first_peer_device(%struct.drbd_device*) #1

declare dso_local i32 @drbd_request_state(%struct.drbd_device*, i32) #1

declare dso_local i32 @NS(i32, i32) #1

declare dso_local i64 @drbd_bitmap_io(%struct.drbd_device*, i32*, i8*, i32) #1

declare dso_local i32 @drbd_resume_io(%struct.drbd_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @put_ldev(%struct.drbd_device*) #1

declare dso_local i32 @drbd_adm_finish(%struct.drbd_config_context*, %struct.genl_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
