; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rpmh.c_clk_rpmh_bcm_send_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rpmh.c_clk_rpmh_bcm_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_rpmh = type { i32, i32, i32, i32, i32 }
%struct.tcs_cmd = type { i32, i32, i32 }

@rpmh_clk_lock = common dso_local global i32 0, align 4
@RPMH_ACTIVE_ONLY_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"set active state of %s failed: (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_rpmh*, i32)* @clk_rpmh_bcm_send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_rpmh_bcm_send_cmd(%struct.clk_rpmh* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_rpmh*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcs_cmd, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.clk_rpmh* %0, %struct.clk_rpmh** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = bitcast %struct.tcs_cmd* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 12, i1 false)
  %10 = call i32 @mutex_lock(i32* @rpmh_clk_lock)
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  %14 = load %struct.clk_rpmh*, %struct.clk_rpmh** %4, align 8
  %15 = getelementptr inbounds %struct.clk_rpmh, %struct.clk_rpmh* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.clk_rpmh*, %struct.clk_rpmh** %4, align 8
  %20 = getelementptr inbounds %struct.clk_rpmh, %struct.clk_rpmh* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %18, %13
  br label %23

23:                                               ; preds = %22, %2
  %24 = load %struct.clk_rpmh*, %struct.clk_rpmh** %4, align 8
  %25 = getelementptr inbounds %struct.clk_rpmh, %struct.clk_rpmh* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = call i32 @mutex_unlock(i32* @rpmh_clk_lock)
  store i32 0, i32* %3, align 4
  br label %63

31:                                               ; preds = %23
  %32 = load %struct.clk_rpmh*, %struct.clk_rpmh** %4, align 8
  %33 = getelementptr inbounds %struct.clk_rpmh, %struct.clk_rpmh* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.tcs_cmd, %struct.tcs_cmd* %6, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @BCM_TCS_CMD(i32 1, i32 %36, i32 0, i32 %37)
  %39 = getelementptr inbounds %struct.tcs_cmd, %struct.tcs_cmd* %6, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = load %struct.clk_rpmh*, %struct.clk_rpmh** %4, align 8
  %41 = getelementptr inbounds %struct.clk_rpmh, %struct.clk_rpmh* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @RPMH_ACTIVE_ONLY_STATE, align 4
  %44 = call i32 @rpmh_write_async(i32 %42, i32 %43, %struct.tcs_cmd* %6, i32 1)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %31
  %48 = load %struct.clk_rpmh*, %struct.clk_rpmh** %4, align 8
  %49 = getelementptr inbounds %struct.clk_rpmh, %struct.clk_rpmh* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.clk_rpmh*, %struct.clk_rpmh** %4, align 8
  %52 = getelementptr inbounds %struct.clk_rpmh, %struct.clk_rpmh* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54)
  %56 = call i32 @mutex_unlock(i32* @rpmh_clk_lock)
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %3, align 4
  br label %63

58:                                               ; preds = %31
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.clk_rpmh*, %struct.clk_rpmh** %4, align 8
  %61 = getelementptr inbounds %struct.clk_rpmh, %struct.clk_rpmh* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = call i32 @mutex_unlock(i32* @rpmh_clk_lock)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %58, %47, %29
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @BCM_TCS_CMD(i32, i32, i32, i32) #2

declare dso_local i32 @rpmh_write_async(i32, i32, %struct.tcs_cmd*, i32) #2

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
