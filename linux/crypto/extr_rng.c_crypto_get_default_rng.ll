; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_rng.c_crypto_get_default_rng.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_rng.c_crypto_get_default_rng.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_rng = type { i32 }

@crypto_default_rng_lock = common dso_local global i32 0, align 4
@crypto_default_rng = common dso_local global %struct.crypto_rng* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"stdrng\00", align 1
@crypto_default_rng_refcnt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_get_default_rng() #0 {
  %1 = alloca %struct.crypto_rng*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 @mutex_lock(i32* @crypto_default_rng_lock)
  %4 = load %struct.crypto_rng*, %struct.crypto_rng** @crypto_default_rng, align 8
  %5 = icmp ne %struct.crypto_rng* %4, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %0
  %7 = call %struct.crypto_rng* @crypto_alloc_rng(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  store %struct.crypto_rng* %7, %struct.crypto_rng** %1, align 8
  %8 = load %struct.crypto_rng*, %struct.crypto_rng** %1, align 8
  %9 = call i32 @PTR_ERR(%struct.crypto_rng* %8)
  store i32 %9, i32* %2, align 4
  %10 = load %struct.crypto_rng*, %struct.crypto_rng** %1, align 8
  %11 = call i64 @IS_ERR(%struct.crypto_rng* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  br label %29

14:                                               ; preds = %6
  %15 = load %struct.crypto_rng*, %struct.crypto_rng** %1, align 8
  %16 = load %struct.crypto_rng*, %struct.crypto_rng** %1, align 8
  %17 = call i32 @crypto_rng_seedsize(%struct.crypto_rng* %16)
  %18 = call i32 @crypto_rng_reset(%struct.crypto_rng* %15, i32* null, i32 %17)
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load %struct.crypto_rng*, %struct.crypto_rng** %1, align 8
  %23 = call i32 @crypto_free_rng(%struct.crypto_rng* %22)
  br label %29

24:                                               ; preds = %14
  %25 = load %struct.crypto_rng*, %struct.crypto_rng** %1, align 8
  store %struct.crypto_rng* %25, %struct.crypto_rng** @crypto_default_rng, align 8
  br label %26

26:                                               ; preds = %24, %0
  %27 = load i32, i32* @crypto_default_rng_refcnt, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @crypto_default_rng_refcnt, align 4
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %26, %21, %13
  %30 = call i32 @mutex_unlock(i32* @crypto_default_rng_lock)
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.crypto_rng* @crypto_alloc_rng(i8*, i32, i32) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_rng*) #1

declare dso_local i64 @IS_ERR(%struct.crypto_rng*) #1

declare dso_local i32 @crypto_rng_reset(%struct.crypto_rng*, i32*, i32) #1

declare dso_local i32 @crypto_rng_seedsize(%struct.crypto_rng*) #1

declare dso_local i32 @crypto_free_rng(%struct.crypto_rng*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
