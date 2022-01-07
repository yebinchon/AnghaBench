; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_lanai.c_lanai_send_one_aal5.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_lanai.c_lanai_send_one_aal5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lanai_dev = type { i32 }
%struct.lanai_vcc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"lanai_send_one_aal5: wrong size packet (%d != %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"pad is negative (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"pad is too big (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lanai_dev*, %struct.lanai_vcc*, %struct.sk_buff*, i32)* @lanai_send_one_aal5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lanai_send_one_aal5(%struct.lanai_dev* %0, %struct.lanai_vcc* %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca %struct.lanai_dev*, align 8
  %6 = alloca %struct.lanai_vcc*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.lanai_dev* %0, %struct.lanai_dev** %5, align 8
  store %struct.lanai_vcc* %1, %struct.lanai_vcc** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @aal5_size(i32 %13)
  %15 = icmp eq i32 %10, %14
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @aal5_size(i32 %20)
  %22 = call i32 (i32, i8*, i32, ...) @APRINTK(i32 %16, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %21)
  %23 = load %struct.lanai_vcc*, %struct.lanai_vcc** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @vcc_tx_add_aal5_descriptor(%struct.lanai_vcc* %23, i32 0, i32 %24)
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %26, %29
  %31 = sub nsw i32 %30, 8
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp sge i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %9, align 4
  %36 = call i32 (i32, i8*, i32, ...) @APRINTK(i32 %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 48
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %9, align 4
  %41 = call i32 (i32, i8*, i32, ...) @APRINTK(i32 %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load %struct.lanai_vcc*, %struct.lanai_vcc** %6, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @vcc_tx_memcpy(%struct.lanai_vcc* %42, i32 %45, i32 %48)
  %50 = load %struct.lanai_vcc*, %struct.lanai_vcc** %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @vcc_tx_memzero(%struct.lanai_vcc* %50, i32 %51)
  %53 = load %struct.lanai_vcc*, %struct.lanai_vcc** %6, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @vcc_tx_add_aal5_trailer(%struct.lanai_vcc* %53, i32 %56, i32 0, i32 0)
  %58 = load %struct.lanai_dev*, %struct.lanai_dev** %5, align 8
  %59 = load %struct.lanai_vcc*, %struct.lanai_vcc** %6, align 8
  %60 = call i32 @lanai_endtx(%struct.lanai_dev* %58, %struct.lanai_vcc* %59)
  %61 = load %struct.lanai_vcc*, %struct.lanai_vcc** %6, align 8
  %62 = getelementptr inbounds %struct.lanai_vcc, %struct.lanai_vcc* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %66 = call i32 @lanai_free_skb(%struct.TYPE_6__* %64, %struct.sk_buff* %65)
  %67 = load %struct.lanai_vcc*, %struct.lanai_vcc** %6, align 8
  %68 = getelementptr inbounds %struct.lanai_vcc, %struct.lanai_vcc* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = call i32 @atomic_inc(i32* %73)
  ret void
}

declare dso_local i32 @APRINTK(i32, i8*, i32, ...) #1

declare dso_local i32 @aal5_size(i32) #1

declare dso_local i32 @vcc_tx_add_aal5_descriptor(%struct.lanai_vcc*, i32, i32) #1

declare dso_local i32 @vcc_tx_memcpy(%struct.lanai_vcc*, i32, i32) #1

declare dso_local i32 @vcc_tx_memzero(%struct.lanai_vcc*, i32) #1

declare dso_local i32 @vcc_tx_add_aal5_trailer(%struct.lanai_vcc*, i32, i32, i32) #1

declare dso_local i32 @lanai_endtx(%struct.lanai_dev*, %struct.lanai_vcc*) #1

declare dso_local i32 @lanai_free_skb(%struct.TYPE_6__*, %struct.sk_buff*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
