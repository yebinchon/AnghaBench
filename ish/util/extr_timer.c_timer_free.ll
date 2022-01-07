; ModuleID = '/home/carl/AnghaBench/ish/util/extr_timer.c_timer_free.c'
source_filename = "/home/carl/AnghaBench/ish/util/extr_timer.c_timer_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer = type { i32, i32, i32, i32 }

@SIGUSR1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timer_free(%struct.timer* %0) #0 {
  %2 = alloca %struct.timer*, align 8
  store %struct.timer* %0, %struct.timer** %2, align 8
  %3 = load %struct.timer*, %struct.timer** %2, align 8
  %4 = getelementptr inbounds %struct.timer, %struct.timer* %3, i32 0, i32 2
  %5 = call i32 @lock(i32* %4)
  %6 = load %struct.timer*, %struct.timer** %2, align 8
  %7 = getelementptr inbounds %struct.timer, %struct.timer* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = load %struct.timer*, %struct.timer** %2, align 8
  %12 = getelementptr inbounds %struct.timer, %struct.timer* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = load %struct.timer*, %struct.timer** %2, align 8
  %14 = getelementptr inbounds %struct.timer, %struct.timer* %13, i32 0, i32 1
  store i32 1, i32* %14, align 4
  %15 = load %struct.timer*, %struct.timer** %2, align 8
  %16 = getelementptr inbounds %struct.timer, %struct.timer* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SIGUSR1, align 4
  %19 = call i32 @pthread_kill(i32 %17, i32 %18)
  %20 = load %struct.timer*, %struct.timer** %2, align 8
  %21 = getelementptr inbounds %struct.timer, %struct.timer* %20, i32 0, i32 2
  %22 = call i32 @unlock(i32* %21)
  br label %35

23:                                               ; preds = %1
  %24 = load %struct.timer*, %struct.timer** %2, align 8
  %25 = getelementptr inbounds %struct.timer, %struct.timer* %24, i32 0, i32 2
  %26 = call i32 @unlock(i32* %25)
  %27 = load %struct.timer*, %struct.timer** %2, align 8
  %28 = getelementptr inbounds %struct.timer, %struct.timer* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %23
  %32 = load %struct.timer*, %struct.timer** %2, align 8
  %33 = call i32 @free(%struct.timer* %32)
  br label %34

34:                                               ; preds = %31, %23
  br label %35

35:                                               ; preds = %34, %10
  ret void
}

declare dso_local i32 @lock(i32*) #1

declare dso_local i32 @pthread_kill(i32, i32) #1

declare dso_local i32 @unlock(i32*) #1

declare dso_local i32 @free(%struct.timer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
