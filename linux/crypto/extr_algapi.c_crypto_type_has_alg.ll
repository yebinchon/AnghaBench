; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_algapi.c_crypto_type_has_alg.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_algapi.c_crypto_type_has_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_type = type { i32 }
%struct.crypto_alg = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_type_has_alg(i8* %0, %struct.crypto_type* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.crypto_type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.crypto_alg*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.crypto_type* %1, %struct.crypto_type** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = load %struct.crypto_type*, %struct.crypto_type** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call %struct.crypto_alg* @crypto_find_alg(i8* %11, %struct.crypto_type* %12, i32 %13, i32 %14)
  store %struct.crypto_alg* %15, %struct.crypto_alg** %10, align 8
  %16 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %17 = call i32 @IS_ERR(%struct.crypto_alg* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %21 = call i32 @crypto_mod_put(%struct.crypto_alg* %20)
  store i32 1, i32* %9, align 4
  br label %22

22:                                               ; preds = %19, %4
  %23 = load i32, i32* %9, align 4
  ret i32 %23
}

declare dso_local %struct.crypto_alg* @crypto_find_alg(i8*, %struct.crypto_type*, i32, i32) #1

declare dso_local i32 @IS_ERR(%struct.crypto_alg*) #1

declare dso_local i32 @crypto_mod_put(%struct.crypto_alg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
