; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_drbd_adm_set_role.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_drbd_adm_set_role.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { %struct.TYPE_3__*, i64* }
%struct.TYPE_3__ = type { i64 }
%struct.drbd_config_context = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.set_role_parms = type { i32 }

@DRBD_ADM_NEED_MINOR = common dso_local global i32 0, align 4
@NO_ERROR = common dso_local global i32 0, align 4
@DRBD_NLA_SET_ROLE_PARMS = common dso_local global i64 0, align 8
@ERR_MANDATORY_TAG = common dso_local global i32 0, align 4
@DRBD_ADM_PRIMARY = common dso_local global i64 0, align 8
@R_PRIMARY = common dso_local global i32 0, align 4
@R_SECONDARY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drbd_adm_set_role(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.drbd_config_context, align 8
  %7 = alloca %struct.set_role_parms, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %12 = load i32, i32* @DRBD_ADM_NEED_MINOR, align 4
  %13 = call i32 @drbd_adm_prepare(%struct.drbd_config_context* %6, %struct.sk_buff* %10, %struct.genl_info* %11, i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %6, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %3, align 4
  br label %81

19:                                               ; preds = %2
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @NO_ERROR, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %77

24:                                               ; preds = %19
  %25 = call i32 @memset(%struct.set_role_parms* %7, i32 0, i32 4)
  %26 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %27 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* @DRBD_NLA_SET_ROLE_PARMS, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %24
  %34 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %35 = call i32 @set_role_parms_from_attrs(%struct.set_role_parms* %7, %struct.genl_info* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load i32, i32* @ERR_MANDATORY_TAG, align 4
  store i32 %39, i32* %9, align 4
  %40 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %6, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @from_attrs_err_to_txt(i32 %42)
  %44 = call i32 @drbd_msg_put_info(i32 %41, i32 %43)
  br label %77

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %45, %24
  %47 = call i32 (...) @genl_unlock()
  %48 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %6, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = call i32 @mutex_lock(i32* %50)
  %52 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %53 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @DRBD_ADM_PRIMARY, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %46
  %60 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %6, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @R_PRIMARY, align 4
  %63 = getelementptr inbounds %struct.set_role_parms, %struct.set_role_parms* %7, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @drbd_set_role(i32 %61, i32 %62, i32 %64)
  store i32 %65, i32* %9, align 4
  br label %71

66:                                               ; preds = %46
  %67 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %6, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @R_SECONDARY, align 4
  %70 = call i32 @drbd_set_role(i32 %68, i32 %69, i32 0)
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %66, %59
  %72 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %6, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = call i32 (...) @genl_lock()
  br label %77

77:                                               ; preds = %71, %38, %23
  %78 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @drbd_adm_finish(%struct.drbd_config_context* %6, %struct.genl_info* %78, i32 %79)
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %77, %17
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @drbd_adm_prepare(%struct.drbd_config_context*, %struct.sk_buff*, %struct.genl_info*, i32) #1

declare dso_local i32 @memset(%struct.set_role_parms*, i32, i32) #1

declare dso_local i32 @set_role_parms_from_attrs(%struct.set_role_parms*, %struct.genl_info*) #1

declare dso_local i32 @drbd_msg_put_info(i32, i32) #1

declare dso_local i32 @from_attrs_err_to_txt(i32) #1

declare dso_local i32 @genl_unlock(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @drbd_set_role(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @genl_lock(...) #1

declare dso_local i32 @drbd_adm_finish(%struct.drbd_config_context*, %struct.genl_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
