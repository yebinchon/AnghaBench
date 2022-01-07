; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_bcsp.c_bcsp_slip_one_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_bcsp.c_bcsp_slip_one_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@__const.bcsp_slip_one_byte.esc_c0 = private unnamed_addr constant [2 x i8] c"\DB\DC", align 1
@__const.bcsp_slip_one_byte.esc_db = private unnamed_addr constant [2 x i8] c"\DB\DD", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32)* @bcsp_slip_one_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcsp_slip_one_byte(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i8], align 1
  %6 = alloca [2 x i8], align 1
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = bitcast [2 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.bcsp_slip_one_byte.esc_c0, i32 0, i32 0), i64 2, i1 false)
  %8 = bitcast [2 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.bcsp_slip_one_byte.esc_db, i32 0, i32 0), i64 2, i1 false)
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %16 [
    i32 192, label %10
    i32 219, label %13
  ]

10:                                               ; preds = %2
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = call i32 (%struct.sk_buff*, ...) @skb_put_data(%struct.sk_buff* %11, [2 x i8]* %5, i32 2)
  br label %19

13:                                               ; preds = %2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = call i32 (%struct.sk_buff*, ...) @skb_put_data(%struct.sk_buff* %14, [2 x i8]* %6, i32 2)
  br label %19

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = call i32 (%struct.sk_buff*, ...) @skb_put_data(%struct.sk_buff* %17, i32* %4, i32 1)
  br label %19

19:                                               ; preds = %16, %13, %10
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
