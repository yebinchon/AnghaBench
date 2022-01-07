; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_drbd_adm_new_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_drbd_adm_new_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.drbd_connection = type { i32 }
%struct.drbd_config_context = type { i32, i32, i64 }
%struct.res_opts = type { i32 }
%struct.resource_info = type { i32 }

@NO_ERROR = common dso_local global i32 0, align 4
@ENOMSG = common dso_local global i32 0, align 4
@ERR_MANDATORY_TAG = common dso_local global i32 0, align 4
@NLM_F_EXCL = common dso_local global i32 0, align 4
@ERR_INVALID_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"resource exists\00", align 1
@resources_mutex = common dso_local global i32 0, align 4
@notification_mutex = common dso_local global i32 0, align 4
@NOTIFY_CREATE = common dso_local global i32 0, align 4
@ERR_NOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drbd_adm_new_resource(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.drbd_connection*, align 8
  %7 = alloca %struct.drbd_config_context, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.res_opts, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource_info, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %14 = call i32 @drbd_adm_prepare(%struct.drbd_config_context* %7, %struct.sk_buff* %12, %struct.genl_info* %13, i32 0)
  store i32 %14, i32* %8, align 4
  %15 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %7, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  br label %95

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @NO_ERROR, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %91

25:                                               ; preds = %20
  %26 = call i32 @set_res_opts_defaults(%struct.res_opts* %9)
  %27 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %28 = call i32 @res_opts_from_attrs(%struct.res_opts* %9, %struct.genl_info* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %25
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @ENOMSG, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load i32, i32* @ERR_MANDATORY_TAG, align 4
  store i32 %37, i32* %8, align 4
  %38 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %7, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i8* @from_attrs_err_to_txt(i32 %40)
  %42 = call i32 @drbd_msg_put_info(i32 %39, i8* %41)
  br label %91

43:                                               ; preds = %31, %25
  %44 = call i32 @drbd_check_resource_name(%struct.drbd_config_context* %7)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @NO_ERROR, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %91

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %7, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %49
  %54 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %55 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @NLM_F_EXCL, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %53
  %63 = load i32, i32* @ERR_INVALID_REQUEST, align 4
  store i32 %63, i32* %8, align 4
  %64 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %7, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @drbd_msg_put_info(i32 %65, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %67

67:                                               ; preds = %62, %53
  br label %91

68:                                               ; preds = %49
  %69 = call i32 @mutex_lock(i32* @resources_mutex)
  %70 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %7, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call %struct.drbd_connection* @conn_create(i32 %71, %struct.res_opts* %9)
  store %struct.drbd_connection* %72, %struct.drbd_connection** %6, align 8
  %73 = call i32 @mutex_unlock(i32* @resources_mutex)
  %74 = load %struct.drbd_connection*, %struct.drbd_connection** %6, align 8
  %75 = icmp ne %struct.drbd_connection* %74, null
  br i1 %75, label %76, label %88

76:                                               ; preds = %68
  %77 = call i32 @mutex_lock(i32* @notification_mutex)
  %78 = load %struct.drbd_connection*, %struct.drbd_connection** %6, align 8
  %79 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @resource_to_info(%struct.resource_info* %11, i32 %80)
  %82 = load %struct.drbd_connection*, %struct.drbd_connection** %6, align 8
  %83 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @NOTIFY_CREATE, align 4
  %86 = call i32 @notify_resource_state(i32* null, i32 0, i32 %84, %struct.resource_info* %11, i32 %85)
  %87 = call i32 @mutex_unlock(i32* @notification_mutex)
  br label %90

88:                                               ; preds = %68
  %89 = load i32, i32* @ERR_NOMEM, align 4
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %88, %76
  br label %91

91:                                               ; preds = %90, %67, %48, %36, %24
  %92 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @drbd_adm_finish(%struct.drbd_config_context* %7, %struct.genl_info* %92, i32 %93)
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %91, %18
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @drbd_adm_prepare(%struct.drbd_config_context*, %struct.sk_buff*, %struct.genl_info*, i32) #1

declare dso_local i32 @set_res_opts_defaults(%struct.res_opts*) #1

declare dso_local i32 @res_opts_from_attrs(%struct.res_opts*, %struct.genl_info*) #1

declare dso_local i32 @drbd_msg_put_info(i32, i8*) #1

declare dso_local i8* @from_attrs_err_to_txt(i32) #1

declare dso_local i32 @drbd_check_resource_name(%struct.drbd_config_context*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.drbd_connection* @conn_create(i32, %struct.res_opts*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @resource_to_info(%struct.resource_info*, i32) #1

declare dso_local i32 @notify_resource_state(i32*, i32, i32, %struct.resource_info*, i32) #1

declare dso_local i32 @drbd_adm_finish(%struct.drbd_config_context*, %struct.genl_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
