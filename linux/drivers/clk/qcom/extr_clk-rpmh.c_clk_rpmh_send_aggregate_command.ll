; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rpmh.c_clk_rpmh_send_aggregate_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rpmh.c_clk_rpmh_send_aggregate_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_rpmh = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.tcs_cmd = type { i32, i32, i32 }

@RPMH_SLEEP_STATE = common dso_local global i32 0, align 4
@RPMH_ACTIVE_ONLY_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"set %s state of %s failed: (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"sleep\00", align 1
@RPMH_WAKE_ONLY_STATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"wake\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_rpmh*)* @clk_rpmh_send_aggregate_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_rpmh_send_aggregate_command(%struct.clk_rpmh* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_rpmh*, align 8
  %4 = alloca %struct.tcs_cmd, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.clk_rpmh* %0, %struct.clk_rpmh** %3, align 8
  %9 = bitcast %struct.tcs_cmd* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 12, i1 false)
  %10 = load i32, i32* @RPMH_SLEEP_STATE, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.clk_rpmh*, %struct.clk_rpmh** %3, align 8
  %12 = getelementptr inbounds %struct.clk_rpmh, %struct.clk_rpmh* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = getelementptr inbounds %struct.tcs_cmd, %struct.tcs_cmd* %4, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load %struct.clk_rpmh*, %struct.clk_rpmh** %3, align 8
  %16 = getelementptr inbounds %struct.clk_rpmh, %struct.clk_rpmh* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  %18 = load %struct.clk_rpmh*, %struct.clk_rpmh** %3, align 8
  %19 = getelementptr inbounds %struct.clk_rpmh, %struct.clk_rpmh* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %70, %1
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @RPMH_ACTIVE_ONLY_STATE, align 4
  %24 = icmp ule i32 %22, %23
  br i1 %24, label %25, label %73

25:                                               ; preds = %21
  %26 = load %struct.clk_rpmh*, %struct.clk_rpmh** %3, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i64 @has_state_changed(%struct.clk_rpmh* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %69

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @BIT(i32 %32)
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = getelementptr inbounds %struct.tcs_cmd, %struct.tcs_cmd* %4, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %30
  %40 = load %struct.clk_rpmh*, %struct.clk_rpmh** %3, align 8
  %41 = getelementptr inbounds %struct.clk_rpmh, %struct.clk_rpmh* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @rpmh_write_async(i32 %42, i32 %43, %struct.tcs_cmd* %4, i32 1)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %68

47:                                               ; preds = %39
  %48 = load %struct.clk_rpmh*, %struct.clk_rpmh** %3, align 8
  %49 = getelementptr inbounds %struct.clk_rpmh, %struct.clk_rpmh* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  br label %60

54:                                               ; preds = %47
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @RPMH_WAKE_ONLY_STATE, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  br label %60

60:                                               ; preds = %54, %53
  %61 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %53 ], [ %59, %54 ]
  %62 = load %struct.clk_rpmh*, %struct.clk_rpmh** %3, align 8
  %63 = getelementptr inbounds %struct.clk_rpmh, %struct.clk_rpmh* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %61, i32 %64, i32 %65)
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %2, align 4
  br label %86

68:                                               ; preds = %39
  br label %69

69:                                               ; preds = %68, %25
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %7, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %21

73:                                               ; preds = %21
  %74 = load %struct.clk_rpmh*, %struct.clk_rpmh** %3, align 8
  %75 = getelementptr inbounds %struct.clk_rpmh, %struct.clk_rpmh* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.clk_rpmh*, %struct.clk_rpmh** %3, align 8
  %78 = getelementptr inbounds %struct.clk_rpmh, %struct.clk_rpmh* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %struct.clk_rpmh*, %struct.clk_rpmh** %3, align 8
  %80 = getelementptr inbounds %struct.clk_rpmh, %struct.clk_rpmh* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.clk_rpmh*, %struct.clk_rpmh** %3, align 8
  %83 = getelementptr inbounds %struct.clk_rpmh, %struct.clk_rpmh* %82, i32 0, i32 3
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i32 %81, i32* %85, align 4
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %73, %60
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @has_state_changed(%struct.clk_rpmh*, i32) #2

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @rpmh_write_async(i32, i32, %struct.tcs_cmd*, i32) #2

declare dso_local i32 @dev_err(i32, i8*, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
