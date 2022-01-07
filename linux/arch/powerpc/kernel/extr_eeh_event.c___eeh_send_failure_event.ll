; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh_event.c___eeh_send_failure_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh_event.c___eeh_send_failure_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeh_pe = type { i32, i32 }
%struct.eeh_event = type { i32, %struct.eeh_pe* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"EEH: out of memory, event not handled\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EEH_PE_RECOVERING = common dso_local global i32 0, align 4
@eeh_eventlist_lock = common dso_local global i32 0, align 4
@eeh_eventlist = common dso_local global i32 0, align 4
@eeh_eventlist_event = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__eeh_send_failure_event(%struct.eeh_pe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.eeh_pe*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.eeh_event*, align 8
  store %struct.eeh_pe* %0, %struct.eeh_pe** %3, align 8
  %6 = load i32, i32* @GFP_ATOMIC, align 4
  %7 = call %struct.eeh_event* @kzalloc(i32 16, i32 %6)
  store %struct.eeh_event* %7, %struct.eeh_event** %5, align 8
  %8 = load %struct.eeh_event*, %struct.eeh_event** %5, align 8
  %9 = icmp ne %struct.eeh_event* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %33

14:                                               ; preds = %1
  %15 = load %struct.eeh_pe*, %struct.eeh_pe** %3, align 8
  %16 = load %struct.eeh_event*, %struct.eeh_event** %5, align 8
  %17 = getelementptr inbounds %struct.eeh_event, %struct.eeh_event* %16, i32 0, i32 1
  store %struct.eeh_pe* %15, %struct.eeh_pe** %17, align 8
  %18 = load %struct.eeh_pe*, %struct.eeh_pe** %3, align 8
  %19 = icmp ne %struct.eeh_pe* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.eeh_pe*, %struct.eeh_pe** %3, align 8
  %22 = load i32, i32* @EEH_PE_RECOVERING, align 4
  %23 = call i32 @eeh_pe_state_mark(%struct.eeh_pe* %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %14
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @spin_lock_irqsave(i32* @eeh_eventlist_lock, i64 %25)
  %27 = load %struct.eeh_event*, %struct.eeh_event** %5, align 8
  %28 = getelementptr inbounds %struct.eeh_event, %struct.eeh_event* %27, i32 0, i32 0
  %29 = call i32 @list_add(i32* %28, i32* @eeh_eventlist)
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* @eeh_eventlist_lock, i64 %30)
  %32 = call i32 @complete(i32* @eeh_eventlist_event)
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %24, %10
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.eeh_event* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @eeh_pe_state_mark(%struct.eeh_pe*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
