; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ldc.c_ldc_tx.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ldc.c_ldc_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldc_channel = type { i64, i32, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c" TX state[0x%02lx:0x%02lx] head[0x%04lx] tail[0x%04lx]\0A\00", align 1
@LDC_MODE_RAW = common dso_local global i64 0, align 8
@LDC_CHANNEL_UP = common dso_local global i64 0, align 8
@LDC_HS_COMPLETE = common dso_local global i32 0, align 4
@LDC_STATE_CONNECTED = common dso_local global i32 0, align 4
@LDC_EVENT_UP = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ldc_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldc_tx(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ldc_channel*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.ldc_channel*
  store %struct.ldc_channel* %10, %struct.ldc_channel** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %12 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %11, i32 0, i32 1
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %16 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %19 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %22 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %21, i32 0, i32 5
  %23 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %24 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %23, i32 0, i32 4
  %25 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %26 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %25, i32 0, i32 0
  %27 = call i32 @sun4v_ldc_tx_get_state(i32 %20, i32* %22, i32* %24, i64* %26)
  %28 = load i32, i32* @TX, align 4
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %31 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %34 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %37 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @ldcdbg(i32 %28, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %29, i64 %32, i32 %35, i32 %38)
  %40 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %41 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @LDC_MODE_RAW, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %70

46:                                               ; preds = %2
  %47 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %48 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @LDC_CHANNEL_UP, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %70

52:                                               ; preds = %46
  %53 = load i32, i32* @LDC_HS_COMPLETE, align 4
  %54 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %55 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %57 = load i32, i32* @LDC_STATE_CONNECTED, align 4
  %58 = call i32 @ldc_set_state(%struct.ldc_channel* %56, i32 %57)
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* @LDC_CHANNEL_UP, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %52
  %63 = load i32, i32* @LDC_EVENT_UP, align 4
  %64 = load i32, i32* %8, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %8, align 4
  %66 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %67 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %7, align 8
  br label %69

69:                                               ; preds = %62, %52
  br label %70

70:                                               ; preds = %69, %46, %2
  %71 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %72 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %71, i32 0, i32 1
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  %75 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @send_events(%struct.ldc_channel* %75, i32 %76)
  %78 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %78
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sun4v_ldc_tx_get_state(i32, i32*, i32*, i64*) #1

declare dso_local i32 @ldcdbg(i32, i8*, i64, i64, i32, i32) #1

declare dso_local i32 @ldc_set_state(%struct.ldc_channel*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @send_events(%struct.ldc_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
