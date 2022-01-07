; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_scompress.c_crypto_acomp_scomp_free_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_scompress.c_crypto_acomp_scomp_free_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acomp_req = type { i8** }
%struct.crypto_acomp = type { i32 }
%struct.crypto_tfm = type { i32 }
%struct.crypto_scomp = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @crypto_acomp_scomp_free_ctx(%struct.acomp_req* %0) #0 {
  %2 = alloca %struct.acomp_req*, align 8
  %3 = alloca %struct.crypto_acomp*, align 8
  %4 = alloca %struct.crypto_tfm*, align 8
  %5 = alloca %struct.crypto_scomp**, align 8
  %6 = alloca %struct.crypto_scomp*, align 8
  %7 = alloca i8*, align 8
  store %struct.acomp_req* %0, %struct.acomp_req** %2, align 8
  %8 = load %struct.acomp_req*, %struct.acomp_req** %2, align 8
  %9 = call %struct.crypto_acomp* @crypto_acomp_reqtfm(%struct.acomp_req* %8)
  store %struct.crypto_acomp* %9, %struct.crypto_acomp** %3, align 8
  %10 = load %struct.crypto_acomp*, %struct.crypto_acomp** %3, align 8
  %11 = call %struct.crypto_tfm* @crypto_acomp_tfm(%struct.crypto_acomp* %10)
  store %struct.crypto_tfm* %11, %struct.crypto_tfm** %4, align 8
  %12 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %13 = call %struct.crypto_scomp** @crypto_tfm_ctx(%struct.crypto_tfm* %12)
  store %struct.crypto_scomp** %13, %struct.crypto_scomp*** %5, align 8
  %14 = load %struct.crypto_scomp**, %struct.crypto_scomp*** %5, align 8
  %15 = load %struct.crypto_scomp*, %struct.crypto_scomp** %14, align 8
  store %struct.crypto_scomp* %15, %struct.crypto_scomp** %6, align 8
  %16 = load %struct.acomp_req*, %struct.acomp_req** %2, align 8
  %17 = getelementptr inbounds %struct.acomp_req, %struct.acomp_req* %16, i32 0, i32 0
  %18 = load i8**, i8*** %17, align 8
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load %struct.crypto_scomp*, %struct.crypto_scomp** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @crypto_scomp_free_ctx(%struct.crypto_scomp* %23, i8* %24)
  br label %26

26:                                               ; preds = %22, %1
  ret void
}

declare dso_local %struct.crypto_acomp* @crypto_acomp_reqtfm(%struct.acomp_req*) #1

declare dso_local %struct.crypto_tfm* @crypto_acomp_tfm(%struct.crypto_acomp*) #1

declare dso_local %struct.crypto_scomp** @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @crypto_scomp_free_ctx(%struct.crypto_scomp*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
