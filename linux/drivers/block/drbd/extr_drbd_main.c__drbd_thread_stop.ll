; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c__drbd_thread_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c__drbd_thread_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_thread = type { i64, i32, i32, i32* }

@RESTARTING = common dso_local global i32 0, align 4
@EXITING = common dso_local global i32 0, align 4
@NONE = common dso_local global i64 0, align 8
@current = common dso_local global i32* null, align 8
@DRBD_SIGKILL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_drbd_thread_stop(%struct.drbd_thread* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drbd_thread*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.drbd_thread* %0, %struct.drbd_thread** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @RESTARTING, align 4
  br label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @EXITING, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  store i32 %16, i32* %8, align 4
  %17 = load %struct.drbd_thread*, %struct.drbd_thread** %4, align 8
  %18 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %17, i32 0, i32 2
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.drbd_thread*, %struct.drbd_thread** %4, align 8
  %22 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NONE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %15
  %27 = load %struct.drbd_thread*, %struct.drbd_thread** %4, align 8
  %28 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %27, i32 0, i32 2
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load %struct.drbd_thread*, %struct.drbd_thread** %4, align 8
  %35 = call i32 @drbd_thread_start(%struct.drbd_thread* %34)
  br label %36

36:                                               ; preds = %33, %26
  br label %86

37:                                               ; preds = %15
  %38 = load %struct.drbd_thread*, %struct.drbd_thread** %4, align 8
  %39 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = zext i32 %41 to i64
  %43 = icmp ne i64 %40, %42
  br i1 %43, label %44, label %75

44:                                               ; preds = %37
  %45 = load %struct.drbd_thread*, %struct.drbd_thread** %4, align 8
  %46 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.drbd_thread*, %struct.drbd_thread** %4, align 8
  %51 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %50, i32 0, i32 2
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  br label %86

54:                                               ; preds = %44
  %55 = load i32, i32* %8, align 4
  %56 = zext i32 %55 to i64
  %57 = load %struct.drbd_thread*, %struct.drbd_thread** %4, align 8
  %58 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = call i32 (...) @smp_mb()
  %60 = load %struct.drbd_thread*, %struct.drbd_thread** %4, align 8
  %61 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %60, i32 0, i32 1
  %62 = call i32 @init_completion(i32* %61)
  %63 = load %struct.drbd_thread*, %struct.drbd_thread** %4, align 8
  %64 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = load i32*, i32** @current, align 8
  %67 = icmp ne i32* %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %54
  %69 = load i32, i32* @DRBD_SIGKILL, align 4
  %70 = load %struct.drbd_thread*, %struct.drbd_thread** %4, align 8
  %71 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @send_sig(i32 %69, i32* %72, i32 1)
  br label %74

74:                                               ; preds = %68, %54
  br label %75

75:                                               ; preds = %74, %37
  %76 = load %struct.drbd_thread*, %struct.drbd_thread** %4, align 8
  %77 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %76, i32 0, i32 2
  %78 = load i64, i64* %7, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32* %77, i64 %78)
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = load %struct.drbd_thread*, %struct.drbd_thread** %4, align 8
  %84 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %83, i32 0, i32 1
  %85 = call i32 @wait_for_completion(i32* %84)
  br label %86

86:                                               ; preds = %36, %49, %82, %75
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @drbd_thread_start(%struct.drbd_thread*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @send_sig(i32, i32*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
