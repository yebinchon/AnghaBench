; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_sender.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_sender.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_smi_msg = type { i32 }
%struct.smi_info = type { i32, %struct.ipmi_smi_msg*, i64 }

@.str = private unnamed_addr constant [8 x i8] c"Enqueue\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ipmi_smi_msg*)* @sender to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sender(i8* %0, %struct.ipmi_smi_msg* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ipmi_smi_msg*, align 8
  %5 = alloca %struct.smi_info*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.ipmi_smi_msg* %1, %struct.ipmi_smi_msg** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.smi_info*
  store %struct.smi_info* %8, %struct.smi_info** %5, align 8
  %9 = call i32 @debug_timestamp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %11 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %16 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %17 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %16, i32 0, i32 1
  store %struct.ipmi_smi_msg* %15, %struct.ipmi_smi_msg** %17, align 8
  br label %36

18:                                               ; preds = %2
  %19 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %20 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %19, i32 0, i32 0
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %24 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %23, i32 0, i32 1
  %25 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %24, align 8
  %26 = call i32 @BUG_ON(%struct.ipmi_smi_msg* %25)
  %27 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %28 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %29 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %28, i32 0, i32 1
  store %struct.ipmi_smi_msg* %27, %struct.ipmi_smi_msg** %29, align 8
  %30 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %31 = call i32 @check_start_timer_thread(%struct.smi_info* %30)
  %32 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %33 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %32, i32 0, i32 0
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  br label %36

36:                                               ; preds = %18, %14
  ret void
}

declare dso_local i32 @debug_timestamp(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BUG_ON(%struct.ipmi_smi_msg*) #1

declare dso_local i32 @check_start_timer_thread(%struct.smi_info*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
