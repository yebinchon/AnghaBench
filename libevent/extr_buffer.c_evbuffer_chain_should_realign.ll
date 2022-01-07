; ModuleID = '/home/carl/AnghaBench/libevent/extr_buffer.c_evbuffer_chain_should_realign.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_buffer.c_evbuffer_chain_should_realign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer_chain = type { i64, i64 }

@MAX_TO_REALIGN_IN_EXPAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evbuffer_chain*, i64)* @evbuffer_chain_should_realign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evbuffer_chain_should_realign(%struct.evbuffer_chain* %0, i64 %1) #0 {
  %3 = alloca %struct.evbuffer_chain*, align 8
  %4 = alloca i64, align 8
  store %struct.evbuffer_chain* %0, %struct.evbuffer_chain** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %3, align 8
  %6 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %3, align 8
  %9 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = sub i64 %7, %10
  %12 = load i64, i64* %4, align 8
  %13 = icmp uge i64 %11, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %2
  %15 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %3, align 8
  %16 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %3, align 8
  %19 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = udiv i64 %20, 2
  %22 = icmp ult i64 %17, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %14
  %24 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %3, align 8
  %25 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @MAX_TO_REALIGN_IN_EXPAND, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ule i64 %26, %28
  br label %30

30:                                               ; preds = %23, %14, %2
  %31 = phi i1 [ false, %14 ], [ false, %2 ], [ %29, %23 ]
  %32 = zext i1 %31 to i32
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
