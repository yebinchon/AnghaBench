; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_blkcipher.c_blkcipher_walk_done.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_blkcipher.c_blkcipher_walk_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i64, i32 }
%struct.blkcipher_walk = type { i32, i64, i32, i64, i64, i64, i32, i32, i32 }

@BLKCIPHER_WALK_SLOW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blkcipher_walk_done(%struct.blkcipher_desc* %0, %struct.blkcipher_walk* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.blkcipher_desc*, align 8
  %6 = alloca %struct.blkcipher_walk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %5, align 8
  store %struct.blkcipher_walk* %1, %struct.blkcipher_walk** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %78

16:                                               ; preds = %3
  %17 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %18 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sub nsw i32 %19, %20
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = zext i32 %22 to i64
  %24 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %25 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %26, %23
  store i64 %27, i64* %25, align 8
  %28 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %29 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %9, align 4
  %33 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %34 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @BLKCIPHER_WALK_SLOW, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @likely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %16
  %44 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @blkcipher_done_fast(%struct.blkcipher_walk* %44, i32 %45)
  br label %58

47:                                               ; preds = %16
  %48 = load i32, i32* %7, align 4
  %49 = call i64 @WARN_ON(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %7, align 4
  br label %78

54:                                               ; preds = %47
  %55 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @blkcipher_done_slow(%struct.blkcipher_walk* %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %43
  %59 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %60 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %59, i32 0, i32 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @scatterwalk_done(i32* %60, i32 0, i32 %61)
  %63 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %64 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %63, i32 0, i32 7
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @scatterwalk_done(i32* %64, i32 1, i32 %65)
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %58
  %70 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %71 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @crypto_yield(i32 %72)
  %74 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %75 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %76 = call i32 @blkcipher_walk_next(%struct.blkcipher_desc* %74, %struct.blkcipher_walk* %75)
  store i32 %76, i32* %4, align 4
  br label %124

77:                                               ; preds = %58
  store i32 0, i32* %7, align 4
  br label %78

78:                                               ; preds = %77, %51, %15
  %79 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %80 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %79, i32 0, i32 0
  store i32 0, i32* %80, align 8
  %81 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %82 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %85 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %83, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %78
  %89 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %90 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %93 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %96 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @memcpy(i64 %91, i64 %94, i32 %97)
  br label %99

99:                                               ; preds = %88, %78
  %100 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %101 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %104 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %103, i32 0, i32 5
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %102, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %99
  %108 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %109 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @kfree(i64 %110)
  br label %112

112:                                              ; preds = %107, %99
  %113 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %114 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %113, i32 0, i32 5
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %119 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %118, i32 0, i32 5
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @free_page(i64 %120)
  br label %122

122:                                              ; preds = %117, %112
  %123 = load i32, i32* %7, align 4
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %122, %69
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @blkcipher_done_fast(%struct.blkcipher_walk*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @blkcipher_done_slow(%struct.blkcipher_walk*, i32) #1

declare dso_local i32 @scatterwalk_done(i32*, i32, i32) #1

declare dso_local i32 @crypto_yield(i32) #1

declare dso_local i32 @blkcipher_walk_next(%struct.blkcipher_desc*, %struct.blkcipher_walk*) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
