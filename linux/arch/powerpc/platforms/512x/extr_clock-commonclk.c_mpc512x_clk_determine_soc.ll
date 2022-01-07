; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/512x/extr_clock-commonclk.c_mpc512x_clk_determine_soc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/512x/extr_clock-commonclk.c_mpc512x_clk_determine_soc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"fsl,mpc5121\00", align 1
@MPC512x_SOC_MPC5121 = common dso_local global i32 0, align 4
@soc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"fsl,mpc5123\00", align 1
@MPC512x_SOC_MPC5123 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"fsl,mpc5125\00", align 1
@MPC512x_SOC_MPC5125 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mpc512x_clk_determine_soc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc512x_clk_determine_soc() #0 {
  %1 = call i64 @of_machine_is_compatible(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = load i32, i32* @MPC512x_SOC_MPC5121, align 4
  store i32 %4, i32* @soc, align 4
  br label %15

5:                                                ; preds = %0
  %6 = call i64 @of_machine_is_compatible(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = load i32, i32* @MPC512x_SOC_MPC5123, align 4
  store i32 %9, i32* @soc, align 4
  br label %15

10:                                               ; preds = %5
  %11 = call i64 @of_machine_is_compatible(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load i32, i32* @MPC512x_SOC_MPC5125, align 4
  store i32 %14, i32* @soc, align 4
  br label %15

15:                                               ; preds = %3, %8, %13, %10
  ret void
}

declare dso_local i64 @of_machine_is_compatible(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
