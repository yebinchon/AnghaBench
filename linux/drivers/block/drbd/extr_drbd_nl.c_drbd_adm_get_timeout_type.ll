; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_drbd_adm_get_timeout_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_drbd_adm_get_timeout_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32 }
%struct.drbd_config_context = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.timeout_parms = type { i32 }

@DRBD_ADM_NEED_MINOR = common dso_local global i32 0, align 4
@NO_ERROR = common dso_local global i32 0, align 4
@D_OUTDATED = common dso_local global i64 0, align 8
@UT_PEER_OUTDATED = common dso_local global i32 0, align 4
@USE_DEGR_WFC_T = common dso_local global i32 0, align 4
@UT_DEGRADED = common dso_local global i32 0, align 4
@UT_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drbd_adm_get_timeout_type(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.drbd_config_context, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.timeout_parms, align 4
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %12 = load i32, i32* @DRBD_ADM_NEED_MINOR, align 4
  %13 = call i32 @drbd_adm_prepare(%struct.drbd_config_context* %6, %struct.sk_buff* %10, %struct.genl_info* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %6, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %65

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @NO_ERROR, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %61

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %6, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @D_OUTDATED, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @UT_PEER_OUTDATED, align 4
  br label %47

34:                                               ; preds = %24
  %35 = load i32, i32* @USE_DEGR_WFC_T, align 4
  %36 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %6, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = call i64 @test_bit(i32 %35, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @UT_DEGRADED, align 4
  br label %45

43:                                               ; preds = %34
  %44 = load i32, i32* @UT_DEFAULT, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  br label %47

47:                                               ; preds = %45, %32
  %48 = phi i32 [ %33, %32 ], [ %46, %45 ]
  %49 = getelementptr inbounds %struct.timeout_parms, %struct.timeout_parms* %8, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %6, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @timeout_parms_to_priv_skb(i32 %51, %struct.timeout_parms* %8)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %6, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @nlmsg_free(i32 %57)
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %3, align 4
  br label %65

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60, %23
  %62 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @drbd_adm_finish(%struct.drbd_config_context* %6, %struct.genl_info* %62, i32 %63)
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %61, %55, %17
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @drbd_adm_prepare(%struct.drbd_config_context*, %struct.sk_buff*, %struct.genl_info*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @timeout_parms_to_priv_skb(i32, %struct.timeout_parms*) #1

declare dso_local i32 @nlmsg_free(i32) #1

declare dso_local i32 @drbd_adm_finish(%struct.drbd_config_context*, %struct.genl_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
