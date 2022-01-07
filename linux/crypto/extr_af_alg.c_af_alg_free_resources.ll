; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_af_alg.c_af_alg_free_resources.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_af_alg.c_af_alg_free_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.af_alg_async_req = type { i32, %struct.sock* }
%struct.sock = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @af_alg_free_resources(%struct.af_alg_async_req* %0) #0 {
  %2 = alloca %struct.af_alg_async_req*, align 8
  %3 = alloca %struct.sock*, align 8
  store %struct.af_alg_async_req* %0, %struct.af_alg_async_req** %2, align 8
  %4 = load %struct.af_alg_async_req*, %struct.af_alg_async_req** %2, align 8
  %5 = getelementptr inbounds %struct.af_alg_async_req, %struct.af_alg_async_req* %4, i32 0, i32 1
  %6 = load %struct.sock*, %struct.sock** %5, align 8
  store %struct.sock* %6, %struct.sock** %3, align 8
  %7 = load %struct.af_alg_async_req*, %struct.af_alg_async_req** %2, align 8
  %8 = call i32 @af_alg_free_areq_sgls(%struct.af_alg_async_req* %7)
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = load %struct.af_alg_async_req*, %struct.af_alg_async_req** %2, align 8
  %11 = load %struct.af_alg_async_req*, %struct.af_alg_async_req** %2, align 8
  %12 = getelementptr inbounds %struct.af_alg_async_req, %struct.af_alg_async_req* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @sock_kfree_s(%struct.sock* %9, %struct.af_alg_async_req* %10, i32 %13)
  ret void
}

declare dso_local i32 @af_alg_free_areq_sgls(%struct.af_alg_async_req*) #1

declare dso_local i32 @sock_kfree_s(%struct.sock*, %struct.af_alg_async_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
