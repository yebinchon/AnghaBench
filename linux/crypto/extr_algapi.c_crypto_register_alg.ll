; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_algapi.c_crypto_register_alg.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_algapi.c_crypto_register_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_alg = type { i32 }
%struct.crypto_larval = type { i32 }

@CRYPTO_ALG_DEAD = common dso_local global i32 0, align 4
@crypto_alg_sem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_register_alg(%struct.crypto_alg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_alg*, align 8
  %4 = alloca %struct.crypto_larval*, align 8
  %5 = alloca i32, align 4
  store %struct.crypto_alg* %0, %struct.crypto_alg** %3, align 8
  %6 = load i32, i32* @CRYPTO_ALG_DEAD, align 4
  %7 = xor i32 %6, -1
  %8 = load %struct.crypto_alg*, %struct.crypto_alg** %3, align 8
  %9 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, %7
  store i32 %11, i32* %9, align 4
  %12 = load %struct.crypto_alg*, %struct.crypto_alg** %3, align 8
  %13 = call i32 @crypto_check_alg(%struct.crypto_alg* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %32

18:                                               ; preds = %1
  %19 = call i32 @down_write(i32* @crypto_alg_sem)
  %20 = load %struct.crypto_alg*, %struct.crypto_alg** %3, align 8
  %21 = call %struct.crypto_larval* @__crypto_register_alg(%struct.crypto_alg* %20)
  store %struct.crypto_larval* %21, %struct.crypto_larval** %4, align 8
  %22 = call i32 @up_write(i32* @crypto_alg_sem)
  %23 = load %struct.crypto_larval*, %struct.crypto_larval** %4, align 8
  %24 = call i64 @IS_ERR(%struct.crypto_larval* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load %struct.crypto_larval*, %struct.crypto_larval** %4, align 8
  %28 = call i32 @PTR_ERR(%struct.crypto_larval* %27)
  store i32 %28, i32* %2, align 4
  br label %32

29:                                               ; preds = %18
  %30 = load %struct.crypto_larval*, %struct.crypto_larval** %4, align 8
  %31 = call i32 @crypto_wait_for_test(%struct.crypto_larval* %30)
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %29, %26, %16
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @crypto_check_alg(%struct.crypto_alg*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.crypto_larval* @__crypto_register_alg(%struct.crypto_alg*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i64 @IS_ERR(%struct.crypto_larval*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_larval*) #1

declare dso_local i32 @crypto_wait_for_test(%struct.crypto_larval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
