; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_algapi.c_crypto_enqueue_request.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_algapi.c_crypto_enqueue_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_queue = type { i64, i64, i32, i32* }
%struct.crypto_async_request = type { i32, i32 }

@EINPROGRESS = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_enqueue_request(%struct.crypto_queue* %0, %struct.crypto_async_request* %1) #0 {
  %3 = alloca %struct.crypto_queue*, align 8
  %4 = alloca %struct.crypto_async_request*, align 8
  %5 = alloca i32, align 4
  store %struct.crypto_queue* %0, %struct.crypto_queue** %3, align 8
  store %struct.crypto_async_request* %1, %struct.crypto_async_request** %4, align 8
  %6 = load i32, i32* @EINPROGRESS, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.crypto_queue*, %struct.crypto_queue** %3, align 8
  %9 = getelementptr inbounds %struct.crypto_queue, %struct.crypto_queue* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.crypto_queue*, %struct.crypto_queue** %3, align 8
  %12 = getelementptr inbounds %struct.crypto_queue, %struct.crypto_queue* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp sge i64 %10, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %2
  %19 = load %struct.crypto_async_request*, %struct.crypto_async_request** %4, align 8
  %20 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @ENOSPC, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %53

28:                                               ; preds = %18
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  %31 = load %struct.crypto_queue*, %struct.crypto_queue** %3, align 8
  %32 = getelementptr inbounds %struct.crypto_queue, %struct.crypto_queue* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.crypto_queue*, %struct.crypto_queue** %3, align 8
  %35 = getelementptr inbounds %struct.crypto_queue, %struct.crypto_queue* %34, i32 0, i32 2
  %36 = icmp eq i32* %33, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %28
  %38 = load %struct.crypto_async_request*, %struct.crypto_async_request** %4, align 8
  %39 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %38, i32 0, i32 1
  %40 = load %struct.crypto_queue*, %struct.crypto_queue** %3, align 8
  %41 = getelementptr inbounds %struct.crypto_queue, %struct.crypto_queue* %40, i32 0, i32 3
  store i32* %39, i32** %41, align 8
  br label %42

42:                                               ; preds = %37, %28
  br label %43

43:                                               ; preds = %42, %2
  %44 = load %struct.crypto_queue*, %struct.crypto_queue** %3, align 8
  %45 = getelementptr inbounds %struct.crypto_queue, %struct.crypto_queue* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %45, align 8
  %48 = load %struct.crypto_async_request*, %struct.crypto_async_request** %4, align 8
  %49 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %48, i32 0, i32 1
  %50 = load %struct.crypto_queue*, %struct.crypto_queue** %3, align 8
  %51 = getelementptr inbounds %struct.crypto_queue, %struct.crypto_queue* %50, i32 0, i32 2
  %52 = call i32 @list_add_tail(i32* %49, i32* %51)
  br label %53

53:                                               ; preds = %43, %25
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
