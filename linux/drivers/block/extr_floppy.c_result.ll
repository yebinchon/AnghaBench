; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_result.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@MAX_REPLIES = common dso_local global i32 0, align 4
@STATUS_DIR = common dso_local global i32 0, align 4
@STATUS_READY = common dso_local global i32 0, align 4
@STATUS_BUSY = common dso_local global i32 0, align 4
@STATUS_DMA = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@resultjiffies = common dso_local global i32 0, align 4
@resultsize = common dso_local global i32 0, align 4
@FD_DATA = common dso_local global i32 0, align 4
@reply_buffer = common dso_local global i32* null, align 8
@initialized = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"get result error. Fdc=%d Last status=%x Read bytes=%d\0A\00", align 1
@fdc = common dso_local global i32 0, align 4
@FDCS = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @result() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %50, %0
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @MAX_REPLIES, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %53

8:                                                ; preds = %4
  %9 = call i32 (...) @wait_til_ready()
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %53

13:                                               ; preds = %8
  %14 = load i32, i32* @STATUS_DIR, align 4
  %15 = load i32, i32* @STATUS_READY, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @STATUS_BUSY, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @STATUS_DMA, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @STATUS_BUSY, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = load i32, i32* @STATUS_READY, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %13
  %30 = load i32, i32* @jiffies, align 4
  store i32 %30, i32* @resultjiffies, align 4
  %31 = load i32, i32* %2, align 4
  store i32 %31, i32* @resultsize, align 4
  %32 = load i32, i32* %2, align 4
  store i32 %32, i32* %1, align 4
  br label %65

33:                                               ; preds = %13
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @STATUS_DIR, align 4
  %36 = load i32, i32* @STATUS_READY, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @STATUS_BUSY, align 4
  %39 = or i32 %37, %38
  %40 = icmp eq i32 %34, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %33
  %42 = load i32, i32* @FD_DATA, align 4
  %43 = call i32 @fd_inb(i32 %42)
  %44 = load i32*, i32** @reply_buffer, align 8
  %45 = load i32, i32* %2, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %43, i32* %47, align 4
  br label %49

48:                                               ; preds = %33
  br label %53

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %2, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %2, align 4
  br label %4

53:                                               ; preds = %48, %12, %4
  %54 = load i64, i64* @initialized, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i32, i32* @fdc, align 4
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* %2, align 4
  %60 = call i32 @DPRINT(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %58, i32 %59)
  %61 = call i32 (...) @show_floppy()
  br label %62

62:                                               ; preds = %56, %53
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FDCS, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i32 1, i32* %64, align 4
  store i32 -1, i32* %1, align 4
  br label %65

65:                                               ; preds = %62, %29
  %66 = load i32, i32* %1, align 4
  ret i32 %66
}

declare dso_local i32 @wait_til_ready(...) #1

declare dso_local i32 @fd_inb(i32) #1

declare dso_local i32 @DPRINT(i8*, i32, i32, i32) #1

declare dso_local i32 @show_floppy(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
