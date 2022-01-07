; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_algapi.c_crypto_attr_alg2.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_algapi.c_crypto_attr_alg2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_alg = type { i32 }
%struct.rtattr = type { i32 }
%struct.crypto_type = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.crypto_alg* @crypto_attr_alg2(%struct.rtattr* %0, %struct.crypto_type* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.crypto_alg*, align 8
  %6 = alloca %struct.rtattr*, align 8
  %7 = alloca %struct.crypto_type*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.rtattr* %0, %struct.rtattr** %6, align 8
  store %struct.crypto_type* %1, %struct.crypto_type** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.rtattr*, %struct.rtattr** %6, align 8
  %12 = call i8* @crypto_attr_alg_name(%struct.rtattr* %11)
  store i8* %12, i8** %10, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = call i64 @IS_ERR(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i8*, i8** %10, align 8
  %18 = call %struct.crypto_alg* @ERR_CAST(i8* %17)
  store %struct.crypto_alg* %18, %struct.crypto_alg** %5, align 8
  br label %25

19:                                               ; preds = %4
  %20 = load i8*, i8** %10, align 8
  %21 = load %struct.crypto_type*, %struct.crypto_type** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call %struct.crypto_alg* @crypto_find_alg(i8* %20, %struct.crypto_type* %21, i32 %22, i32 %23)
  store %struct.crypto_alg* %24, %struct.crypto_alg** %5, align 8
  br label %25

25:                                               ; preds = %19, %16
  %26 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  ret %struct.crypto_alg* %26
}

declare dso_local i8* @crypto_attr_alg_name(%struct.rtattr*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local %struct.crypto_alg* @ERR_CAST(i8*) #1

declare dso_local %struct.crypto_alg* @crypto_find_alg(i8*, %struct.crypto_type*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
