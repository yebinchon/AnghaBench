; ModuleID = '/home/carl/AnghaBench/libevent/extr_buffer.c_APPEND_CHAIN.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_buffer.c_APPEND_CHAIN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i64, i32, %struct.evbuffer_chain**, %struct.evbuffer_chain* }
%struct.evbuffer_chain = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evbuffer*, %struct.evbuffer*)* @APPEND_CHAIN to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @APPEND_CHAIN(%struct.evbuffer* %0, %struct.evbuffer* %1) #0 {
  %3 = alloca %struct.evbuffer*, align 8
  %4 = alloca %struct.evbuffer*, align 8
  %5 = alloca %struct.evbuffer_chain**, align 8
  store %struct.evbuffer* %0, %struct.evbuffer** %3, align 8
  store %struct.evbuffer* %1, %struct.evbuffer** %4, align 8
  %6 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %7 = call i32 @ASSERT_EVBUFFER_LOCKED(%struct.evbuffer* %6)
  %8 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %9 = call i32 @ASSERT_EVBUFFER_LOCKED(%struct.evbuffer* %8)
  %10 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %11 = call %struct.evbuffer_chain** @evbuffer_free_trailing_empty_chains(%struct.evbuffer* %10)
  store %struct.evbuffer_chain** %11, %struct.evbuffer_chain*** %5, align 8
  %12 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %13 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %12, i32 0, i32 3
  %14 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %13, align 8
  %15 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %5, align 8
  store %struct.evbuffer_chain* %14, %struct.evbuffer_chain** %15, align 8
  %16 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %17 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %16, i32 0, i32 2
  %18 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %17, align 8
  %19 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %20 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %19, i32 0, i32 3
  %21 = icmp eq %struct.evbuffer_chain** %18, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %5, align 8
  %24 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %25 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %24, i32 0, i32 2
  store %struct.evbuffer_chain** %23, %struct.evbuffer_chain*** %25, align 8
  br label %32

26:                                               ; preds = %2
  %27 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %28 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %27, i32 0, i32 2
  %29 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %28, align 8
  %30 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %31 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %30, i32 0, i32 2
  store %struct.evbuffer_chain** %29, %struct.evbuffer_chain*** %31, align 8
  br label %32

32:                                               ; preds = %26, %22
  %33 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %34 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %37 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %39 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %42 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, %40
  store i64 %44, i64* %42, align 8
  ret void
}

declare dso_local i32 @ASSERT_EVBUFFER_LOCKED(%struct.evbuffer*) #1

declare dso_local %struct.evbuffer_chain** @evbuffer_free_trailing_empty_chains(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
