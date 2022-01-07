; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_drbd_adm_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_drbd_adm_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64* }
%struct.drbd_config_context = type { %struct.TYPE_2__*, i32, %struct.drbd_connection* }
%struct.TYPE_2__ = type { i32 }
%struct.drbd_connection = type { i32 }
%struct.disconnect_parms = type { i32 }

@DRBD_ADM_NEED_CONNECTION = common dso_local global i32 0, align 4
@NO_ERROR = common dso_local global i32 0, align 4
@DRBD_NLA_DISCONNECT_PARMS = common dso_local global i64 0, align 8
@ERR_MANDATORY_TAG = common dso_local global i32 0, align 4
@SS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drbd_adm_disconnect(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.drbd_config_context, align 8
  %7 = alloca %struct.disconnect_parms, align 4
  %8 = alloca %struct.drbd_connection*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %14 = load i32, i32* @DRBD_ADM_NEED_CONNECTION, align 4
  %15 = call i32 @drbd_adm_prepare(%struct.drbd_config_context* %6, %struct.sk_buff* %12, %struct.genl_info* %13, i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %6, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %3, align 4
  br label %75

21:                                               ; preds = %2
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @NO_ERROR, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %71

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %6, i32 0, i32 2
  %28 = load %struct.drbd_connection*, %struct.drbd_connection** %27, align 8
  store %struct.drbd_connection* %28, %struct.drbd_connection** %8, align 8
  %29 = call i32 @memset(%struct.disconnect_parms* %7, i32 0, i32 4)
  %30 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %31 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* @DRBD_NLA_DISCONNECT_PARMS, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %26
  %38 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %39 = call i32 @disconnect_parms_from_attrs(%struct.disconnect_parms* %7, %struct.genl_info* %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load i32, i32* @ERR_MANDATORY_TAG, align 4
  store i32 %43, i32* %10, align 4
  %44 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %6, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @from_attrs_err_to_txt(i32 %46)
  %48 = call i32 @drbd_msg_put_info(i32 %45, i32 %47)
  br label %71

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49, %26
  %51 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %6, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = call i32 @mutex_lock(i32* %53)
  %55 = load %struct.drbd_connection*, %struct.drbd_connection** %8, align 8
  %56 = getelementptr inbounds %struct.disconnect_parms, %struct.disconnect_parms* %7, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @conn_try_disconnect(%struct.drbd_connection* %55, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @SS_SUCCESS, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %50
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %10, align 4
  br label %66

64:                                               ; preds = %50
  %65 = load i32, i32* @NO_ERROR, align 4
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %6, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = call i32 @mutex_unlock(i32* %69)
  br label %71

71:                                               ; preds = %66, %42, %25
  %72 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @drbd_adm_finish(%struct.drbd_config_context* %6, %struct.genl_info* %72, i32 %73)
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %71, %19
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @drbd_adm_prepare(%struct.drbd_config_context*, %struct.sk_buff*, %struct.genl_info*, i32) #1

declare dso_local i32 @memset(%struct.disconnect_parms*, i32, i32) #1

declare dso_local i32 @disconnect_parms_from_attrs(%struct.disconnect_parms*, %struct.genl_info*) #1

declare dso_local i32 @drbd_msg_put_info(i32, i32) #1

declare dso_local i32 @from_attrs_err_to_txt(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @conn_try_disconnect(%struct.drbd_connection*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @drbd_adm_finish(%struct.drbd_config_context*, %struct.genl_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
