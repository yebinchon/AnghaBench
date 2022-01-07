; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_lrw.c_init_tfm.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_lrw.c_init_tfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_skcipher = type { i32 }
%struct.skcipher_instance = type { i32 }
%struct.crypto_skcipher_spawn = type { i32 }
%struct.priv = type { %struct.crypto_skcipher* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_skcipher*)* @init_tfm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_tfm(%struct.crypto_skcipher* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_skcipher*, align 8
  %4 = alloca %struct.skcipher_instance*, align 8
  %5 = alloca %struct.crypto_skcipher_spawn*, align 8
  %6 = alloca %struct.priv*, align 8
  %7 = alloca %struct.crypto_skcipher*, align 8
  store %struct.crypto_skcipher* %0, %struct.crypto_skcipher** %3, align 8
  %8 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %3, align 8
  %9 = call %struct.skcipher_instance* @skcipher_alg_instance(%struct.crypto_skcipher* %8)
  store %struct.skcipher_instance* %9, %struct.skcipher_instance** %4, align 8
  %10 = load %struct.skcipher_instance*, %struct.skcipher_instance** %4, align 8
  %11 = call %struct.crypto_skcipher_spawn* @skcipher_instance_ctx(%struct.skcipher_instance* %10)
  store %struct.crypto_skcipher_spawn* %11, %struct.crypto_skcipher_spawn** %5, align 8
  %12 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %3, align 8
  %13 = call %struct.priv* @crypto_skcipher_ctx(%struct.crypto_skcipher* %12)
  store %struct.priv* %13, %struct.priv** %6, align 8
  %14 = load %struct.crypto_skcipher_spawn*, %struct.crypto_skcipher_spawn** %5, align 8
  %15 = call %struct.crypto_skcipher* @crypto_spawn_skcipher(%struct.crypto_skcipher_spawn* %14)
  store %struct.crypto_skcipher* %15, %struct.crypto_skcipher** %7, align 8
  %16 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %7, align 8
  %17 = call i64 @IS_ERR(%struct.crypto_skcipher* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %7, align 8
  %21 = call i32 @PTR_ERR(%struct.crypto_skcipher* %20)
  store i32 %21, i32* %2, align 4
  br label %31

22:                                               ; preds = %1
  %23 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %7, align 8
  %24 = load %struct.priv*, %struct.priv** %6, align 8
  %25 = getelementptr inbounds %struct.priv, %struct.priv* %24, i32 0, i32 0
  store %struct.crypto_skcipher* %23, %struct.crypto_skcipher** %25, align 8
  %26 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %3, align 8
  %27 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %7, align 8
  %28 = call i64 @crypto_skcipher_reqsize(%struct.crypto_skcipher* %27)
  %29 = add i64 %28, 4
  %30 = call i32 @crypto_skcipher_set_reqsize(%struct.crypto_skcipher* %26, i64 %29)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %22, %19
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.skcipher_instance* @skcipher_alg_instance(%struct.crypto_skcipher*) #1

declare dso_local %struct.crypto_skcipher_spawn* @skcipher_instance_ctx(%struct.skcipher_instance*) #1

declare dso_local %struct.priv* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local %struct.crypto_skcipher* @crypto_spawn_skcipher(%struct.crypto_skcipher_spawn*) #1

declare dso_local i64 @IS_ERR(%struct.crypto_skcipher*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_skcipher*) #1

declare dso_local i32 @crypto_skcipher_set_reqsize(%struct.crypto_skcipher*, i64) #1

declare dso_local i64 @crypto_skcipher_reqsize(%struct.crypto_skcipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
