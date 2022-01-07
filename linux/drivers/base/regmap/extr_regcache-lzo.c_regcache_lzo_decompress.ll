; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regcache-lzo.c_regcache_lzo_decompress.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regcache-lzo.c_regcache_lzo_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regcache_lzo_ctx = type { i64, i32, i32, i32 }

@LZO_E_OK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regcache_lzo_ctx*)* @regcache_lzo_decompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regcache_lzo_decompress(%struct.regcache_lzo_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regcache_lzo_ctx*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.regcache_lzo_ctx* %0, %struct.regcache_lzo_ctx** %3, align 8
  %6 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.regcache_lzo_ctx, %struct.regcache_lzo_ctx* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %4, align 8
  %9 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.regcache_lzo_ctx, %struct.regcache_lzo_ctx* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.regcache_lzo_ctx, %struct.regcache_lzo_ctx* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.regcache_lzo_ctx, %struct.regcache_lzo_ctx* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @lzo1x_decompress_safe(i32 %11, i32 %14, i32 %17, i64* %4)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @LZO_E_OK, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %1
  %23 = load i64, i64* %4, align 8
  %24 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %3, align 8
  %25 = getelementptr inbounds %struct.regcache_lzo_ctx, %struct.regcache_lzo_ctx* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22, %1
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %32

31:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %28
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @lzo1x_decompress_safe(i32, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
