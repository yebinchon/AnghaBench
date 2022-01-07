; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/mwave/extr_3780i.c_dsp3780I_DisableDSP.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/mwave/extr_3780i.c_dsp3780I_DisableDSP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i16 }
%struct.TYPE_5__ = type { i32, i32, i32, i64 }

@TRACE_3780I = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"3780i::dsp3780i_DisableDSP entry\0A\00", align 1
@dsp_lock = common dso_local global i32 0, align 4
@DSP_IsaSlaveControl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"3780i::dsp3780i_DisableDSP exit\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsp3780I_DisableDSP(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.TYPE_5__, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i16, i16* %7, align 2
  store i16 %8, i16* %4, align 2
  %9 = load i32, i32* @TRACE_3780I, align 4
  %10 = call i32 @PRINTK_1(i32 %9, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i32 1, i32* %12, align 4
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  store i32 0, i32* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @spin_lock_irqsave(i32* @dsp_lock, i64 %15)
  %17 = load i32, i32* @DSP_IsaSlaveControl, align 4
  %18 = call i32 @MKWORD(%struct.TYPE_5__* byval(%struct.TYPE_5__) align 8 %5)
  %19 = call i32 @OutWordDsp(i32 %17, i32 %18)
  %20 = call i32 @udelay(i32 5)
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load i32, i32* @DSP_IsaSlaveControl, align 4
  %23 = call i32 @MKWORD(%struct.TYPE_5__* byval(%struct.TYPE_5__) align 8 %5)
  %24 = call i32 @OutWordDsp(i32 %22, i32 %23)
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* @dsp_lock, i64 %25)
  %27 = call i32 @udelay(i32 5)
  %28 = load i32, i32* @TRACE_3780I, align 4
  %29 = call i32 @PRINTK_1(i32 %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @PRINTK_1(i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @OutWordDsp(i32, i32) #1

declare dso_local i32 @MKWORD(%struct.TYPE_5__* byval(%struct.TYPE_5__) align 8) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
