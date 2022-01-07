; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_af_alg.c_af_alg_async_cb.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_af_alg.c_af_alg_async_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { %struct.af_alg_async_req* }
%struct.af_alg_async_req = type { i32, %struct.kiocb*, %struct.sock* }
%struct.kiocb = type { i32 (%struct.kiocb*, i32, i32)* }
%struct.sock = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @af_alg_async_cb(%struct.crypto_async_request* %0, i32 %1) #0 {
  %3 = alloca %struct.crypto_async_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.af_alg_async_req*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.kiocb*, align 8
  %8 = alloca i32, align 4
  store %struct.crypto_async_request* %0, %struct.crypto_async_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %10 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %9, i32 0, i32 0
  %11 = load %struct.af_alg_async_req*, %struct.af_alg_async_req** %10, align 8
  store %struct.af_alg_async_req* %11, %struct.af_alg_async_req** %5, align 8
  %12 = load %struct.af_alg_async_req*, %struct.af_alg_async_req** %5, align 8
  %13 = getelementptr inbounds %struct.af_alg_async_req, %struct.af_alg_async_req* %12, i32 0, i32 2
  %14 = load %struct.sock*, %struct.sock** %13, align 8
  store %struct.sock* %14, %struct.sock** %6, align 8
  %15 = load %struct.af_alg_async_req*, %struct.af_alg_async_req** %5, align 8
  %16 = getelementptr inbounds %struct.af_alg_async_req, %struct.af_alg_async_req* %15, i32 0, i32 1
  %17 = load %struct.kiocb*, %struct.kiocb** %16, align 8
  store %struct.kiocb* %17, %struct.kiocb** %7, align 8
  %18 = load %struct.af_alg_async_req*, %struct.af_alg_async_req** %5, align 8
  %19 = getelementptr inbounds %struct.af_alg_async_req, %struct.af_alg_async_req* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  %21 = load %struct.af_alg_async_req*, %struct.af_alg_async_req** %5, align 8
  %22 = call i32 @af_alg_free_resources(%struct.af_alg_async_req* %21)
  %23 = load %struct.sock*, %struct.sock** %6, align 8
  %24 = call i32 @sock_put(%struct.sock* %23)
  %25 = load %struct.kiocb*, %struct.kiocb** %7, align 8
  %26 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %25, i32 0, i32 0
  %27 = load i32 (%struct.kiocb*, i32, i32)*, i32 (%struct.kiocb*, i32, i32)** %26, align 8
  %28 = load %struct.kiocb*, %struct.kiocb** %7, align 8
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* %4, align 4
  br label %35

33:                                               ; preds = %2
  %34 = load i32, i32* %8, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  %37 = call i32 %27(%struct.kiocb* %28, i32 %36, i32 0)
  ret void
}

declare dso_local i32 @af_alg_free_resources(%struct.af_alg_async_req*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
