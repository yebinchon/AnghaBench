; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_poll.c_poll_event_callback.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_poll.c_poll_event_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.poll_fd_info = type { i64 }
%struct.poll_context = type { i32, i64*, %struct.pollfd_* }
%struct.pollfd_ = type { i32, i32 }

@POLL_ALWAYS_LISTENING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64)* @poll_event_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @poll_event_callback(i8* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %union.poll_fd_info, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.poll_context*, align 8
  %8 = alloca %struct.pollfd_*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %union.poll_fd_info, %union.poll_fd_info* %4, i32 0, i32 0
  store i64 %2, i64* %12, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.poll_context*
  store %struct.poll_context* %14, %struct.poll_context** %7, align 8
  %15 = load %struct.poll_context*, %struct.poll_context** %7, align 8
  %16 = getelementptr inbounds %struct.poll_context, %struct.poll_context* %15, i32 0, i32 2
  %17 = load %struct.pollfd_*, %struct.pollfd_** %16, align 8
  store %struct.pollfd_* %17, %struct.pollfd_** %8, align 8
  %18 = load %struct.poll_context*, %struct.poll_context** %7, align 8
  %19 = getelementptr inbounds %struct.poll_context, %struct.poll_context* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %53, %3
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %56

25:                                               ; preds = %21
  %26 = load %struct.poll_context*, %struct.poll_context** %7, align 8
  %27 = getelementptr inbounds %struct.poll_context, %struct.poll_context* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = bitcast %union.poll_fd_info* %4 to i64*
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %32, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %25
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.pollfd_*, %struct.pollfd_** %8, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.pollfd_, %struct.pollfd_* %38, i64 %40
  %42 = getelementptr inbounds %struct.pollfd_, %struct.pollfd_* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @POLL_ALWAYS_LISTENING, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %37, %45
  %47 = load %struct.pollfd_*, %struct.pollfd_** %8, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.pollfd_, %struct.pollfd_* %47, i64 %49
  %51 = getelementptr inbounds %struct.pollfd_, %struct.pollfd_* %50, i32 0, i32 0
  store i32 %46, i32* %51, align 4
  store i32 1, i32* %10, align 4
  br label %52

52:                                               ; preds = %36, %25
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %11, align 4
  br label %21

56:                                               ; preds = %21
  %57 = load i32, i32* %10, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
