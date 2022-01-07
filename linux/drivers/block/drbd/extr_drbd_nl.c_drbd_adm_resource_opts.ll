; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_drbd_adm_resource_opts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_drbd_adm_resource_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32 }
%struct.drbd_config_context = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, %struct.res_opts }
%struct.res_opts = type { i32 }

@DRBD_ADM_NEED_RESOURCE = common dso_local global i32 0, align 4
@NO_ERROR = common dso_local global i32 0, align 4
@ENOMSG = common dso_local global i32 0, align 4
@ERR_MANDATORY_TAG = common dso_local global i32 0, align 4
@ERR_INVALID_REQUEST = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ERR_NOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drbd_adm_resource_opts(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.drbd_config_context, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.res_opts, align 4
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %12 = load i32, i32* @DRBD_ADM_NEED_RESOURCE, align 4
  %13 = call i32 @drbd_adm_prepare(%struct.drbd_config_context* %6, %struct.sk_buff* %10, %struct.genl_info* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %6, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %80

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @NO_ERROR, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %76

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %6, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = bitcast %struct.res_opts* %8 to i8*
  %29 = bitcast %struct.res_opts* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 4, i1 false)
  %30 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %31 = call i64 @should_set_defaults(%struct.genl_info* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = call i32 @set_res_opts_defaults(%struct.res_opts* %8)
  br label %35

35:                                               ; preds = %33, %24
  %36 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %37 = call i32 @res_opts_from_attrs(%struct.res_opts* %8, %struct.genl_info* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @ENOMSG, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp ne i32 %41, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load i32, i32* @ERR_MANDATORY_TAG, align 4
  store i32 %46, i32* %7, align 4
  %47 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %6, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @from_attrs_err_to_txt(i32 %49)
  %51 = call i32 @drbd_msg_put_info(i32 %48, i32 %50)
  br label %76

52:                                               ; preds = %40, %35
  %53 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %6, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = call i32 @mutex_lock(i32* %55)
  %57 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %6, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = call i32 @set_resource_options(%struct.TYPE_2__* %58, %struct.res_opts* %8)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %52
  %63 = load i32, i32* @ERR_INVALID_REQUEST, align 4
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* @ERR_NOMEM, align 4
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %68, %62
  br label %71

71:                                               ; preds = %70, %52
  %72 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %6, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = call i32 @mutex_unlock(i32* %74)
  br label %76

76:                                               ; preds = %71, %45, %23
  %77 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @drbd_adm_finish(%struct.drbd_config_context* %6, %struct.genl_info* %77, i32 %78)
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %76, %17
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @drbd_adm_prepare(%struct.drbd_config_context*, %struct.sk_buff*, %struct.genl_info*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @should_set_defaults(%struct.genl_info*) #1

declare dso_local i32 @set_res_opts_defaults(%struct.res_opts*) #1

declare dso_local i32 @res_opts_from_attrs(%struct.res_opts*, %struct.genl_info*) #1

declare dso_local i32 @drbd_msg_put_info(i32, i32) #1

declare dso_local i32 @from_attrs_err_to_txt(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @set_resource_options(%struct.TYPE_2__*, %struct.res_opts*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @drbd_adm_finish(%struct.drbd_config_context*, %struct.genl_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
