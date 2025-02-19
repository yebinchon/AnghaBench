; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_jitterentropy-kcapi.c_jent_kcapi_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_jitterentropy-kcapi.c_jent_kcapi_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.jitterentropy = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_tfm*)* @jent_kcapi_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jent_kcapi_cleanup(%struct.crypto_tfm* %0) #0 {
  %2 = alloca %struct.crypto_tfm*, align 8
  %3 = alloca %struct.jitterentropy*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %2, align 8
  %4 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %5 = call %struct.jitterentropy* @crypto_tfm_ctx(%struct.crypto_tfm* %4)
  store %struct.jitterentropy* %5, %struct.jitterentropy** %3, align 8
  %6 = load %struct.jitterentropy*, %struct.jitterentropy** %3, align 8
  %7 = getelementptr inbounds %struct.jitterentropy, %struct.jitterentropy* %6, i32 0, i32 0
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.jitterentropy*, %struct.jitterentropy** %3, align 8
  %10 = getelementptr inbounds %struct.jitterentropy, %struct.jitterentropy* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.jitterentropy*, %struct.jitterentropy** %3, align 8
  %15 = getelementptr inbounds %struct.jitterentropy, %struct.jitterentropy* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @jent_entropy_collector_free(i32* %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.jitterentropy*, %struct.jitterentropy** %3, align 8
  %20 = getelementptr inbounds %struct.jitterentropy, %struct.jitterentropy* %19, i32 0, i32 1
  store i32* null, i32** %20, align 8
  %21 = load %struct.jitterentropy*, %struct.jitterentropy** %3, align 8
  %22 = getelementptr inbounds %struct.jitterentropy, %struct.jitterentropy* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock(i32* %22)
  ret void
}

declare dso_local %struct.jitterentropy* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @jent_entropy_collector_free(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
