; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_crypto_engine.c_crypto_transfer_request.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_crypto_engine.c_crypto_transfer_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_engine = type { i32, i32, i32, i32, i32, i32 }
%struct.crypto_async_request = type { i32 }

@ESHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_engine*, %struct.crypto_async_request*, i32)* @crypto_transfer_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_transfer_request(%struct.crypto_engine* %0, %struct.crypto_async_request* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_engine*, align 8
  %6 = alloca %struct.crypto_async_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.crypto_engine* %0, %struct.crypto_engine** %5, align 8
  store %struct.crypto_async_request* %1, %struct.crypto_async_request** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.crypto_engine*, %struct.crypto_engine** %5, align 8
  %11 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %10, i32 0, i32 0
  %12 = load i64, i64* %8, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.crypto_engine*, %struct.crypto_engine** %5, align 8
  %15 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %3
  %19 = load %struct.crypto_engine*, %struct.crypto_engine** %5, align 8
  %20 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %19, i32 0, i32 0
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  %23 = load i32, i32* @ESHUTDOWN, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %50

25:                                               ; preds = %3
  %26 = load %struct.crypto_engine*, %struct.crypto_engine** %5, align 8
  %27 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %26, i32 0, i32 4
  %28 = load %struct.crypto_async_request*, %struct.crypto_async_request** %6, align 8
  %29 = call i32 @crypto_enqueue_request(i32* %27, %struct.crypto_async_request* %28)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.crypto_engine*, %struct.crypto_engine** %5, align 8
  %31 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %25
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load %struct.crypto_engine*, %struct.crypto_engine** %5, align 8
  %39 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.crypto_engine*, %struct.crypto_engine** %5, align 8
  %42 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %41, i32 0, i32 1
  %43 = call i32 @kthread_queue_work(i32 %40, i32* %42)
  br label %44

44:                                               ; preds = %37, %34, %25
  %45 = load %struct.crypto_engine*, %struct.crypto_engine** %5, align 8
  %46 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %45, i32 0, i32 0
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %44, %18
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @crypto_enqueue_request(i32*, %struct.crypto_async_request*) #1

declare dso_local i32 @kthread_queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
