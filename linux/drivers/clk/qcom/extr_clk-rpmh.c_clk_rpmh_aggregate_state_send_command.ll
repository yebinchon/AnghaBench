; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rpmh.c_clk_rpmh_aggregate_state_send_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rpmh.c_clk_rpmh_aggregate_state_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_rpmh = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"clk: %s failed to %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_rpmh*, i32)* @clk_rpmh_aggregate_state_send_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_rpmh_aggregate_state_send_command(%struct.clk_rpmh* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_rpmh*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.clk_rpmh* %0, %struct.clk_rpmh** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.clk_rpmh*, %struct.clk_rpmh** %4, align 8
  %9 = getelementptr inbounds %struct.clk_rpmh, %struct.clk_rpmh* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %7, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %77

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load %struct.clk_rpmh*, %struct.clk_rpmh** %4, align 8
  %18 = getelementptr inbounds %struct.clk_rpmh, %struct.clk_rpmh* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  br label %21

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20, %16
  %22 = phi i32 [ %19, %16 ], [ 0, %20 ]
  %23 = load %struct.clk_rpmh*, %struct.clk_rpmh** %4, align 8
  %24 = getelementptr inbounds %struct.clk_rpmh, %struct.clk_rpmh* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.clk_rpmh*, %struct.clk_rpmh** %4, align 8
  %26 = getelementptr inbounds %struct.clk_rpmh, %struct.clk_rpmh* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.clk_rpmh*, %struct.clk_rpmh** %4, align 8
  %29 = getelementptr inbounds %struct.clk_rpmh, %struct.clk_rpmh* %28, i32 0, i32 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %27, %32
  %34 = load %struct.clk_rpmh*, %struct.clk_rpmh** %4, align 8
  %35 = getelementptr inbounds %struct.clk_rpmh, %struct.clk_rpmh* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.clk_rpmh*, %struct.clk_rpmh** %4, align 8
  %37 = getelementptr inbounds %struct.clk_rpmh, %struct.clk_rpmh* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.clk_rpmh*, %struct.clk_rpmh** %4, align 8
  %40 = getelementptr inbounds %struct.clk_rpmh, %struct.clk_rpmh* %39, i32 0, i32 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i32 %38, i32* %42, align 4
  %43 = load %struct.clk_rpmh*, %struct.clk_rpmh** %4, align 8
  %44 = call i32 @clk_rpmh_send_aggregate_command(%struct.clk_rpmh* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %77

48:                                               ; preds = %21
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load %struct.clk_rpmh*, %struct.clk_rpmh** %4, align 8
  %56 = getelementptr inbounds %struct.clk_rpmh, %struct.clk_rpmh* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  br label %67

57:                                               ; preds = %51, %48
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load %struct.clk_rpmh*, %struct.clk_rpmh** %4, align 8
  %62 = getelementptr inbounds %struct.clk_rpmh, %struct.clk_rpmh* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.clk_rpmh*, %struct.clk_rpmh** %4, align 8
  %65 = getelementptr inbounds %struct.clk_rpmh, %struct.clk_rpmh* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %60, %57
  br label %67

67:                                               ; preds = %66, %54
  %68 = load %struct.clk_rpmh*, %struct.clk_rpmh** %4, align 8
  %69 = getelementptr inbounds %struct.clk_rpmh, %struct.clk_rpmh* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %75 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %70, i8* %74)
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %67, %47, %12
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @clk_rpmh_send_aggregate_command(%struct.clk_rpmh*) #1

declare dso_local i32 @WARN(i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
