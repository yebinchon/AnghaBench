; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_crypto_null.c_crypto_get_default_null_skcipher.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_crypto_null.c_crypto_get_default_null_skcipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_sync_skcipher = type { i32 }

@crypto_default_null_skcipher_lock = common dso_local global i32 0, align 4
@crypto_default_null_skcipher = common dso_local global %struct.crypto_sync_skcipher* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"ecb(cipher_null)\00", align 1
@crypto_default_null_skcipher_refcnt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.crypto_sync_skcipher* @crypto_get_default_null_skcipher() #0 {
  %1 = alloca %struct.crypto_sync_skcipher*, align 8
  %2 = call i32 @mutex_lock(i32* @crypto_default_null_skcipher_lock)
  %3 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** @crypto_default_null_skcipher, align 8
  store %struct.crypto_sync_skcipher* %3, %struct.crypto_sync_skcipher** %1, align 8
  %4 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %1, align 8
  %5 = icmp ne %struct.crypto_sync_skcipher* %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %0
  %7 = call %struct.crypto_sync_skcipher* @crypto_alloc_sync_skcipher(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  store %struct.crypto_sync_skcipher* %7, %struct.crypto_sync_skcipher** %1, align 8
  %8 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %1, align 8
  %9 = call i64 @IS_ERR(%struct.crypto_sync_skcipher* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  br label %17

12:                                               ; preds = %6
  %13 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %1, align 8
  store %struct.crypto_sync_skcipher* %13, %struct.crypto_sync_skcipher** @crypto_default_null_skcipher, align 8
  br label %14

14:                                               ; preds = %12, %0
  %15 = load i32, i32* @crypto_default_null_skcipher_refcnt, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @crypto_default_null_skcipher_refcnt, align 4
  br label %17

17:                                               ; preds = %14, %11
  %18 = call i32 @mutex_unlock(i32* @crypto_default_null_skcipher_lock)
  %19 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %1, align 8
  ret %struct.crypto_sync_skcipher* %19
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.crypto_sync_skcipher* @crypto_alloc_sync_skcipher(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_sync_skcipher*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
