; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_smi_add_send_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_smi_add_send_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_smi = type { %struct.ipmi_smi_msg*, i32, i32 }
%struct.ipmi_smi_msg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ipmi_smi_msg* (%struct.ipmi_smi*, %struct.ipmi_smi_msg*, i32)* @smi_add_send_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ipmi_smi_msg* @smi_add_send_msg(%struct.ipmi_smi* %0, %struct.ipmi_smi_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.ipmi_smi*, align 8
  %5 = alloca %struct.ipmi_smi_msg*, align 8
  %6 = alloca i32, align 4
  store %struct.ipmi_smi* %0, %struct.ipmi_smi** %4, align 8
  store %struct.ipmi_smi_msg* %1, %struct.ipmi_smi_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %8 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %7, i32 0, i32 0
  %9 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %8, align 8
  %10 = icmp ne %struct.ipmi_smi_msg* %9, null
  br i1 %10, label %11, label %27

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %16 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %15, i32 0, i32 0
  %17 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %18 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %17, i32 0, i32 2
  %19 = call i32 @list_add_tail(i32* %16, i32* %18)
  br label %26

20:                                               ; preds = %11
  %21 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %22 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %21, i32 0, i32 0
  %23 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %24 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %23, i32 0, i32 1
  %25 = call i32 @list_add_tail(i32* %22, i32* %24)
  br label %26

26:                                               ; preds = %20, %14
  store %struct.ipmi_smi_msg* null, %struct.ipmi_smi_msg** %5, align 8
  br label %31

27:                                               ; preds = %3
  %28 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %29 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %30 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %29, i32 0, i32 0
  store %struct.ipmi_smi_msg* %28, %struct.ipmi_smi_msg** %30, align 8
  br label %31

31:                                               ; preds = %27, %26
  %32 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  ret %struct.ipmi_smi_msg* %32
}

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
