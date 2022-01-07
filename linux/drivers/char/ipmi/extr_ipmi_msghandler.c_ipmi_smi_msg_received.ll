; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_ipmi_smi_msg_received.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_ipmi_smi_msg_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_smi = type { i32, i32, i32, %struct.ipmi_smi_msg*, i32, i32 }
%struct.ipmi_smi_msg = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipmi_smi_msg_received(%struct.ipmi_smi* %0, %struct.ipmi_smi_msg* %1) #0 {
  %3 = alloca %struct.ipmi_smi*, align 8
  %4 = alloca %struct.ipmi_smi_msg*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ipmi_smi* %0, %struct.ipmi_smi** %3, align 8
  store %struct.ipmi_smi_msg* %1, %struct.ipmi_smi_msg** %4, align 8
  store i64 0, i64* %5, align 8
  %7 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %8 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %14 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %13, i32 0, i32 4
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  br label %17

17:                                               ; preds = %12, %2
  %18 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %19 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %18, i32 0, i32 0
  %20 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %21 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %20, i32 0, i32 5
  %22 = call i32 @list_add_tail(i32* %19, i32* %21)
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %17
  %26 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %27 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %26, i32 0, i32 4
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  br label %30

30:                                               ; preds = %25, %17
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %35 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %34, i32 0, i32 2
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  br label %38

38:                                               ; preds = %33, %30
  %39 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %40 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %41 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %40, i32 0, i32 3
  %42 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %41, align 8
  %43 = icmp eq %struct.ipmi_smi_msg* %39, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %46 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %45, i32 0, i32 3
  store %struct.ipmi_smi_msg* null, %struct.ipmi_smi_msg** %46, align 8
  br label %47

47:                                               ; preds = %44, %38
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %47
  %51 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %52 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %51, i32 0, i32 2
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  br label %55

55:                                               ; preds = %50, %47
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %60 = ptrtoint %struct.ipmi_smi* %59 to i64
  %61 = call i32 @smi_recv_tasklet(i64 %60)
  br label %66

62:                                               ; preds = %55
  %63 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %64 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %63, i32 0, i32 1
  %65 = call i32 @tasklet_schedule(i32* %64)
  br label %66

66:                                               ; preds = %62, %58
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @smi_recv_tasklet(i64) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
