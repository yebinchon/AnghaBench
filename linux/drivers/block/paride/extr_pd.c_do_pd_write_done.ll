; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_pd.c_do_pd_write_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_pd.c_do_pd_write_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@jiffies = common dso_local global i32 0, align 4
@pd_timeout = common dso_local global i32 0, align 4
@Hold = common dso_local global i32 0, align 4
@pd_current = common dso_local global i32 0, align 4
@STAT_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"do_pd_write_done\00", align 1
@STAT_ERR = common dso_local global i32 0, align 4
@pd_retries = common dso_local global i64 0, align 8
@PD_MAX_RETRIES = common dso_local global i64 0, align 8
@do_pd_write_start = common dso_local global i32 0, align 4
@phase = common dso_local global i32 0, align 4
@Wait = common dso_local global i32 0, align 4
@Fail = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @do_pd_write_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_pd_write_done() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @pd_ready()
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %11, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @jiffies, align 4
  %6 = load i32, i32* @pd_timeout, align 4
  %7 = call i32 @time_after_eq(i32 %5, i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = load i32, i32* @Hold, align 4
  store i32 %10, i32* %1, align 4
  br label %31

11:                                               ; preds = %4, %0
  %12 = load i32, i32* @pd_current, align 4
  %13 = load i32, i32* @STAT_READY, align 4
  %14 = call i32 @pd_wait_for(i32 %12, i32 %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @STAT_ERR, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %11
  %19 = load i64, i64* @pd_retries, align 8
  %20 = load i64, i64* @PD_MAX_RETRIES, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i64, i64* @pd_retries, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* @pd_retries, align 8
  %25 = load i32, i32* @do_pd_write_start, align 4
  store i32 %25, i32* @phase, align 4
  %26 = load i32, i32* @Wait, align 4
  store i32 %26, i32* %1, align 4
  br label %31

27:                                               ; preds = %18
  %28 = load i32, i32* @Fail, align 4
  store i32 %28, i32* %1, align 4
  br label %31

29:                                               ; preds = %11
  %30 = load i32, i32* @Ok, align 4
  store i32 %30, i32* %1, align 4
  br label %31

31:                                               ; preds = %29, %27, %22, %9
  %32 = load i32, i32* %1, align 4
  ret i32 %32
}

declare dso_local i32 @pd_ready(...) #1

declare dso_local i32 @time_after_eq(i32, i32) #1

declare dso_local i32 @pd_wait_for(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
