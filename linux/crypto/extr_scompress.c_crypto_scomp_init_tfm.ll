; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_scompress.c_crypto_scomp_init_tfm.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_scompress.c_crypto_scomp_init_tfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }

@scomp_lock = common dso_local global i32 0, align 4
@scomp_scratch_users = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*)* @crypto_scomp_init_tfm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_scomp_init_tfm(%struct.crypto_tfm* %0) #0 {
  %2 = alloca %struct.crypto_tfm*, align 8
  %3 = alloca i32, align 4
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = call i32 @mutex_lock(i32* @scomp_lock)
  %5 = load i32, i32* @scomp_scratch_users, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @scomp_scratch_users, align 4
  %7 = icmp ne i32 %5, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i32 (...) @crypto_scomp_alloc_scratches()
  store i32 %9, i32* %3, align 4
  br label %10

10:                                               ; preds = %8, %1
  %11 = call i32 @mutex_unlock(i32* @scomp_lock)
  %12 = load i32, i32* %3, align 4
  ret i32 %12
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @crypto_scomp_alloc_scratches(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
