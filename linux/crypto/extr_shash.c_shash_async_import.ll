; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_shash.c_shash_async_import.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_shash.c_shash_async_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.crypto_shash = type { i32 }
%struct.shash_desc = type { %struct.crypto_shash* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*, i8*)* @shash_async_import to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shash_async_import(%struct.ahash_request* %0, i8* %1) #0 {
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.crypto_shash**, align 8
  %6 = alloca %struct.shash_desc*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %8 = call i32 @crypto_ahash_reqtfm(%struct.ahash_request* %7)
  %9 = call %struct.crypto_shash** @crypto_ahash_ctx(i32 %8)
  store %struct.crypto_shash** %9, %struct.crypto_shash*** %5, align 8
  %10 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %11 = call %struct.shash_desc* @ahash_request_ctx(%struct.ahash_request* %10)
  store %struct.shash_desc* %11, %struct.shash_desc** %6, align 8
  %12 = load %struct.crypto_shash**, %struct.crypto_shash*** %5, align 8
  %13 = load %struct.crypto_shash*, %struct.crypto_shash** %12, align 8
  %14 = load %struct.shash_desc*, %struct.shash_desc** %6, align 8
  %15 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %14, i32 0, i32 0
  store %struct.crypto_shash* %13, %struct.crypto_shash** %15, align 8
  %16 = load %struct.shash_desc*, %struct.shash_desc** %6, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @crypto_shash_import(%struct.shash_desc* %16, i8* %17)
  ret i32 %18
}

declare dso_local %struct.crypto_shash** @crypto_ahash_ctx(i32) #1

declare dso_local i32 @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.shash_desc* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @crypto_shash_import(%struct.shash_desc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
