; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_smi_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_smi_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_smi = type { i32, i32, i32 }
%struct.ipmi_smi_handlers = type { i32 (i32, %struct.ipmi_smi_msg*)* }
%struct.ipmi_smi_msg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipmi_smi*, %struct.ipmi_smi_handlers*, %struct.ipmi_smi_msg*, i32)* @smi_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smi_send(%struct.ipmi_smi* %0, %struct.ipmi_smi_handlers* %1, %struct.ipmi_smi_msg* %2, i32 %3) #0 {
  %5 = alloca %struct.ipmi_smi*, align 8
  %6 = alloca %struct.ipmi_smi_handlers*, align 8
  %7 = alloca %struct.ipmi_smi_msg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.ipmi_smi* %0, %struct.ipmi_smi** %5, align 8
  store %struct.ipmi_smi_handlers* %1, %struct.ipmi_smi_handlers** %6, align 8
  store %struct.ipmi_smi_msg* %2, %struct.ipmi_smi_msg** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ipmi_smi*, %struct.ipmi_smi** %5, align 8
  %12 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %4
  %17 = load %struct.ipmi_smi*, %struct.ipmi_smi** %5, align 8
  %18 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %17, i32 0, i32 2
  %19 = load i64, i64* %10, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  br label %21

21:                                               ; preds = %16, %4
  %22 = load %struct.ipmi_smi*, %struct.ipmi_smi** %5, align 8
  %23 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call %struct.ipmi_smi_msg* @smi_add_send_msg(%struct.ipmi_smi* %22, %struct.ipmi_smi_msg* %23, i32 %24)
  store %struct.ipmi_smi_msg* %25, %struct.ipmi_smi_msg** %7, align 8
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %21
  %29 = load %struct.ipmi_smi*, %struct.ipmi_smi** %5, align 8
  %30 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %29, i32 0, i32 2
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  br label %33

33:                                               ; preds = %28, %21
  %34 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %7, align 8
  %35 = icmp ne %struct.ipmi_smi_msg* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load %struct.ipmi_smi_handlers*, %struct.ipmi_smi_handlers** %6, align 8
  %38 = getelementptr inbounds %struct.ipmi_smi_handlers, %struct.ipmi_smi_handlers* %37, i32 0, i32 0
  %39 = load i32 (i32, %struct.ipmi_smi_msg*)*, i32 (i32, %struct.ipmi_smi_msg*)** %38, align 8
  %40 = load %struct.ipmi_smi*, %struct.ipmi_smi** %5, align 8
  %41 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %7, align 8
  %44 = call i32 %39(i32 %42, %struct.ipmi_smi_msg* %43)
  br label %45

45:                                               ; preds = %36, %33
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.ipmi_smi_msg* @smi_add_send_msg(%struct.ipmi_smi*, %struct.ipmi_smi_msg*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
