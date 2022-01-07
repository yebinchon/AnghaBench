; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regcache-lzo.c_regcache_lzo_decompress_cache_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regcache-lzo.c_regcache_lzo_decompress_cache_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }
%struct.regcache_lzo_ctx = type { i64, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap*, %struct.regcache_lzo_ctx*)* @regcache_lzo_decompress_cache_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regcache_lzo_decompress_cache_block(%struct.regmap* %0, %struct.regcache_lzo_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca %struct.regcache_lzo_ctx*, align 8
  %6 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %4, align 8
  store %struct.regcache_lzo_ctx* %1, %struct.regcache_lzo_ctx** %5, align 8
  %7 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %5, align 8
  %8 = getelementptr inbounds %struct.regcache_lzo_ctx, %struct.regcache_lzo_ctx* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %5, align 8
  %11 = getelementptr inbounds %struct.regcache_lzo_ctx, %struct.regcache_lzo_ctx* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  %12 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %5, align 8
  %13 = getelementptr inbounds %struct.regcache_lzo_ctx, %struct.regcache_lzo_ctx* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32 @kmalloc(i64 %14, i32 %15)
  %17 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %5, align 8
  %18 = getelementptr inbounds %struct.regcache_lzo_ctx, %struct.regcache_lzo_ctx* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %5, align 8
  %20 = getelementptr inbounds %struct.regcache_lzo_ctx, %struct.regcache_lzo_ctx* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %2
  %24 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %5, align 8
  %25 = getelementptr inbounds %struct.regcache_lzo_ctx, %struct.regcache_lzo_ctx* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %36

28:                                               ; preds = %2
  %29 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %5, align 8
  %30 = call i32 @regcache_lzo_decompress(%struct.regcache_lzo_ctx* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %36

35:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %33, %23
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @kmalloc(i64, i32) #1

declare dso_local i32 @regcache_lzo_decompress(%struct.regcache_lzo_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
