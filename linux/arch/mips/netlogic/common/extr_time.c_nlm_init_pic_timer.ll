; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/netlogic/common/extr_time.c_nlm_init_pic_timer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/netlogic/common/extr_time.c_nlm_init_pic_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32, i8* }
%struct.TYPE_5__ = type { i32 }

@PIC_CLOCK_TIMER = common dso_local global i32 0, align 4
@current_cpu_data = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@CPU_XLR = common dso_local global i64 0, align 8
@csrc_pic = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@nlm_get_pic_timer32 = common dso_local global i32 0, align 4
@nlm_get_pic_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"PIC clock source added, frequency %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @nlm_init_pic_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlm_init_pic_timer() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call %struct.TYPE_5__* @nlm_get_node(i32 0)
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @PIC_CLOCK_TIMER, align 4
  %8 = call i32 @nlm_pic_set_timer(i32 %6, i32 %7, i64 -1, i32 0, i32 0)
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_cpu_data, i32 0, i32 0), align 8
  %10 = load i64, i64* @CPU_XLR, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %0
  %13 = call i8* @CLOCKSOURCE_MASK(i32 32)
  store i8* %13, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @csrc_pic, i32 0, i32 2), align 8
  %14 = load i32, i32* @nlm_get_pic_timer32, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @csrc_pic, i32 0, i32 1), align 4
  br label %18

15:                                               ; preds = %0
  %16 = call i8* @CLOCKSOURCE_MASK(i32 64)
  store i8* %16, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @csrc_pic, i32 0, i32 2), align 8
  %17 = load i32, i32* @nlm_get_pic_timer, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @csrc_pic, i32 0, i32 1), align 4
  br label %18

18:                                               ; preds = %15, %12
  store i32 1000, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @csrc_pic, i32 0, i32 0), align 8
  %19 = call i32 (...) @pic_timer_freq()
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @clocksource_register_hz(%struct.TYPE_7__* @csrc_pic, i32 %20)
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %22)
  ret void
}

declare dso_local %struct.TYPE_5__* @nlm_get_node(i32) #1

declare dso_local i32 @nlm_pic_set_timer(i32, i32, i64, i32, i32) #1

declare dso_local i8* @CLOCKSOURCE_MASK(i32) #1

declare dso_local i32 @pic_timer_freq(...) #1

declare dso_local i32 @clocksource_register_hz(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
