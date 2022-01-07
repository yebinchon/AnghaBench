; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_af_alg.c_af_alg_alloc_areq.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_af_alg.c_af_alg_alloc_areq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.af_alg_async_req = type { i32, i64, i32*, i32, i32*, %struct.sock* }
%struct.sock = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.af_alg_async_req* @af_alg_alloc_areq(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.af_alg_async_req*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.af_alg_async_req*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.sock*, %struct.sock** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.af_alg_async_req* @sock_kmalloc(%struct.sock* %7, i32 %8, i32 %9)
  store %struct.af_alg_async_req* %10, %struct.af_alg_async_req** %6, align 8
  %11 = load %struct.af_alg_async_req*, %struct.af_alg_async_req** %6, align 8
  %12 = icmp ne %struct.af_alg_async_req* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.af_alg_async_req* @ERR_PTR(i32 %19)
  store %struct.af_alg_async_req* %20, %struct.af_alg_async_req** %3, align 8
  br label %38

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.af_alg_async_req*, %struct.af_alg_async_req** %6, align 8
  %24 = getelementptr inbounds %struct.af_alg_async_req, %struct.af_alg_async_req* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.sock*, %struct.sock** %4, align 8
  %26 = load %struct.af_alg_async_req*, %struct.af_alg_async_req** %6, align 8
  %27 = getelementptr inbounds %struct.af_alg_async_req, %struct.af_alg_async_req* %26, i32 0, i32 5
  store %struct.sock* %25, %struct.sock** %27, align 8
  %28 = load %struct.af_alg_async_req*, %struct.af_alg_async_req** %6, align 8
  %29 = getelementptr inbounds %struct.af_alg_async_req, %struct.af_alg_async_req* %28, i32 0, i32 4
  store i32* null, i32** %29, align 8
  %30 = load %struct.af_alg_async_req*, %struct.af_alg_async_req** %6, align 8
  %31 = getelementptr inbounds %struct.af_alg_async_req, %struct.af_alg_async_req* %30, i32 0, i32 3
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.af_alg_async_req*, %struct.af_alg_async_req** %6, align 8
  %34 = getelementptr inbounds %struct.af_alg_async_req, %struct.af_alg_async_req* %33, i32 0, i32 2
  store i32* null, i32** %34, align 8
  %35 = load %struct.af_alg_async_req*, %struct.af_alg_async_req** %6, align 8
  %36 = getelementptr inbounds %struct.af_alg_async_req, %struct.af_alg_async_req* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load %struct.af_alg_async_req*, %struct.af_alg_async_req** %6, align 8
  store %struct.af_alg_async_req* %37, %struct.af_alg_async_req** %3, align 8
  br label %38

38:                                               ; preds = %21, %17
  %39 = load %struct.af_alg_async_req*, %struct.af_alg_async_req** %3, align 8
  ret %struct.af_alg_async_req* %39
}

declare dso_local %struct.af_alg_async_req* @sock_kmalloc(%struct.sock*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.af_alg_async_req* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
