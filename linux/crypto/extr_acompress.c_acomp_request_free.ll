; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_acompress.c_acomp_request_free.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_acompress.c_acomp_request_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acomp_req = type { i32, i32* }
%struct.crypto_acomp = type { i32 (i32*)* }
%struct.crypto_tfm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@crypto_acomp_type = common dso_local global i32 0, align 4
@CRYPTO_ACOMP_ALLOC_OUTPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acomp_request_free(%struct.acomp_req* %0) #0 {
  %2 = alloca %struct.acomp_req*, align 8
  %3 = alloca %struct.crypto_acomp*, align 8
  %4 = alloca %struct.crypto_tfm*, align 8
  store %struct.acomp_req* %0, %struct.acomp_req** %2, align 8
  %5 = load %struct.acomp_req*, %struct.acomp_req** %2, align 8
  %6 = call %struct.crypto_acomp* @crypto_acomp_reqtfm(%struct.acomp_req* %5)
  store %struct.crypto_acomp* %6, %struct.crypto_acomp** %3, align 8
  %7 = load %struct.crypto_acomp*, %struct.crypto_acomp** %3, align 8
  %8 = call %struct.crypto_tfm* @crypto_acomp_tfm(%struct.crypto_acomp* %7)
  store %struct.crypto_tfm* %8, %struct.crypto_tfm** %4, align 8
  %9 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %10 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, @crypto_acomp_type
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.acomp_req*, %struct.acomp_req** %2, align 8
  %17 = call i32 @crypto_acomp_scomp_free_ctx(%struct.acomp_req* %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.acomp_req*, %struct.acomp_req** %2, align 8
  %20 = getelementptr inbounds %struct.acomp_req, %struct.acomp_req* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @CRYPTO_ACOMP_ALLOC_OUTPUT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %18
  %26 = load %struct.crypto_acomp*, %struct.crypto_acomp** %3, align 8
  %27 = getelementptr inbounds %struct.crypto_acomp, %struct.crypto_acomp* %26, i32 0, i32 0
  %28 = load i32 (i32*)*, i32 (i32*)** %27, align 8
  %29 = load %struct.acomp_req*, %struct.acomp_req** %2, align 8
  %30 = getelementptr inbounds %struct.acomp_req, %struct.acomp_req* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 %28(i32* %31)
  %33 = load %struct.acomp_req*, %struct.acomp_req** %2, align 8
  %34 = getelementptr inbounds %struct.acomp_req, %struct.acomp_req* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %25, %18
  %36 = load %struct.acomp_req*, %struct.acomp_req** %2, align 8
  %37 = call i32 @__acomp_request_free(%struct.acomp_req* %36)
  ret void
}

declare dso_local %struct.crypto_acomp* @crypto_acomp_reqtfm(%struct.acomp_req*) #1

declare dso_local %struct.crypto_tfm* @crypto_acomp_tfm(%struct.crypto_acomp*) #1

declare dso_local i32 @crypto_acomp_scomp_free_ctx(%struct.acomp_req*) #1

declare dso_local i32 @__acomp_request_free(%struct.acomp_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
