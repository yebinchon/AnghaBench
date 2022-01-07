; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_mc-sys.c_mc_polling_wait_preemptible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_mc-sys.c_mc_polling_wait_preemptible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_io = type { i32, i32, i32 }
%struct.fsl_mc_command = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@MC_CMD_COMPLETION_TIMEOUT_MS = common dso_local global i32 0, align 4
@MC_CMD_STATUS_READY = common dso_local global i32 0, align 4
@MC_CMD_COMPLETION_POLLING_MIN_SLEEP_USECS = common dso_local global i32 0, align 4
@MC_CMD_COMPLETION_POLLING_MAX_SLEEP_USECS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"MC command timed out (portal: %pa, dprc handle: %#x, command: %#x)\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_mc_io*, %struct.fsl_mc_command*, i32*)* @mc_polling_wait_preemptible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mc_polling_wait_preemptible(%struct.fsl_mc_io* %0, %struct.fsl_mc_command* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsl_mc_io*, align 8
  %6 = alloca %struct.fsl_mc_command*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.fsl_mc_io* %0, %struct.fsl_mc_io** %5, align 8
  store %struct.fsl_mc_command* %1, %struct.fsl_mc_command** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i64, i64* @jiffies, align 8
  %11 = load i32, i32* @MC_CMD_COMPLETION_TIMEOUT_MS, align 4
  %12 = call i64 @msecs_to_jiffies(i32 %11)
  %13 = add i64 %10, %12
  store i64 %13, i64* %9, align 8
  br label %14

14:                                               ; preds = %47, %3
  %15 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %5, align 8
  %16 = getelementptr inbounds %struct.fsl_mc_io, %struct.fsl_mc_io* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.fsl_mc_command*, %struct.fsl_mc_command** %6, align 8
  %19 = call i32 @mc_read_response(i32 %17, %struct.fsl_mc_command* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @MC_CMD_STATUS_READY, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %48

24:                                               ; preds = %14
  %25 = load i32, i32* @MC_CMD_COMPLETION_POLLING_MIN_SLEEP_USECS, align 4
  %26 = load i32, i32* @MC_CMD_COMPLETION_POLLING_MAX_SLEEP_USECS, align 4
  %27 = call i32 @usleep_range(i32 %25, i32 %26)
  %28 = load i64, i64* @jiffies, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i64 @time_after_eq(i64 %28, i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %24
  %33 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %5, align 8
  %34 = getelementptr inbounds %struct.fsl_mc_io, %struct.fsl_mc_io* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %5, align 8
  %37 = getelementptr inbounds %struct.fsl_mc_io, %struct.fsl_mc_io* %36, i32 0, i32 0
  %38 = load %struct.fsl_mc_command*, %struct.fsl_mc_command** %6, align 8
  %39 = call i64 @mc_cmd_hdr_read_token(%struct.fsl_mc_command* %38)
  %40 = trunc i64 %39 to i32
  %41 = load %struct.fsl_mc_command*, %struct.fsl_mc_command** %6, align 8
  %42 = call i64 @mc_cmd_hdr_read_cmdid(%struct.fsl_mc_command* %41)
  %43 = trunc i64 %42 to i32
  %44 = call i32 @dev_dbg(i32 %35, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32* %37, i32 %40, i32 %43)
  %45 = load i32, i32* @ETIMEDOUT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %51

47:                                               ; preds = %24
  br label %14

48:                                               ; preds = %23
  %49 = load i32, i32* %8, align 4
  %50 = load i32*, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %48, %32
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mc_read_response(i32, %struct.fsl_mc_command*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32*, i32, i32) #1

declare dso_local i64 @mc_cmd_hdr_read_token(%struct.fsl_mc_command*) #1

declare dso_local i64 @mc_cmd_hdr_read_cmdid(%struct.fsl_mc_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
