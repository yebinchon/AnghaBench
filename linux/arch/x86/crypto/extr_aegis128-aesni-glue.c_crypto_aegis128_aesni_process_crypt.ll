; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/crypto/extr_aegis128-aesni-glue.c_crypto_aegis128_aesni_process_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/crypto/extr_aegis128-aesni-glue.c_crypto_aegis128_aesni_process_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aegis_state = type { i32 }
%struct.skcipher_walk = type { i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.aegis_crypt_ops = type { i32 (%struct.aegis_state*, i32, i32, i32)*, i32 (%struct.aegis_state*, i32, i32, i32)* }

@AEGIS128_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aegis_state*, %struct.skcipher_walk*, %struct.aegis_crypt_ops*)* @crypto_aegis128_aesni_process_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto_aegis128_aesni_process_crypt(%struct.aegis_state* %0, %struct.skcipher_walk* %1, %struct.aegis_crypt_ops* %2) #0 {
  %4 = alloca %struct.aegis_state*, align 8
  %5 = alloca %struct.skcipher_walk*, align 8
  %6 = alloca %struct.aegis_crypt_ops*, align 8
  store %struct.aegis_state* %0, %struct.aegis_state** %4, align 8
  store %struct.skcipher_walk* %1, %struct.skcipher_walk** %5, align 8
  store %struct.aegis_crypt_ops* %2, %struct.aegis_crypt_ops** %6, align 8
  br label %7

7:                                                ; preds = %13, %3
  %8 = load %struct.skcipher_walk*, %struct.skcipher_walk** %5, align 8
  %9 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @AEGIS128_BLOCK_SIZE, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %41

13:                                               ; preds = %7
  %14 = load %struct.aegis_crypt_ops*, %struct.aegis_crypt_ops** %6, align 8
  %15 = getelementptr inbounds %struct.aegis_crypt_ops, %struct.aegis_crypt_ops* %14, i32 0, i32 1
  %16 = load i32 (%struct.aegis_state*, i32, i32, i32)*, i32 (%struct.aegis_state*, i32, i32, i32)** %15, align 8
  %17 = load %struct.aegis_state*, %struct.aegis_state** %4, align 8
  %18 = load %struct.skcipher_walk*, %struct.skcipher_walk** %5, align 8
  %19 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @AEGIS128_BLOCK_SIZE, align 4
  %22 = call i32 @round_down(i32 %20, i32 %21)
  %23 = load %struct.skcipher_walk*, %struct.skcipher_walk** %5, align 8
  %24 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.skcipher_walk*, %struct.skcipher_walk** %5, align 8
  %29 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 %16(%struct.aegis_state* %17, i32 %22, i32 %27, i32 %32)
  %34 = load %struct.skcipher_walk*, %struct.skcipher_walk** %5, align 8
  %35 = load %struct.skcipher_walk*, %struct.skcipher_walk** %5, align 8
  %36 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @AEGIS128_BLOCK_SIZE, align 4
  %39 = srem i32 %37, %38
  %40 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %34, i32 %39)
  br label %7

41:                                               ; preds = %7
  %42 = load %struct.skcipher_walk*, %struct.skcipher_walk** %5, align 8
  %43 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %41
  %47 = load %struct.aegis_crypt_ops*, %struct.aegis_crypt_ops** %6, align 8
  %48 = getelementptr inbounds %struct.aegis_crypt_ops, %struct.aegis_crypt_ops* %47, i32 0, i32 0
  %49 = load i32 (%struct.aegis_state*, i32, i32, i32)*, i32 (%struct.aegis_state*, i32, i32, i32)** %48, align 8
  %50 = load %struct.aegis_state*, %struct.aegis_state** %4, align 8
  %51 = load %struct.skcipher_walk*, %struct.skcipher_walk** %5, align 8
  %52 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.skcipher_walk*, %struct.skcipher_walk** %5, align 8
  %55 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.skcipher_walk*, %struct.skcipher_walk** %5, align 8
  %60 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 %49(%struct.aegis_state* %50, i32 %53, i32 %58, i32 %63)
  %65 = load %struct.skcipher_walk*, %struct.skcipher_walk** %5, align 8
  %66 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %65, i32 0)
  br label %67

67:                                               ; preds = %46, %41
  ret void
}

declare dso_local i32 @round_down(i32, i32) #1

declare dso_local i32 @skcipher_walk_done(%struct.skcipher_walk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
