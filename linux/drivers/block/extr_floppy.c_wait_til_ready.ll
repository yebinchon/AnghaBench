; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_wait_til_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_wait_til_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@FDCS = common dso_local global %struct.TYPE_2__* null, align 8
@FD_STATUS = common dso_local global i32 0, align 4
@STATUS_READY = common dso_local global i32 0, align 4
@initialized = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Getstatus times out (%x) on fdc %d\0A\00", align 1
@fdc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @wait_til_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_til_ready() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FDCS, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %37

9:                                                ; preds = %0
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %23, %9
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 10000
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = load i32, i32* @FD_STATUS, align 4
  %15 = call i32 @fd_inb(i32 %14)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @STATUS_READY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* %2, align 4
  store i32 %21, i32* %1, align 4
  br label %37

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %10

26:                                               ; preds = %10
  %27 = load i64, i64* @initialized, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @fdc, align 4
  %32 = call i32 @DPRINT(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  %33 = call i32 (...) @show_floppy()
  br label %34

34:                                               ; preds = %29, %26
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FDCS, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  store i32 -1, i32* %1, align 4
  br label %37

37:                                               ; preds = %34, %20, %8
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

declare dso_local i32 @fd_inb(i32) #1

declare dso_local i32 @DPRINT(i8*, i32, i32) #1

declare dso_local i32 @show_floppy(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
