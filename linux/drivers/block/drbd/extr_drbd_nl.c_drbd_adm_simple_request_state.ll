; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_drbd_adm_simple_request_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_drbd_adm_simple_request_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32 }
%union.drbd_state = type { i32 }
%struct.drbd_config_context = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@DRBD_ADM_NEED_MINOR = common dso_local global i32 0, align 4
@NO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*, i32, i32)* @drbd_adm_simple_request_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drbd_adm_simple_request_state(%struct.sk_buff* %0, %struct.genl_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %union.drbd_state, align 4
  %7 = alloca %union.drbd_state, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.genl_info*, align 8
  %10 = alloca %struct.drbd_config_context, align 8
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %6, i32 0, i32 0
  store i32 %2, i32* %12, align 4
  %13 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %7, i32 0, i32 0
  store i32 %3, i32* %13, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.genl_info* %1, %struct.genl_info** %9, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %15 = load %struct.genl_info*, %struct.genl_info** %9, align 8
  %16 = load i32, i32* @DRBD_ADM_NEED_MINOR, align 4
  %17 = call i32 @drbd_adm_prepare(%struct.drbd_config_context* %10, %struct.sk_buff* %14, %struct.genl_info* %15, i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %10, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %5, align 4
  br label %48

23:                                               ; preds = %4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @NO_ERROR, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %44

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %10, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %10, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %6, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %7, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @drbd_request_state(i32 %34, i32 %36, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %10, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  br label %44

44:                                               ; preds = %28, %27
  %45 = load %struct.genl_info*, %struct.genl_info** %9, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @drbd_adm_finish(%struct.drbd_config_context* %10, %struct.genl_info* %45, i32 %46)
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %44, %21
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @drbd_adm_prepare(%struct.drbd_config_context*, %struct.sk_buff*, %struct.genl_info*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @drbd_request_state(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @drbd_adm_finish(%struct.drbd_config_context*, %struct.genl_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
