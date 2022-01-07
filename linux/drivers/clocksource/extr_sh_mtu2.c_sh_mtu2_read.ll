; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_mtu2.c_sh_mtu2_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_mtu2.c_sh_mtu2_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mtu2_channel = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@TSTR = common dso_local global i32 0, align 4
@mtu2_reg_offs = common dso_local global i64* null, align 8
@TCNT = common dso_local global i32 0, align 4
@TGR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sh_mtu2_channel*, i32)* @sh_mtu2_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sh_mtu2_read(%struct.sh_mtu2_channel* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.sh_mtu2_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.sh_mtu2_channel* %0, %struct.sh_mtu2_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @TSTR, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.sh_mtu2_channel*, %struct.sh_mtu2_channel** %4, align 8
  %12 = getelementptr inbounds %struct.sh_mtu2_channel, %struct.sh_mtu2_channel* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 640
  %17 = call i64 @ioread8(i64 %16)
  store i64 %17, i64* %3, align 8
  br label %45

18:                                               ; preds = %2
  %19 = load i64*, i64** @mtu2_reg_offs, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @TCNT, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @TGR, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27, %18
  %32 = load %struct.sh_mtu2_channel*, %struct.sh_mtu2_channel** %4, align 8
  %33 = getelementptr inbounds %struct.sh_mtu2_channel, %struct.sh_mtu2_channel* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = add i64 %34, %35
  %37 = call i64 @ioread16(i64 %36)
  store i64 %37, i64* %3, align 8
  br label %45

38:                                               ; preds = %27
  %39 = load %struct.sh_mtu2_channel*, %struct.sh_mtu2_channel** %4, align 8
  %40 = getelementptr inbounds %struct.sh_mtu2_channel, %struct.sh_mtu2_channel* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = add i64 %41, %42
  %44 = call i64 @ioread8(i64 %43)
  store i64 %44, i64* %3, align 8
  br label %45

45:                                               ; preds = %38, %31, %10
  %46 = load i64, i64* %3, align 8
  ret i64 %46
}

declare dso_local i64 @ioread8(i64) #1

declare dso_local i64 @ioread16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
