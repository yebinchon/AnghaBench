; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_idt77252_send_oam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_idt77252_send_oam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { %struct.TYPE_3__*, %struct.atm_dev* }
%struct.TYPE_3__ = type { i32 }
%struct.atm_dev = type { %struct.idt77252_dev* }
%struct.idt77252_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"%s: Out of memory in send_oam().\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_vcc*, i8*, i32)* @idt77252_send_oam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idt77252_send_oam(%struct.atm_vcc* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.atm_vcc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.atm_dev*, align 8
  %9 = alloca %struct.idt77252_dev*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %12 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %11, i32 0, i32 1
  %13 = load %struct.atm_dev*, %struct.atm_dev** %12, align 8
  store %struct.atm_dev* %13, %struct.atm_dev** %8, align 8
  %14 = load %struct.atm_dev*, %struct.atm_dev** %8, align 8
  %15 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %14, i32 0, i32 0
  %16 = load %struct.idt77252_dev*, %struct.idt77252_dev** %15, align 8
  store %struct.idt77252_dev* %16, %struct.idt77252_dev** %9, align 8
  %17 = call %struct.sk_buff* @dev_alloc_skb(i32 64)
  store %struct.sk_buff* %17, %struct.sk_buff** %10, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %3
  %21 = load %struct.idt77252_dev*, %struct.idt77252_dev** %9, align 8
  %22 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %26 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = call i32 @atomic_inc(i32* %28)
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %46

32:                                               ; preds = %3
  %33 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %37 = call %struct.TYPE_4__* @sk_atm(%struct.atm_vcc* %36)
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = call i32 @refcount_add(i32 %35, i32* %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @skb_put_data(%struct.sk_buff* %40, i8* %41, i32 52)
  %43 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %45 = call i32 @idt77252_send_skb(%struct.atm_vcc* %43, %struct.sk_buff* %44, i32 1)
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %32, %20
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @refcount_add(i32, i32*) #1

declare dso_local %struct.TYPE_4__* @sk_atm(%struct.atm_vcc*) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @idt77252_send_skb(%struct.atm_vcc*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
