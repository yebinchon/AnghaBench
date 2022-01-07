; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/sodium/extr_core.c_sodium_init.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/sodium/extr_core.c_sodium_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@initialized = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sodium_init() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 (...) @sodium_crit_enter()
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %27

5:                                                ; preds = %0
  %6 = load i32, i32* @initialized, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = call i64 (...) @sodium_crit_leave()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i32 -1, i32* %1, align 4
  br label %27

12:                                               ; preds = %8
  store i32 1, i32* %1, align 4
  br label %27

13:                                               ; preds = %5
  %14 = call i32 (...) @_sodium_runtime_get_cpu_features()
  %15 = call i32 (...) @randombytes_stir()
  %16 = call i32 (...) @_sodium_alloc_init()
  %17 = call i32 (...) @_crypto_pwhash_argon2_pick_best_implementation()
  %18 = call i32 (...) @_crypto_generichash_blake2b_pick_best_implementation()
  %19 = call i32 (...) @_crypto_onetimeauth_poly1305_pick_best_implementation()
  %20 = call i32 (...) @_crypto_scalarmult_curve25519_pick_best_implementation()
  %21 = call i32 (...) @_crypto_stream_chacha20_pick_best_implementation()
  %22 = call i32 (...) @_crypto_stream_salsa20_pick_best_implementation()
  store i32 1, i32* @initialized, align 4
  %23 = call i64 (...) @sodium_crit_leave()
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  store i32 -1, i32* %1, align 4
  br label %27

26:                                               ; preds = %13
  store i32 0, i32* %1, align 4
  br label %27

27:                                               ; preds = %26, %25, %12, %11, %4
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare dso_local i64 @sodium_crit_enter(...) #1

declare dso_local i64 @sodium_crit_leave(...) #1

declare dso_local i32 @_sodium_runtime_get_cpu_features(...) #1

declare dso_local i32 @randombytes_stir(...) #1

declare dso_local i32 @_sodium_alloc_init(...) #1

declare dso_local i32 @_crypto_pwhash_argon2_pick_best_implementation(...) #1

declare dso_local i32 @_crypto_generichash_blake2b_pick_best_implementation(...) #1

declare dso_local i32 @_crypto_onetimeauth_poly1305_pick_best_implementation(...) #1

declare dso_local i32 @_crypto_scalarmult_curve25519_pick_best_implementation(...) #1

declare dso_local i32 @_crypto_stream_chacha20_pick_best_implementation(...) #1

declare dso_local i32 @_crypto_stream_salsa20_pick_best_implementation(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
