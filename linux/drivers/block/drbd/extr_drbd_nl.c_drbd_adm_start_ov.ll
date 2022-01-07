; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_drbd_adm_start_ov.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_drbd_adm_start_ov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64* }
%struct.drbd_config_context = type { %struct.TYPE_2__*, i32, %struct.drbd_device* }
%struct.TYPE_2__ = type { i32 }
%struct.drbd_device = type { i32, i32, i32, i32 }
%struct.start_ov_parms = type { i32, i32 }

@DRBD_ADM_NEED_MINOR = common dso_local global i32 0, align 4
@NO_ERROR = common dso_local global i32 0, align 4
@ULLONG_MAX = common dso_local global i32 0, align 4
@DRBD_NLA_START_OV_PARMS = common dso_local global i64 0, align 8
@ERR_MANDATORY_TAG = common dso_local global i32 0, align 4
@BM_SECT_PER_BIT = common dso_local global i32 0, align 4
@BITMAP_IO = common dso_local global i32 0, align 4
@conn = common dso_local global i32 0, align 4
@C_VERIFY_S = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drbd_adm_start_ov(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.drbd_config_context, align 8
  %7 = alloca %struct.drbd_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.start_ov_parms, align 4
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %13 = load i32, i32* @DRBD_ADM_NEED_MINOR, align 4
  %14 = call i32 @drbd_adm_prepare(%struct.drbd_config_context* %6, %struct.sk_buff* %11, %struct.genl_info* %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %6, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  br label %99

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @NO_ERROR, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %95

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %6, i32 0, i32 2
  %27 = load %struct.drbd_device*, %struct.drbd_device** %26, align 8
  store %struct.drbd_device* %27, %struct.drbd_device** %7, align 8
  %28 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %29 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.start_ov_parms, %struct.start_ov_parms* %9, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @ULLONG_MAX, align 4
  %33 = getelementptr inbounds %struct.start_ov_parms, %struct.start_ov_parms* %9, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %35 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* @DRBD_NLA_START_OV_PARMS, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %25
  %42 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %43 = call i32 @start_ov_parms_from_attrs(%struct.start_ov_parms* %9, %struct.genl_info* %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i32, i32* @ERR_MANDATORY_TAG, align 4
  store i32 %47, i32* %8, align 4
  %48 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %6, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @from_attrs_err_to_txt(i32 %50)
  %52 = call i32 @drbd_msg_put_info(i32 %49, i32 %51)
  br label %95

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %53, %25
  %55 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %6, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = call i32 @mutex_lock(i32* %57)
  %59 = getelementptr inbounds %struct.start_ov_parms, %struct.start_ov_parms* %9, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @BM_SECT_PER_BIT, align 4
  %62 = sub nsw i32 %61, 1
  %63 = xor i32 %62, -1
  %64 = and i32 %60, %63
  %65 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %66 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = getelementptr inbounds %struct.start_ov_parms, %struct.start_ov_parms* %9, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %70 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %72 = call i32 @drbd_suspend_io(%struct.drbd_device* %71)
  %73 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %74 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @BITMAP_IO, align 4
  %77 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %78 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %77, i32 0, i32 1
  %79 = call i32 @test_bit(i32 %76, i32* %78)
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = call i32 @wait_event(i32 %75, i32 %82)
  %84 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %85 = load i32, i32* @conn, align 4
  %86 = load i32, i32* @C_VERIFY_S, align 4
  %87 = call i32 @NS(i32 %85, i32 %86)
  %88 = call i32 @drbd_request_state(%struct.drbd_device* %84, i32 %87)
  store i32 %88, i32* %8, align 4
  %89 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %90 = call i32 @drbd_resume_io(%struct.drbd_device* %89)
  %91 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %6, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = call i32 @mutex_unlock(i32* %93)
  br label %95

95:                                               ; preds = %54, %46, %24
  %96 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @drbd_adm_finish(%struct.drbd_config_context* %6, %struct.genl_info* %96, i32 %97)
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %95, %18
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @drbd_adm_prepare(%struct.drbd_config_context*, %struct.sk_buff*, %struct.genl_info*, i32) #1

declare dso_local i32 @start_ov_parms_from_attrs(%struct.start_ov_parms*, %struct.genl_info*) #1

declare dso_local i32 @drbd_msg_put_info(i32, i32) #1

declare dso_local i32 @from_attrs_err_to_txt(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @drbd_suspend_io(%struct.drbd_device*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @drbd_request_state(%struct.drbd_device*, i32) #1

declare dso_local i32 @NS(i32, i32) #1

declare dso_local i32 @drbd_resume_io(%struct.drbd_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @drbd_adm_finish(%struct.drbd_config_context*, %struct.genl_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
