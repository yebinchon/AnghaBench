; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_mtu2.c_sh_mtu2_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_mtu2.c_sh_mtu2_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mtu2_channel = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@TSTR = common dso_local global i32 0, align 4
@mtu2_reg_offs = common dso_local global i64* null, align 8
@TCNT = common dso_local global i32 0, align 4
@TGR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_mtu2_channel*, i32, i64)* @sh_mtu2_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_mtu2_write(%struct.sh_mtu2_channel* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.sh_mtu2_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.sh_mtu2_channel* %0, %struct.sh_mtu2_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @TSTR, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.sh_mtu2_channel*, %struct.sh_mtu2_channel** %4, align 8
  %14 = getelementptr inbounds %struct.sh_mtu2_channel, %struct.sh_mtu2_channel* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 640
  call void @iowrite8(i64 %12, i64 %18)
  br label %47

19:                                               ; preds = %3
  %20 = load i64*, i64** @mtu2_reg_offs, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %7, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @TCNT, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @TGR, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %28, %19
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.sh_mtu2_channel*, %struct.sh_mtu2_channel** %4, align 8
  %35 = getelementptr inbounds %struct.sh_mtu2_channel, %struct.sh_mtu2_channel* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = add i64 %36, %37
  %39 = call i32 @iowrite16(i64 %33, i64 %38)
  br label %47

40:                                               ; preds = %28
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.sh_mtu2_channel*, %struct.sh_mtu2_channel** %4, align 8
  %43 = getelementptr inbounds %struct.sh_mtu2_channel, %struct.sh_mtu2_channel* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = add i64 %44, %45
  call void @iowrite8(i64 %41, i64 %46)
  br label %47

47:                                               ; preds = %11, %40, %32
  ret void
}

declare dso_local void @iowrite8(i64, i64) #1

declare dso_local i32 @iowrite16(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
