; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_h5.c_h5_slip_one_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_h5.c_h5_slip_one_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@SLIP_ESC_DELIM = common dso_local global i8 0, align 1
@SLIP_ESC_ESC = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32)* @h5_slip_one_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @h5_slip_one_byte(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i8], align 1
  %6 = alloca [2 x i8], align 1
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  store i8 -128, i8* %7, align 1
  %8 = getelementptr inbounds i8, i8* %7, i64 1
  %9 = load i8, i8* @SLIP_ESC_DELIM, align 1
  store i8 %9, i8* %8, align 1
  %10 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  store i8 -128, i8* %10, align 1
  %11 = getelementptr inbounds i8, i8* %10, i64 1
  %12 = load i8, i8* @SLIP_ESC_ESC, align 1
  store i8 %12, i8* %11, align 1
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %20 [
    i32 129, label %14
    i32 128, label %17
  ]

14:                                               ; preds = %2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = call i32 (%struct.sk_buff*, ...) @skb_put_data(%struct.sk_buff* %15, [2 x i8]* %5, i32 2)
  br label %23

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = call i32 (%struct.sk_buff*, ...) @skb_put_data(%struct.sk_buff* %18, [2 x i8]* %6, i32 2)
  br label %23

20:                                               ; preds = %2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = call i32 (%struct.sk_buff*, ...) @skb_put_data(%struct.sk_buff* %21, i32* %4, i32 1)
  br label %23

23:                                               ; preds = %20, %17, %14
  ret void
}

declare dso_local i32 @skb_put_data(%struct.sk_buff*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
