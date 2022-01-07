; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regcache-lzo.c_regcache_lzo_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regcache-lzo.c_regcache_lzo_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32, %struct.regcache_lzo_ctx** }
%struct.regcache_lzo_ctx = type { i8*, i64, i8*, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap*, i32, i32)* @regcache_lzo_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regcache_lzo_write(%struct.regmap* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.regcache_lzo_ctx*, align 8
  %9 = alloca %struct.regcache_lzo_ctx**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store %struct.regmap* %0, %struct.regmap** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.regmap*, %struct.regmap** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @regcache_lzo_get_blkindex(%struct.regmap* %15, i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load %struct.regmap*, %struct.regmap** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @regcache_lzo_get_blkpos(%struct.regmap* %18, i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load %struct.regmap*, %struct.regmap** %5, align 8
  %22 = getelementptr inbounds %struct.regmap, %struct.regmap* %21, i32 0, i32 1
  %23 = load %struct.regcache_lzo_ctx**, %struct.regcache_lzo_ctx*** %22, align 8
  store %struct.regcache_lzo_ctx** %23, %struct.regcache_lzo_ctx*** %9, align 8
  %24 = load %struct.regcache_lzo_ctx**, %struct.regcache_lzo_ctx*** %9, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %24, i64 %26
  %28 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %27, align 8
  store %struct.regcache_lzo_ctx* %28, %struct.regcache_lzo_ctx** %8, align 8
  %29 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %8, align 8
  %30 = getelementptr inbounds %struct.regcache_lzo_ctx, %struct.regcache_lzo_ctx* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %14, align 8
  %32 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %8, align 8
  %33 = getelementptr inbounds %struct.regcache_lzo_ctx, %struct.regcache_lzo_ctx* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %13, align 8
  %35 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %8, align 8
  %36 = getelementptr inbounds %struct.regcache_lzo_ctx, %struct.regcache_lzo_ctx* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %8, align 8
  %39 = getelementptr inbounds %struct.regcache_lzo_ctx, %struct.regcache_lzo_ctx* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %8, align 8
  %41 = getelementptr inbounds %struct.regcache_lzo_ctx, %struct.regcache_lzo_ctx* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %8, align 8
  %44 = getelementptr inbounds %struct.regcache_lzo_ctx, %struct.regcache_lzo_ctx* %43, i32 0, i32 3
  store i64 %42, i64* %44, align 8
  %45 = load %struct.regmap*, %struct.regmap** %5, align 8
  %46 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %8, align 8
  %47 = call i32 @regcache_lzo_decompress_cache_block(%struct.regmap* %45, %struct.regcache_lzo_ctx* %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %3
  %51 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %8, align 8
  %52 = getelementptr inbounds %struct.regcache_lzo_ctx, %struct.regcache_lzo_ctx* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @kfree(i8* %53)
  br label %110

55:                                               ; preds = %3
  %56 = load %struct.regmap*, %struct.regmap** %5, align 8
  %57 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %8, align 8
  %58 = getelementptr inbounds %struct.regcache_lzo_ctx, %struct.regcache_lzo_ctx* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i64 @regcache_set_val(%struct.regmap* %56, i8* %59, i32 %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %55
  %65 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %8, align 8
  %66 = getelementptr inbounds %struct.regcache_lzo_ctx, %struct.regcache_lzo_ctx* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @kfree(i8* %67)
  br label %110

69:                                               ; preds = %55
  %70 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %8, align 8
  %71 = getelementptr inbounds %struct.regcache_lzo_ctx, %struct.regcache_lzo_ctx* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %8, align 8
  %74 = getelementptr inbounds %struct.regcache_lzo_ctx, %struct.regcache_lzo_ctx* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  %75 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %8, align 8
  %76 = getelementptr inbounds %struct.regcache_lzo_ctx, %struct.regcache_lzo_ctx* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %8, align 8
  %79 = getelementptr inbounds %struct.regcache_lzo_ctx, %struct.regcache_lzo_ctx* %78, i32 0, i32 3
  store i64 %77, i64* %79, align 8
  %80 = load %struct.regmap*, %struct.regmap** %5, align 8
  %81 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %8, align 8
  %82 = call i32 @regcache_lzo_compress_cache_block(%struct.regmap* %80, %struct.regcache_lzo_ctx* %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %69
  %86 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %8, align 8
  %87 = getelementptr inbounds %struct.regcache_lzo_ctx, %struct.regcache_lzo_ctx* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @kfree(i8* %88)
  %90 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %8, align 8
  %91 = getelementptr inbounds %struct.regcache_lzo_ctx, %struct.regcache_lzo_ctx* %90, i32 0, i32 2
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @kfree(i8* %92)
  br label %110

94:                                               ; preds = %69
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.regmap*, %struct.regmap** %5, align 8
  %97 = getelementptr inbounds %struct.regmap, %struct.regmap* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = udiv i32 %95, %98
  %100 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %8, align 8
  %101 = getelementptr inbounds %struct.regcache_lzo_ctx, %struct.regcache_lzo_ctx* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @set_bit(i32 %99, i32 %102)
  %104 = load i8*, i8** %14, align 8
  %105 = call i32 @kfree(i8* %104)
  %106 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %8, align 8
  %107 = getelementptr inbounds %struct.regcache_lzo_ctx, %struct.regcache_lzo_ctx* %106, i32 0, i32 2
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @kfree(i8* %108)
  store i32 0, i32* %4, align 4
  br label %118

110:                                              ; preds = %85, %64, %50
  %111 = load i8*, i8** %14, align 8
  %112 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %8, align 8
  %113 = getelementptr inbounds %struct.regcache_lzo_ctx, %struct.regcache_lzo_ctx* %112, i32 0, i32 0
  store i8* %111, i8** %113, align 8
  %114 = load i64, i64* %13, align 8
  %115 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %8, align 8
  %116 = getelementptr inbounds %struct.regcache_lzo_ctx, %struct.regcache_lzo_ctx* %115, i32 0, i32 1
  store i64 %114, i64* %116, align 8
  %117 = load i32, i32* %10, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %110, %94
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @regcache_lzo_get_blkindex(%struct.regmap*, i32) #1

declare dso_local i32 @regcache_lzo_get_blkpos(%struct.regmap*, i32) #1

declare dso_local i32 @regcache_lzo_decompress_cache_block(%struct.regmap*, %struct.regcache_lzo_ctx*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i64 @regcache_set_val(%struct.regmap*, i8*, i32, i32) #1

declare dso_local i32 @regcache_lzo_compress_cache_block(%struct.regmap*, %struct.regcache_lzo_ctx*) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
