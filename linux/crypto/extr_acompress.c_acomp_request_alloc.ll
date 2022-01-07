; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_acompress.c_acomp_request_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_acompress.c_acomp_request_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acomp_req = type { i32 }
%struct.crypto_acomp = type { i32 }
%struct.crypto_tfm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@crypto_acomp_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.acomp_req* @acomp_request_alloc(%struct.crypto_acomp* %0) #0 {
  %2 = alloca %struct.acomp_req*, align 8
  %3 = alloca %struct.crypto_acomp*, align 8
  %4 = alloca %struct.crypto_tfm*, align 8
  %5 = alloca %struct.acomp_req*, align 8
  store %struct.crypto_acomp* %0, %struct.crypto_acomp** %3, align 8
  %6 = load %struct.crypto_acomp*, %struct.crypto_acomp** %3, align 8
  %7 = call %struct.crypto_tfm* @crypto_acomp_tfm(%struct.crypto_acomp* %6)
  store %struct.crypto_tfm* %7, %struct.crypto_tfm** %4, align 8
  %8 = load %struct.crypto_acomp*, %struct.crypto_acomp** %3, align 8
  %9 = call %struct.acomp_req* @__acomp_request_alloc(%struct.crypto_acomp* %8)
  store %struct.acomp_req* %9, %struct.acomp_req** %5, align 8
  %10 = load %struct.acomp_req*, %struct.acomp_req** %5, align 8
  %11 = icmp ne %struct.acomp_req* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %14 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, @crypto_acomp_type
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load %struct.acomp_req*, %struct.acomp_req** %5, align 8
  %21 = call %struct.acomp_req* @crypto_acomp_scomp_alloc_ctx(%struct.acomp_req* %20)
  store %struct.acomp_req* %21, %struct.acomp_req** %2, align 8
  br label %24

22:                                               ; preds = %12, %1
  %23 = load %struct.acomp_req*, %struct.acomp_req** %5, align 8
  store %struct.acomp_req* %23, %struct.acomp_req** %2, align 8
  br label %24

24:                                               ; preds = %22, %19
  %25 = load %struct.acomp_req*, %struct.acomp_req** %2, align 8
  ret %struct.acomp_req* %25
}

declare dso_local %struct.crypto_tfm* @crypto_acomp_tfm(%struct.crypto_acomp*) #1

declare dso_local %struct.acomp_req* @__acomp_request_alloc(%struct.crypto_acomp*) #1

declare dso_local %struct.acomp_req* @crypto_acomp_scomp_alloc_ctx(%struct.acomp_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
