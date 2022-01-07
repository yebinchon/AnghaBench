; ModuleID = '/home/carl/AnghaBench/libevent/extr_evthread_win32.c_evthread_win32_cond_signal.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evthread_win32.c_evthread_win32_cond_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evthread_win32_cond = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @evthread_win32_cond_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evthread_win32_cond_signal(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.evthread_win32_cond*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.evthread_win32_cond*
  store %struct.evthread_win32_cond* %7, %struct.evthread_win32_cond** %5, align 8
  %8 = load %struct.evthread_win32_cond*, %struct.evthread_win32_cond** %5, align 8
  %9 = getelementptr inbounds %struct.evthread_win32_cond, %struct.evthread_win32_cond* %8, i32 0, i32 0
  %10 = call i32 @EnterCriticalSection(i32* %9)
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.evthread_win32_cond*, %struct.evthread_win32_cond** %5, align 8
  %15 = getelementptr inbounds %struct.evthread_win32_cond, %struct.evthread_win32_cond* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.evthread_win32_cond*, %struct.evthread_win32_cond** %5, align 8
  %18 = getelementptr inbounds %struct.evthread_win32_cond, %struct.evthread_win32_cond* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  br label %24

19:                                               ; preds = %2
  %20 = load %struct.evthread_win32_cond*, %struct.evthread_win32_cond** %5, align 8
  %21 = getelementptr inbounds %struct.evthread_win32_cond, %struct.evthread_win32_cond* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %19, %13
  %25 = load %struct.evthread_win32_cond*, %struct.evthread_win32_cond** %5, align 8
  %26 = getelementptr inbounds %struct.evthread_win32_cond, %struct.evthread_win32_cond* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.evthread_win32_cond*, %struct.evthread_win32_cond** %5, align 8
  %30 = getelementptr inbounds %struct.evthread_win32_cond, %struct.evthread_win32_cond* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @SetEvent(i32 %31)
  %33 = load %struct.evthread_win32_cond*, %struct.evthread_win32_cond** %5, align 8
  %34 = getelementptr inbounds %struct.evthread_win32_cond, %struct.evthread_win32_cond* %33, i32 0, i32 0
  %35 = call i32 @LeaveCriticalSection(i32* %34)
  ret i32 0
}

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @SetEvent(i32) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
