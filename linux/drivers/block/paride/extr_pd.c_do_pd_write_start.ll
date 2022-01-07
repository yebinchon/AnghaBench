; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_pd.c_do_pd_write_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_pd.c_do_pd_write_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@pd_current = common dso_local global %struct.TYPE_4__* null, align 8
@STAT_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"do_pd_write\00", align 1
@STAT_ERR = common dso_local global i32 0, align 4
@pd_retries = common dso_local global i64 0, align 8
@PD_MAX_RETRIES = common dso_local global i64 0, align 8
@Wait = common dso_local global i32 0, align 4
@Fail = common dso_local global i32 0, align 4
@IDE_WRITE = common dso_local global i32 0, align 4
@pd_block = common dso_local global i32 0, align 4
@pd_run = common dso_local global i32 0, align 4
@STAT_DRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"do_pd_write_drq\00", align 1
@pd_buf = common dso_local global i32 0, align 4
@do_pd_write_done = common dso_local global i32 0, align 4
@phase = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@PD_TMO = common dso_local global i64 0, align 8
@pd_timeout = common dso_local global i64 0, align 8
@Hold = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @do_pd_write_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_pd_write_start() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pd_current, align 8
  %3 = load i32, i32* @STAT_READY, align 4
  %4 = call i32 @pd_wait_for(%struct.TYPE_4__* %2, i32 %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @STAT_ERR, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %0
  %9 = load i64, i64* @pd_retries, align 8
  %10 = load i64, i64* @PD_MAX_RETRIES, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load i64, i64* @pd_retries, align 8
  %14 = add nsw i64 %13, 1
  store i64 %14, i64* @pd_retries, align 8
  %15 = load i32, i32* @Wait, align 4
  store i32 %15, i32* %1, align 4
  br label %57

16:                                               ; preds = %8
  %17 = load i32, i32* @Fail, align 4
  store i32 %17, i32* %1, align 4
  br label %57

18:                                               ; preds = %0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pd_current, align 8
  %20 = load i32, i32* @IDE_WRITE, align 4
  %21 = load i32, i32* @pd_block, align 4
  %22 = load i32, i32* @pd_run, align 4
  %23 = call i32 @pd_ide_command(%struct.TYPE_4__* %19, i32 %20, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %18, %50
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pd_current, align 8
  %26 = load i32, i32* @STAT_DRQ, align 4
  %27 = call i32 @pd_wait_for(%struct.TYPE_4__* %25, i32 %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @STAT_ERR, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %24
  %32 = load i64, i64* @pd_retries, align 8
  %33 = load i64, i64* @PD_MAX_RETRIES, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i64, i64* @pd_retries, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* @pd_retries, align 8
  %38 = load i32, i32* @Wait, align 4
  store i32 %38, i32* %1, align 4
  br label %57

39:                                               ; preds = %31
  %40 = load i32, i32* @Fail, align 4
  store i32 %40, i32* %1, align 4
  br label %57

41:                                               ; preds = %24
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pd_current, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @pd_buf, align 4
  %46 = call i32 @pi_write_block(i32 %44, i32 %45, i32 512)
  %47 = call i64 (...) @pd_next_buf()
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %51

50:                                               ; preds = %41
  br label %24

51:                                               ; preds = %49
  %52 = load i32, i32* @do_pd_write_done, align 4
  store i32 %52, i32* @phase, align 4
  %53 = load i64, i64* @jiffies, align 8
  %54 = load i64, i64* @PD_TMO, align 8
  %55 = add nsw i64 %53, %54
  store i64 %55, i64* @pd_timeout, align 8
  %56 = load i32, i32* @Hold, align 4
  store i32 %56, i32* %1, align 4
  br label %57

57:                                               ; preds = %51, %39, %35, %16, %12
  %58 = load i32, i32* %1, align 4
  ret i32 %58
}

declare dso_local i32 @pd_wait_for(%struct.TYPE_4__*, i32, i8*) #1

declare dso_local i32 @pd_ide_command(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @pi_write_block(i32, i32, i32) #1

declare dso_local i64 @pd_next_buf(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
