; ModuleID = '/home/carl/AnghaBench/lede/package/boot/uboot-ar71xx/src/drivers/net/phy/extr_rtl8366_mii.c_smi_write.c'
source_filename = "/home/carl/AnghaBench/lede/package/boot/uboot-ar71xx/src/drivers/net/phy/extr_rtl8366_mii.c_smi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @smi_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smi_write(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = call i32 (...) @smi_start()
  %7 = call i32 @smi_writeBits(i32 10, i32 4)
  %8 = call i32 @smi_writeBits(i32 4, i32 3)
  %9 = call i32 @smi_writeBits(i32 0, i32 1)
  %10 = call i64 (...) @smi_waitAck()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %45

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 255
  %16 = call i32 @smi_writeBits(i32 %15, i32 8)
  %17 = call i64 (...) @smi_waitAck()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %45

20:                                               ; preds = %13
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, 65280
  %23 = ashr i32 %22, 8
  %24 = call i32 @smi_writeBits(i32 %23, i32 8)
  %25 = call i64 (...) @smi_waitAck()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %45

28:                                               ; preds = %20
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, 255
  %31 = call i32 @smi_writeBits(i32 %30, i32 8)
  %32 = call i64 (...) @smi_waitAck()
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 -1, i32* %3, align 4
  br label %45

35:                                               ; preds = %28
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, 65280
  %38 = ashr i32 %37, 8
  %39 = call i32 @smi_writeBits(i32 %38, i32 8)
  %40 = call i64 (...) @smi_waitAck()
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 -1, i32* %3, align 4
  br label %45

43:                                               ; preds = %35
  %44 = call i32 (...) @smi_stop()
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %42, %34, %27, %19, %12
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @smi_start(...) #1

declare dso_local i32 @smi_writeBits(i32, i32) #1

declare dso_local i64 @smi_waitAck(...) #1

declare dso_local i32 @smi_stop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
