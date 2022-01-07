; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regcache-lzo.c_regcache_lzo_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regcache-lzo.c_regcache_lzo_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { %struct.regcache_lzo_ctx** }
%struct.regcache_lzo_ctx = type { i64, i64, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap*, i32, i32*)* @regcache_lzo_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regcache_lzo_read(%struct.regmap* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.regcache_lzo_ctx*, align 8
  %8 = alloca %struct.regcache_lzo_ctx**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store %struct.regmap* %0, %struct.regmap** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %14 = load %struct.regmap*, %struct.regmap** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @regcache_lzo_get_blkindex(%struct.regmap* %14, i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load %struct.regmap*, %struct.regmap** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @regcache_lzo_get_blkpos(%struct.regmap* %17, i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load %struct.regmap*, %struct.regmap** %4, align 8
  %21 = getelementptr inbounds %struct.regmap, %struct.regmap* %20, i32 0, i32 0
  %22 = load %struct.regcache_lzo_ctx**, %struct.regcache_lzo_ctx*** %21, align 8
  store %struct.regcache_lzo_ctx** %22, %struct.regcache_lzo_ctx*** %8, align 8
  %23 = load %struct.regcache_lzo_ctx**, %struct.regcache_lzo_ctx*** %8, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %23, i64 %25
  %27 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %26, align 8
  store %struct.regcache_lzo_ctx* %27, %struct.regcache_lzo_ctx** %7, align 8
  %28 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %7, align 8
  %29 = getelementptr inbounds %struct.regcache_lzo_ctx, %struct.regcache_lzo_ctx* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %13, align 8
  %31 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %7, align 8
  %32 = getelementptr inbounds %struct.regcache_lzo_ctx, %struct.regcache_lzo_ctx* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %12, align 8
  %34 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %7, align 8
  %35 = getelementptr inbounds %struct.regcache_lzo_ctx, %struct.regcache_lzo_ctx* %34, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %7, align 8
  %38 = getelementptr inbounds %struct.regcache_lzo_ctx, %struct.regcache_lzo_ctx* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  %39 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %7, align 8
  %40 = getelementptr inbounds %struct.regcache_lzo_ctx, %struct.regcache_lzo_ctx* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %7, align 8
  %43 = getelementptr inbounds %struct.regcache_lzo_ctx, %struct.regcache_lzo_ctx* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load %struct.regmap*, %struct.regmap** %4, align 8
  %45 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %7, align 8
  %46 = call i32 @regcache_lzo_decompress_cache_block(%struct.regmap* %44, %struct.regcache_lzo_ctx* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %3
  %50 = load %struct.regmap*, %struct.regmap** %4, align 8
  %51 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %7, align 8
  %52 = getelementptr inbounds %struct.regcache_lzo_ctx, %struct.regcache_lzo_ctx* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @regcache_get_val(%struct.regmap* %50, i8* %53, i32 %54)
  %56 = load i32*, i32** %6, align 8
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %49, %3
  %58 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %7, align 8
  %59 = getelementptr inbounds %struct.regcache_lzo_ctx, %struct.regcache_lzo_ctx* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @kfree(i8* %60)
  %62 = load i8*, i8** %13, align 8
  %63 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %7, align 8
  %64 = getelementptr inbounds %struct.regcache_lzo_ctx, %struct.regcache_lzo_ctx* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  %65 = load i64, i64* %12, align 8
  %66 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %7, align 8
  %67 = getelementptr inbounds %struct.regcache_lzo_ctx, %struct.regcache_lzo_ctx* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load i32, i32* %9, align 4
  ret i32 %68
}

declare dso_local i32 @regcache_lzo_get_blkindex(%struct.regmap*, i32) #1

declare dso_local i32 @regcache_lzo_get_blkpos(%struct.regmap*, i32) #1

declare dso_local i32 @regcache_lzo_decompress_cache_block(%struct.regmap*, %struct.regcache_lzo_ctx*) #1

declare dso_local i32 @regcache_get_val(%struct.regmap*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
