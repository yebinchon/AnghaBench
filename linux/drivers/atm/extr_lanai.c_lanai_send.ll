; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_lanai.c_lanai_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_lanai.c_lanai_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i32, %struct.TYPE_7__, %struct.TYPE_5__*, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.sk_buff = type { i64, i32 }
%struct.lanai_vcc = type { %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { %struct.atm_vcc* }
%struct.lanai_dev = type { i32 }
%struct.TYPE_8__ = type { %struct.atm_vcc* }

@vcc_sklist_lock = common dso_local global i32 0, align 4
@ATM_CELL_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"lanai_send: bad aal=%d on vci=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_vcc*, %struct.sk_buff*)* @lanai_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lanai_send(%struct.atm_vcc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atm_vcc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.lanai_vcc*, align 8
  %7 = alloca %struct.lanai_dev*, align 8
  %8 = alloca i64, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %10 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.lanai_vcc*
  store %struct.lanai_vcc* %12, %struct.lanai_vcc** %6, align 8
  %13 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %14 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %13, i32 0, i32 2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.lanai_dev*
  store %struct.lanai_dev* %18, %struct.lanai_dev** %7, align 8
  %19 = load %struct.lanai_vcc*, %struct.lanai_vcc** %6, align 8
  %20 = icmp eq %struct.lanai_vcc* %19, null
  br i1 %20, label %33, label %21

21:                                               ; preds = %2
  %22 = load %struct.lanai_vcc*, %struct.lanai_vcc** %6, align 8
  %23 = getelementptr inbounds %struct.lanai_vcc, %struct.lanai_vcc* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %21
  %27 = load %struct.lanai_vcc*, %struct.lanai_vcc** %6, align 8
  %28 = getelementptr inbounds %struct.lanai_vcc, %struct.lanai_vcc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.atm_vcc*, %struct.atm_vcc** %29, align 8
  %31 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %32 = icmp ne %struct.atm_vcc* %30, %31
  br label %33

33:                                               ; preds = %26, %21, %2
  %34 = phi i1 [ true, %21 ], [ true, %2 ], [ %32, %26 ]
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %91

39:                                               ; preds = %33
  %40 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = call %struct.TYPE_8__* @ATM_SKB(%struct.sk_buff* %41)
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store %struct.atm_vcc* %40, %struct.atm_vcc** %43, align 8
  %44 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %45 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %82 [
    i32 128, label %48
    i32 129, label %57
  ]

48:                                               ; preds = %39
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @read_lock_irqsave(i32* @vcc_sklist_lock, i64 %49)
  %51 = load %struct.lanai_dev*, %struct.lanai_dev** %7, align 8
  %52 = load %struct.lanai_vcc*, %struct.lanai_vcc** %6, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = call i32 @vcc_tx_aal5(%struct.lanai_dev* %51, %struct.lanai_vcc* %52, %struct.sk_buff* %53)
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @read_unlock_irqrestore(i32* @vcc_sklist_lock, i64 %55)
  store i32 0, i32* %3, align 4
  br label %97

57:                                               ; preds = %39
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @ATM_CELL_SIZE, align 4
  %62 = sub nsw i32 %61, 1
  %63 = icmp ne i32 %60, %62
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %91

68:                                               ; preds = %57
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to i32*
  %73 = call i32 @cpu_to_be32s(i32* %72)
  %74 = load i64, i64* %8, align 8
  %75 = call i32 @read_lock_irqsave(i32* @vcc_sklist_lock, i64 %74)
  %76 = load %struct.lanai_dev*, %struct.lanai_dev** %7, align 8
  %77 = load %struct.lanai_vcc*, %struct.lanai_vcc** %6, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %79 = call i32 @vcc_tx_aal0(%struct.lanai_dev* %76, %struct.lanai_vcc* %77, %struct.sk_buff* %78)
  %80 = load i64, i64* %8, align 8
  %81 = call i32 @read_unlock_irqrestore(i32* @vcc_sklist_lock, i64 %80)
  store i32 0, i32* %3, align 4
  br label %97

82:                                               ; preds = %39
  %83 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %84 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %88 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (i8*, i32, ...) @DPRINTK(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %89)
  br label %91

91:                                               ; preds = %82, %67, %38
  %92 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %94 = call i32 @lanai_free_skb(%struct.atm_vcc* %92, %struct.sk_buff* %93)
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %91, %68, %48
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_8__* @ATM_SKB(%struct.sk_buff*) #1

declare dso_local i32 @read_lock_irqsave(i32*, i64) #1

declare dso_local i32 @vcc_tx_aal5(%struct.lanai_dev*, %struct.lanai_vcc*, %struct.sk_buff*) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @cpu_to_be32s(i32*) #1

declare dso_local i32 @vcc_tx_aal0(%struct.lanai_dev*, %struct.lanai_vcc*, %struct.sk_buff*) #1

declare dso_local i32 @DPRINTK(i8*, i32, ...) #1

declare dso_local i32 @lanai_free_skb(%struct.atm_vcc*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
