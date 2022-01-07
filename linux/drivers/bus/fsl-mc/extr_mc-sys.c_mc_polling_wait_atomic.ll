; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_mc-sys.c_mc_polling_wait_atomic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_mc-sys.c_mc_polling_wait_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_io = type { i32, i32, i32 }
%struct.fsl_mc_command = type { i32 }

@MC_CMD_COMPLETION_TIMEOUT_MS = common dso_local global i32 0, align 4
@MC_CMD_COMPLETION_POLLING_MAX_SLEEP_USECS = common dso_local global i32 0, align 4
@MC_CMD_STATUS_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"MC command timed out (portal: %pa, dprc handle: %#x, command: %#x)\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_mc_io*, %struct.fsl_mc_command*, i32*)* @mc_polling_wait_atomic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mc_polling_wait_atomic(%struct.fsl_mc_io* %0, %struct.fsl_mc_command* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsl_mc_io*, align 8
  %6 = alloca %struct.fsl_mc_command*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.fsl_mc_io* %0, %struct.fsl_mc_io** %5, align 8
  store %struct.fsl_mc_command* %1, %struct.fsl_mc_command** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* @MC_CMD_COMPLETION_TIMEOUT_MS, align 4
  %11 = mul nsw i32 %10, 1000
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %9, align 8
  %13 = load i32, i32* @MC_CMD_COMPLETION_TIMEOUT_MS, align 4
  %14 = mul nsw i32 %13, 1000
  %15 = load i32, i32* @MC_CMD_COMPLETION_POLLING_MAX_SLEEP_USECS, align 4
  %16 = srem i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUILD_BUG_ON(i32 %18)
  br label %20

20:                                               ; preds = %54, %3
  %21 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %5, align 8
  %22 = getelementptr inbounds %struct.fsl_mc_io, %struct.fsl_mc_io* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.fsl_mc_command*, %struct.fsl_mc_command** %6, align 8
  %25 = call i32 @mc_read_response(i32 %23, %struct.fsl_mc_command* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @MC_CMD_STATUS_READY, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %55

30:                                               ; preds = %20
  %31 = load i32, i32* @MC_CMD_COMPLETION_POLLING_MAX_SLEEP_USECS, align 4
  %32 = call i32 @udelay(i32 %31)
  %33 = load i32, i32* @MC_CMD_COMPLETION_POLLING_MAX_SLEEP_USECS, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %9, align 8
  %36 = sub i64 %35, %34
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %30
  %40 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %5, align 8
  %41 = getelementptr inbounds %struct.fsl_mc_io, %struct.fsl_mc_io* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %5, align 8
  %44 = getelementptr inbounds %struct.fsl_mc_io, %struct.fsl_mc_io* %43, i32 0, i32 0
  %45 = load %struct.fsl_mc_command*, %struct.fsl_mc_command** %6, align 8
  %46 = call i64 @mc_cmd_hdr_read_token(%struct.fsl_mc_command* %45)
  %47 = trunc i64 %46 to i32
  %48 = load %struct.fsl_mc_command*, %struct.fsl_mc_command** %6, align 8
  %49 = call i64 @mc_cmd_hdr_read_cmdid(%struct.fsl_mc_command* %48)
  %50 = trunc i64 %49 to i32
  %51 = call i32 @dev_dbg(i32 %42, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32* %44, i32 %47, i32 %50)
  %52 = load i32, i32* @ETIMEDOUT, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %58

54:                                               ; preds = %30
  br label %20

55:                                               ; preds = %29
  %56 = load i32, i32* %8, align 4
  %57 = load i32*, i32** %7, align 8
  store i32 %56, i32* %57, align 4
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %55, %39
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @mc_read_response(i32, %struct.fsl_mc_command*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32*, i32, i32) #1

declare dso_local i64 @mc_cmd_hdr_read_token(%struct.fsl_mc_command*) #1

declare dso_local i64 @mc_cmd_hdr_read_cmdid(%struct.fsl_mc_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
