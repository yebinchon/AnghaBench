; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ldc.c_rx_data_wait.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ldc.c_rx_data_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldc_channel = type { i64, i64, i64, i32 }

@DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"DATA WAIT cur_head[%lx] rx_head[%lx] rx_tail[%lx]\0A\00", align 1
@LDC_CHANNEL_DOWN = common dso_local global i64 0, align 8
@LDC_CHANNEL_RESETTING = common dso_local global i64 0, align 8
@ECONNRESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"DATA WAIT DONE head[%lx] tail[%lx] chan_state[%lx]\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ldc_channel*, i64)* @rx_data_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx_data_wait(%struct.ldc_channel* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ldc_channel*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.ldc_channel* %0, %struct.ldc_channel** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 1000, i32* %7, align 4
  %9 = load i32, i32* @DATA, align 4
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %12 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %15 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @ldcdbg(i32 %9, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %10, i64 %13, i64 %16)
  br label %18

18:                                               ; preds = %67, %2
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %7, align 4
  %21 = icmp sgt i32 %19, 0
  br i1 %21, label %22, label %69

22:                                               ; preds = %18
  %23 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %24 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %27 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %26, i32 0, i32 1
  %28 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %29 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %28, i32 0, i32 2
  %30 = call i64 @sun4v_ldc_rx_get_state(i32 %25, i64* %6, i64* %27, i64* %29)
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %35 = call i32 @LDC_ABORT(%struct.ldc_channel* %34)
  store i32 %35, i32* %3, align 4
  br label %72

36:                                               ; preds = %22
  %37 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %38 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @LDC_CHANNEL_DOWN, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %44 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @LDC_CHANNEL_RESETTING, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42, %36
  %49 = load i32, i32* @ECONNRESET, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %72

51:                                               ; preds = %42
  %52 = load i64, i64* %5, align 8
  %53 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %54 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %51
  %58 = load i32, i32* @DATA, align 4
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %61 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %64 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @ldcdbg(i32 %58, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %59, i64 %62, i64 %65)
  store i32 0, i32* %3, align 4
  br label %72

67:                                               ; preds = %51
  %68 = call i32 @udelay(i32 1)
  br label %18

69:                                               ; preds = %18
  %70 = load i32, i32* @EAGAIN, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %69, %57, %48, %33
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @ldcdbg(i32, i8*, i64, i64, i64) #1

declare dso_local i64 @sun4v_ldc_rx_get_state(i32, i64*, i64*, i64*) #1

declare dso_local i32 @LDC_ABORT(%struct.ldc_channel*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
