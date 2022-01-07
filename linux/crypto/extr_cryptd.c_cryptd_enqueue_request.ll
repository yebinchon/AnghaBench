; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_cryptd.c_cryptd_enqueue_request.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_cryptd.c_cryptd_enqueue_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptd_queue = type { i32 }
%struct.crypto_async_request = type { i32 }
%struct.cryptd_cpu_queue = type { i32, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@cryptd_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cryptd_queue*, %struct.crypto_async_request*)* @cryptd_enqueue_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cryptd_enqueue_request(%struct.cryptd_queue* %0, %struct.crypto_async_request* %1) #0 {
  %3 = alloca %struct.cryptd_queue*, align 8
  %4 = alloca %struct.crypto_async_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cryptd_cpu_queue*, align 8
  %8 = alloca i32*, align 8
  store %struct.cryptd_queue* %0, %struct.cryptd_queue** %3, align 8
  store %struct.crypto_async_request* %1, %struct.crypto_async_request** %4, align 8
  %9 = call i32 (...) @get_cpu()
  store i32 %9, i32* %5, align 4
  %10 = load %struct.cryptd_queue*, %struct.cryptd_queue** %3, align 8
  %11 = getelementptr inbounds %struct.cryptd_queue, %struct.cryptd_queue* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.cryptd_cpu_queue* @this_cpu_ptr(i32 %12)
  store %struct.cryptd_cpu_queue* %13, %struct.cryptd_cpu_queue** %7, align 8
  %14 = load %struct.cryptd_cpu_queue*, %struct.cryptd_cpu_queue** %7, align 8
  %15 = getelementptr inbounds %struct.cryptd_cpu_queue, %struct.cryptd_cpu_queue* %14, i32 0, i32 1
  %16 = load %struct.crypto_async_request*, %struct.crypto_async_request** %4, align 8
  %17 = call i32 @crypto_enqueue_request(i32* %15, %struct.crypto_async_request* %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.crypto_async_request*, %struct.crypto_async_request** %4, align 8
  %19 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32* @crypto_tfm_ctx(i32 %20)
  store i32* %21, i32** %8, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @ENOSPC, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %40

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @cryptd_wq, align 4
  %30 = load %struct.cryptd_cpu_queue*, %struct.cryptd_cpu_queue** %7, align 8
  %31 = getelementptr inbounds %struct.cryptd_cpu_queue, %struct.cryptd_cpu_queue* %30, i32 0, i32 0
  %32 = call i32 @queue_work_on(i32 %28, i32 %29, i32* %31)
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @refcount_read(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %27
  br label %40

37:                                               ; preds = %27
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @refcount_inc(i32* %38)
  br label %40

40:                                               ; preds = %37, %36, %26
  %41 = call i32 (...) @put_cpu()
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @get_cpu(...) #1

declare dso_local %struct.cryptd_cpu_queue* @this_cpu_ptr(i32) #1

declare dso_local i32 @crypto_enqueue_request(i32*, %struct.crypto_async_request*) #1

declare dso_local i32* @crypto_tfm_ctx(i32) #1

declare dso_local i32 @queue_work_on(i32, i32, i32*) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
