; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_horizon.c_hrz_open_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_horizon.c_hrz_open_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i64*, i32 }

@RX_CHANNEL_IDLE = common dso_local global i64 0, align 8
@memmap = common dso_local global %struct.TYPE_9__* null, align 8
@DBG_FLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"hrz_open_rx %x\00", align 1
@BUFFER_PTR_MASK = common dso_local global i64 0, align 8
@RX_CHANNEL_DISABLED = common dso_local global i64 0, align 8
@DBG_ERR = common dso_local global i32 0, align 4
@DBG_VCC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"RX channel for VC already open\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"using a spare buffer: %u\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"bad spare buffer pointer, using IDLE\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"using IDLE buffer pointer\00", align 1
@CHANNEL_TYPE_AAL5 = common dso_local global i64 0, align 8
@FIRST_CELL_OF_AAL5_FRAME = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"hrz_open_rx ok\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i64)* @hrz_open_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hrz_open_rx(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* @RX_CHANNEL_IDLE, align 8
  store i64 %10, i64* %8, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** @memmap, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i64 %14
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %9, align 8
  %16 = load i32, i32* @DBG_FLOW, align 4
  %17 = load i64, i64* %5, align 8
  %18 = call i32 (i32, i8*, ...) @PRINTD(i32 %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = call i64 @rd_mem(%struct.TYPE_8__* %23, i32* %25)
  %27 = load i64, i64* @BUFFER_PTR_MASK, align 8
  %28 = and i64 %26, %27
  store i64 %28, i64* %7, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 2
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @RX_CHANNEL_DISABLED, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %2
  %37 = load i32, i32* @DBG_ERR, align 4
  %38 = load i32, i32* @DBG_VCC, align 4
  %39 = or i32 %37, %38
  %40 = call i32 (i32, i8*, ...) @PRINTD(i32 %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %109

43:                                               ; preds = %2
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %76

48:                                               ; preds = %43
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %53, align 8
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %51, i64 %56
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %8, align 8
  %59 = load i32, i32* @DBG_VCC, align 4
  %60 = load i64, i64* %8, align 8
  %61 = call i32 (i32, i8*, ...) @PRINTD(i32 %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %60)
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* @RX_CHANNEL_DISABLED, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %48
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* @RX_CHANNEL_IDLE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %65, %48
  %70 = load i32, i32* @DBG_ERR, align 4
  %71 = load i32, i32* @DBG_VCC, align 4
  %72 = or i32 %70, %71
  %73 = call i32 (i32, i8*, ...) @PRINTD(i32 %72, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %74 = load i64, i64* @RX_CHANNEL_IDLE, align 8
  store i64 %74, i64* %8, align 8
  br label %75

75:                                               ; preds = %69, %65
  br label %79

76:                                               ; preds = %43
  %77 = load i32, i32* @DBG_VCC, align 4
  %78 = call i32 (i32, i8*, ...) @PRINTD(i32 %77, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %75
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  %82 = load i64, i64* %6, align 8
  %83 = call i32 @spin_lock_irqsave(i32* %81, i64 %82)
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* @CHANNEL_TYPE_AAL5, align 8
  %89 = or i64 %87, %88
  %90 = load i64, i64* @FIRST_CELL_OF_AAL5_FRAME, align 8
  %91 = or i64 %89, %90
  %92 = call i32 @wr_mem(%struct.TYPE_8__* %84, i32* %86, i64 %91)
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* @RX_CHANNEL_IDLE, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %79
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i64, i64* %8, align 8
  %101 = call i32 @wr_mem(%struct.TYPE_8__* %97, i32* %99, i64 %100)
  br label %102

102:                                              ; preds = %96, %79
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  %105 = load i64, i64* %6, align 8
  %106 = call i32 @spin_unlock_irqrestore(i32* %104, i64 %105)
  %107 = load i32, i32* @DBG_FLOW, align 4
  %108 = call i32 (i32, i8*, ...) @PRINTD(i32 %107, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %102, %36
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @PRINTD(i32, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @rd_mem(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wr_mem(%struct.TYPE_8__*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
