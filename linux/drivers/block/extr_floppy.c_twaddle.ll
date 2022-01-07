; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_twaddle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_twaddle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@DP = common dso_local global %struct.TYPE_6__* null, align 8
@FDCS = common dso_local global %struct.TYPE_4__* null, align 8
@current_drive = common dso_local global i32 0, align 4
@FD_DOR = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@DRS = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @twaddle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twaddle() #0 {
  %1 = load %struct.TYPE_6__*, %struct.TYPE_6__** @DP, align 8
  %2 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %3 = load i64, i64* %2, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %25

6:                                                ; preds = %0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @FDCS, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @current_drive, align 4
  %11 = call i32 @UNIT(i32 %10)
  %12 = shl i32 16, %11
  %13 = xor i32 %12, -1
  %14 = and i32 %9, %13
  %15 = load i32, i32* @FD_DOR, align 4
  %16 = call i32 @fd_outb(i32 %14, i32 %15)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @FDCS, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @FD_DOR, align 4
  %21 = call i32 @fd_outb(i32 %19, i32 %20)
  %22 = load i32, i32* @jiffies, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @DRS, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @fd_outb(i32, i32) #1

declare dso_local i32 @UNIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
