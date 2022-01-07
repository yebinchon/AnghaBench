; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ahash.c_crypto_hash_walk_done.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ahash.c_crypto_hash_walk_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_hash_walk = type { i32, i32, i32, i32, i32, i32, i32, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_hash_walk_done(%struct.crypto_hash_walk* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypto_hash_walk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.crypto_hash_walk* %0, %struct.crypto_hash_walk** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %4, align 8
  %9 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  %11 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %4, align 8
  %12 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %4, align 8
  %15 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = sub i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %4, align 8
  %19 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %18, i32 0, i32 7
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %68

22:                                               ; preds = %2
  %23 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %4, align 8
  %24 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %68

29:                                               ; preds = %22
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %68, label %32

32:                                               ; preds = %29
  %33 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %4, align 8
  %34 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = add i32 %36, 1
  %38 = call i32 @ALIGN(i32 %35, i32 %37)
  %39 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %4, align 8
  %40 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %4, align 8
  %42 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %41, i32 0, i32 7
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @PAGE_SIZE, align 4
  %45 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %4, align 8
  %46 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = sub i32 %44, %47
  %49 = call i32 @min(i64 %43, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %32
  %53 = load i32, i32* %7, align 4
  %54 = zext i32 %53 to i64
  %55 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %4, align 8
  %56 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %55, i32 0, i32 7
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %57, %54
  store i64 %58, i64* %56, align 8
  %59 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %4, align 8
  %60 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %4, align 8
  %63 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %3, align 4
  br label %123

67:                                               ; preds = %32
  br label %68

68:                                               ; preds = %67, %29, %22, %2
  %69 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %4, align 8
  %70 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %68
  %76 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %4, align 8
  %77 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @kunmap(i32 %78)
  br label %89

80:                                               ; preds = %68
  %81 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %4, align 8
  %82 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @kunmap_atomic(i32 %83)
  %85 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %4, align 8
  %86 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @crypto_yield(i32 %87)
  br label %89

89:                                               ; preds = %80, %75
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i32, i32* %5, align 4
  store i32 %93, i32* %3, align 4
  br label %123

94:                                               ; preds = %89
  %95 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %4, align 8
  %96 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %95, i32 0, i32 7
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %94
  %100 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %4, align 8
  %101 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %100, i32 0, i32 2
  store i32 0, i32* %101, align 8
  %102 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %4, align 8
  %103 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 8
  %106 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %4, align 8
  %107 = call i32 @hash_walk_next(%struct.crypto_hash_walk* %106)
  store i32 %107, i32* %3, align 4
  br label %123

108:                                              ; preds = %94
  %109 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %4, align 8
  %110 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %108
  store i32 0, i32* %3, align 4
  br label %123

114:                                              ; preds = %108
  %115 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %4, align 8
  %116 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @sg_next(i32 %117)
  %119 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %4, align 8
  %120 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %119, i32 0, i32 4
  store i32 %118, i32* %120, align 8
  %121 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %4, align 8
  %122 = call i32 @hash_walk_new_entry(%struct.crypto_hash_walk* %121)
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %114, %113, %99, %92, %52
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @kunmap(i32) #1

declare dso_local i32 @kunmap_atomic(i32) #1

declare dso_local i32 @crypto_yield(i32) #1

declare dso_local i32 @hash_walk_next(%struct.crypto_hash_walk*) #1

declare dso_local i32 @sg_next(i32) #1

declare dso_local i32 @hash_walk_new_entry(%struct.crypto_hash_walk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
