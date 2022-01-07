; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ahash.c_hash_walk_next.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ahash.c_hash_walk_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_hash_walk = type { i32, i32, i32, i32, i32, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_hash_walk*)* @hash_walk_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_walk_next(%struct.crypto_hash_walk* %0) #0 {
  %2 = alloca %struct.crypto_hash_walk*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.crypto_hash_walk* %0, %struct.crypto_hash_walk** %2, align 8
  %7 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %2, align 8
  %8 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %2, align 8
  %11 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %2, align 8
  %14 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* @PAGE_SIZE, align 8
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* %4, align 4
  %19 = sub i32 %17, %18
  %20 = call i32 @min(i32 %15, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %2, align 8
  %22 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %1
  %28 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %2, align 8
  %29 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @kmap(i32 %30)
  %32 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %2, align 8
  %33 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  br label %41

34:                                               ; preds = %1
  %35 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %2, align 8
  %36 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @kmap_atomic(i32 %37)
  %39 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %2, align 8
  %40 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %34, %27
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %2, align 8
  %44 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = add i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %3, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %41
  %52 = load i32, i32* %3, align 4
  %53 = add i32 %52, 1
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %3, align 4
  %56 = and i32 %54, %55
  %57 = sub i32 %53, %56
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ugt i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %51
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %61, %51
  br label %64

64:                                               ; preds = %63, %41
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %2, align 8
  %67 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = sub i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @kmap(i32) #1

declare dso_local i32 @kmap_atomic(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
