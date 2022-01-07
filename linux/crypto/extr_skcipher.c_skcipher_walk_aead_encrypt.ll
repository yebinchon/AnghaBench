; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_skcipher_walk_aead_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_skcipher_walk_aead_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_walk = type { i32 }
%struct.aead_request = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skcipher_walk_aead_encrypt(%struct.skcipher_walk* %0, %struct.aead_request* %1, i32 %2) #0 {
  %4 = alloca %struct.skcipher_walk*, align 8
  %5 = alloca %struct.aead_request*, align 8
  %6 = alloca i32, align 4
  store %struct.skcipher_walk* %0, %struct.skcipher_walk** %4, align 8
  store %struct.aead_request* %1, %struct.aead_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %8 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %11 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %13 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @skcipher_walk_aead_common(%struct.skcipher_walk* %12, %struct.aead_request* %13, i32 %14)
  ret i32 %15
}

declare dso_local i32 @skcipher_walk_aead_common(%struct.skcipher_walk*, %struct.aead_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
