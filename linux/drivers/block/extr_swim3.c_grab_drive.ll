; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_swim3.c_grab_drive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_swim3.c_grab_drive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.floppy_state = type { i64, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"-> grab drive\0A\00", align 1
@swim3_lock = common dso_local global i32 0, align 4
@idle = common dso_local global i64 0, align 8
@available = common dso_local global i64 0, align 8
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.floppy_state*, i32, i32)* @grab_drive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grab_drive(%struct.floppy_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.floppy_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.floppy_state* %0, %struct.floppy_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = call i32 @swim3_dbg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i64, i64* %8, align 8
  %11 = call i32 @spin_lock_irqsave(i32* @swim3_lock, i64 %10)
  %12 = load %struct.floppy_state*, %struct.floppy_state** %5, align 8
  %13 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @idle, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %70

17:                                               ; preds = %3
  %18 = load %struct.floppy_state*, %struct.floppy_state** %5, align 8
  %19 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @available, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %70

23:                                               ; preds = %17
  %24 = load %struct.floppy_state*, %struct.floppy_state** %5, align 8
  %25 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %23
  %31 = load %struct.floppy_state*, %struct.floppy_state** %5, align 8
  %32 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.floppy_state*, %struct.floppy_state** %5, align 8
  %35 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @available, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* @swim3_lock, align 4
  %41 = call i32 @wait_event_lock_irq(i32 %33, i32 %39, i32 %40)
  br label %65

42:                                               ; preds = %23
  %43 = load %struct.floppy_state*, %struct.floppy_state** %5, align 8
  %44 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.floppy_state*, %struct.floppy_state** %5, align 8
  %47 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @available, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* @swim3_lock, align 4
  %53 = call i64 @wait_event_interruptible_lock_irq(i32 %45, i32 %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %42
  %56 = load %struct.floppy_state*, %struct.floppy_state** %5, align 8
  %57 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %57, align 8
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* @swim3_lock, i64 %60)
  %62 = load i32, i32* @EINTR, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %77

64:                                               ; preds = %42
  br label %65

65:                                               ; preds = %64, %30
  %66 = load %struct.floppy_state*, %struct.floppy_state** %5, align 8
  %67 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %65, %17, %3
  %71 = load i32, i32* %6, align 4
  %72 = zext i32 %71 to i64
  %73 = load %struct.floppy_state*, %struct.floppy_state** %5, align 8
  %74 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load i64, i64* %8, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* @swim3_lock, i64 %75)
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %70, %55
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @swim3_dbg(i8*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @wait_event_lock_irq(i32, i32, i32) #1

declare dso_local i64 @wait_event_interruptible_lock_irq(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
