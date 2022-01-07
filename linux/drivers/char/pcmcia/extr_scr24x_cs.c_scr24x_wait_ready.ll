; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_scr24x_cs.c_scr24x_wait_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_scr24x_cs.c_scr24x_wait_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scr24x_dev = type { i64 }

@SCR24X_CMD_STATUS = common dso_local global i64 0, align 8
@STATUS_BUSY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scr24x_dev*)* @scr24x_wait_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scr24x_wait_ready(%struct.scr24x_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scr24x_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.scr24x_dev* %0, %struct.scr24x_dev** %3, align 8
  store i32 100, i32* %5, align 4
  br label %6

6:                                                ; preds = %20, %1
  %7 = load %struct.scr24x_dev*, %struct.scr24x_dev** %3, align 8
  %8 = getelementptr inbounds %struct.scr24x_dev, %struct.scr24x_dev* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SCR24X_CMD_STATUS, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @ioread8(i64 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @STATUS_BUSY, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %27

18:                                               ; preds = %6
  %19 = call i32 @msleep(i32 20)
  br label %20

20:                                               ; preds = %18
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %6, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %24, %17
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @ioread8(i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
