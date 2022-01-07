; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_crypto_engine.c_crypto_finalize_request.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_crypto_engine.c_crypto_finalize_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_engine = type { i32, i32, i32, i32, %struct.crypto_async_request*, i32 }
%struct.crypto_async_request = type { i32 (%struct.crypto_async_request*, i32)*, i32 }
%struct.crypto_engine_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.crypto_engine.0*, %struct.crypto_async_request.1*)* }
%struct.crypto_engine.0 = type opaque
%struct.crypto_async_request.1 = type opaque

@.str = private unnamed_addr constant [29 x i8] c"failed to unprepare request\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_engine*, %struct.crypto_async_request*, i32)* @crypto_finalize_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto_finalize_request(%struct.crypto_engine* %0, %struct.crypto_async_request* %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_engine*, align 8
  %5 = alloca %struct.crypto_async_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.crypto_engine_ctx*, align 8
  store %struct.crypto_engine* %0, %struct.crypto_engine** %4, align 8
  store %struct.crypto_async_request* %1, %struct.crypto_async_request** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.crypto_engine*, %struct.crypto_engine** %4, align 8
  %12 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %11, i32 0, i32 3
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.crypto_engine*, %struct.crypto_engine** %4, align 8
  %16 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %15, i32 0, i32 4
  %17 = load %struct.crypto_async_request*, %struct.crypto_async_request** %16, align 8
  %18 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %19 = icmp eq %struct.crypto_async_request* %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  br label %21

21:                                               ; preds = %20, %3
  %22 = load %struct.crypto_engine*, %struct.crypto_engine** %4, align 8
  %23 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %22, i32 0, i32 3
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %74

28:                                               ; preds = %21
  %29 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %30 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.crypto_engine_ctx* @crypto_tfm_ctx(i32 %31)
  store %struct.crypto_engine_ctx* %32, %struct.crypto_engine_ctx** %10, align 8
  %33 = load %struct.crypto_engine*, %struct.crypto_engine** %4, align 8
  %34 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %28
  %38 = load %struct.crypto_engine_ctx*, %struct.crypto_engine_ctx** %10, align 8
  %39 = getelementptr inbounds %struct.crypto_engine_ctx, %struct.crypto_engine_ctx* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (%struct.crypto_engine.0*, %struct.crypto_async_request.1*)*, i32 (%struct.crypto_engine.0*, %struct.crypto_async_request.1*)** %40, align 8
  %42 = icmp ne i32 (%struct.crypto_engine.0*, %struct.crypto_async_request.1*)* %41, null
  br i1 %42, label %43, label %61

43:                                               ; preds = %37
  %44 = load %struct.crypto_engine_ctx*, %struct.crypto_engine_ctx** %10, align 8
  %45 = getelementptr inbounds %struct.crypto_engine_ctx, %struct.crypto_engine_ctx* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (%struct.crypto_engine.0*, %struct.crypto_async_request.1*)*, i32 (%struct.crypto_engine.0*, %struct.crypto_async_request.1*)** %46, align 8
  %48 = load %struct.crypto_engine*, %struct.crypto_engine** %4, align 8
  %49 = bitcast %struct.crypto_engine* %48 to %struct.crypto_engine.0*
  %50 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %51 = bitcast %struct.crypto_async_request* %50 to %struct.crypto_async_request.1*
  %52 = call i32 %47(%struct.crypto_engine.0* %49, %struct.crypto_async_request.1* %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %43
  %56 = load %struct.crypto_engine*, %struct.crypto_engine** %4, align 8
  %57 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @dev_err(i32 %58, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %55, %43
  br label %61

61:                                               ; preds = %60, %37, %28
  %62 = load %struct.crypto_engine*, %struct.crypto_engine** %4, align 8
  %63 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %62, i32 0, i32 3
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @spin_lock_irqsave(i32* %63, i64 %64)
  %66 = load %struct.crypto_engine*, %struct.crypto_engine** %4, align 8
  %67 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %66, i32 0, i32 4
  store %struct.crypto_async_request* null, %struct.crypto_async_request** %67, align 8
  %68 = load %struct.crypto_engine*, %struct.crypto_engine** %4, align 8
  %69 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %68, i32 0, i32 0
  store i32 0, i32* %69, align 8
  %70 = load %struct.crypto_engine*, %struct.crypto_engine** %4, align 8
  %71 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %70, i32 0, i32 3
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i64 %72)
  br label %74

74:                                               ; preds = %61, %21
  %75 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %76 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %75, i32 0, i32 0
  %77 = load i32 (%struct.crypto_async_request*, i32)*, i32 (%struct.crypto_async_request*, i32)** %76, align 8
  %78 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 %77(%struct.crypto_async_request* %78, i32 %79)
  %81 = load %struct.crypto_engine*, %struct.crypto_engine** %4, align 8
  %82 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.crypto_engine*, %struct.crypto_engine** %4, align 8
  %85 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %84, i32 0, i32 1
  %86 = call i32 @kthread_queue_work(i32 %83, i32* %85)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.crypto_engine_ctx* @crypto_tfm_ctx(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @kthread_queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
