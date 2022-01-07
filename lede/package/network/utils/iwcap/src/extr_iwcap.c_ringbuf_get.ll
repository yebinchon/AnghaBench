; ModuleID = '/home/carl/AnghaBench/lede/package/network/utils/iwcap/src/extr_iwcap.c_ringbuf_get.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/utils/iwcap/src/extr_iwcap.c_ringbuf_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ringbuf_entry = type { i64 }
%struct.ringbuf = type { i32, i32, i32, %struct.ringbuf_entry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ringbuf_entry* @ringbuf_get(%struct.ringbuf* %0, i32 %1) #0 {
  %3 = alloca %struct.ringbuf_entry*, align 8
  %4 = alloca %struct.ringbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ringbuf_entry*, align 8
  store %struct.ringbuf* %0, %struct.ringbuf** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ringbuf*, %struct.ringbuf** %4, align 8
  %8 = getelementptr inbounds %struct.ringbuf, %struct.ringbuf* %7, i32 0, i32 3
  %9 = load %struct.ringbuf_entry*, %struct.ringbuf_entry** %8, align 8
  %10 = load %struct.ringbuf*, %struct.ringbuf** %4, align 8
  %11 = getelementptr inbounds %struct.ringbuf, %struct.ringbuf* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = add nsw i32 %12, %13
  %15 = load %struct.ringbuf*, %struct.ringbuf** %4, align 8
  %16 = getelementptr inbounds %struct.ringbuf, %struct.ringbuf* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = srem i32 %14, %17
  %19 = load %struct.ringbuf*, %struct.ringbuf** %4, align 8
  %20 = getelementptr inbounds %struct.ringbuf, %struct.ringbuf* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = mul nsw i32 %18, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ringbuf_entry, %struct.ringbuf_entry* %9, i64 %23
  store %struct.ringbuf_entry* %24, %struct.ringbuf_entry** %6, align 8
  %25 = load %struct.ringbuf_entry*, %struct.ringbuf_entry** %6, align 8
  %26 = getelementptr inbounds %struct.ringbuf_entry, %struct.ringbuf_entry* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load %struct.ringbuf_entry*, %struct.ringbuf_entry** %6, align 8
  store %struct.ringbuf_entry* %30, %struct.ringbuf_entry** %3, align 8
  br label %32

31:                                               ; preds = %2
  store %struct.ringbuf_entry* null, %struct.ringbuf_entry** %3, align 8
  br label %32

32:                                               ; preds = %31, %29
  %33 = load %struct.ringbuf_entry*, %struct.ringbuf_entry** %3, align 8
  ret %struct.ringbuf_entry* %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
