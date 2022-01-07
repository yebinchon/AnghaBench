; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_aes-ce-ccm-glue.c_ccm_calculate_auth_mac.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_aes-ce-ccm-glue.c_ccm_calculate_auth_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i32 }
%struct.crypto_aead = type { i32 }
%struct.crypto_aes_ctx = type { i32 }
%struct.__packed = type { i8*, i32, i32 }
%struct.scatter_walk = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aead_request*, i32*)* @ccm_calculate_auth_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccm_calculate_auth_mac(%struct.aead_request* %0, i32* %1) #0 {
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca %struct.crypto_aes_ctx*, align 8
  %7 = alloca %struct.__packed, align 8
  %8 = alloca %struct.scatter_walk, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %14 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %13)
  store %struct.crypto_aead* %14, %struct.crypto_aead** %5, align 8
  %15 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %16 = call %struct.crypto_aes_ctx* @crypto_aead_ctx(%struct.crypto_aead* %15)
  store %struct.crypto_aes_ctx* %16, %struct.crypto_aes_ctx** %6, align 8
  %17 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %18 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 65280
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load i32, i32* %9, align 4
  %24 = call i8* @cpu_to_be16(i32 %23)
  %25 = getelementptr inbounds %struct.__packed, %struct.__packed* %7, i32 0, i32 0
  store i8* %24, i8** %25, align 8
  %26 = getelementptr inbounds %struct.__packed, %struct.__packed* %7, i32 0, i32 2
  store i32 2, i32* %26, align 4
  br label %34

27:                                               ; preds = %2
  %28 = call i8* @cpu_to_be16(i32 65534)
  %29 = getelementptr inbounds %struct.__packed, %struct.__packed* %7, i32 0, i32 0
  store i8* %28, i8** %29, align 8
  %30 = load i32, i32* %9, align 4
  %31 = getelementptr inbounds %struct.__packed, %struct.__packed* %7, i32 0, i32 1
  %32 = call i32 @put_unaligned_be32(i32 %30, i32* %31)
  %33 = getelementptr inbounds %struct.__packed, %struct.__packed* %7, i32 0, i32 2
  store i32 6, i32* %33, align 4
  br label %34

34:                                               ; preds = %27, %22
  %35 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %6, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = bitcast %struct.__packed* %7 to i32*
  %38 = getelementptr inbounds %struct.__packed, %struct.__packed* %7, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ccm_update_mac(%struct.crypto_aes_ctx* %35, i32* %36, i32* %37, i32 %39, i32* %10)
  %41 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %42 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @scatterwalk_start(%struct.scatter_walk* %8, i32 %43)
  br label %45

45:                                               ; preds = %73, %34
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @scatterwalk_clamp(%struct.scatter_walk* %8, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.scatter_walk, %struct.scatter_walk* %8, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @sg_next(i32 %52)
  %54 = call i32 @scatterwalk_start(%struct.scatter_walk* %8, i32 %53)
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @scatterwalk_clamp(%struct.scatter_walk* %8, i32 %55)
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %50, %45
  %58 = call i32* @scatterwalk_map(%struct.scatter_walk* %8)
  store i32* %58, i32** %12, align 8
  %59 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %6, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @ccm_update_mac(%struct.crypto_aes_ctx* %59, i32* %60, i32* %61, i32 %62, i32* %10)
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %9, align 4
  %66 = sub nsw i32 %65, %64
  store i32 %66, i32* %9, align 4
  %67 = load i32*, i32** %12, align 8
  %68 = call i32 @scatterwalk_unmap(i32* %67)
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @scatterwalk_advance(%struct.scatter_walk* %8, i32 %69)
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @scatterwalk_done(%struct.scatter_walk* %8, i32 0, i32 %71)
  br label %73

73:                                               ; preds = %57
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %45, label %76

76:                                               ; preds = %73
  ret void
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.crypto_aes_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @put_unaligned_be32(i32, i32*) #1

declare dso_local i32 @ccm_update_mac(%struct.crypto_aes_ctx*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @scatterwalk_start(%struct.scatter_walk*, i32) #1

declare dso_local i32 @scatterwalk_clamp(%struct.scatter_walk*, i32) #1

declare dso_local i32 @sg_next(i32) #1

declare dso_local i32* @scatterwalk_map(%struct.scatter_walk*) #1

declare dso_local i32 @scatterwalk_unmap(i32*) #1

declare dso_local i32 @scatterwalk_advance(%struct.scatter_walk*, i32) #1

declare dso_local i32 @scatterwalk_done(%struct.scatter_walk*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
