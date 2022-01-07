; ModuleID = '/home/carl/AnghaBench/linux/arch/c6x/platforms/extr_cache.c_cache_block_operation_nowait.c'
source_filename = "/home/carl/AnghaBench/linux/arch/c6x/platforms/extr_cache.c_cache_block_operation_nowait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cache_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32)* @cache_block_operation_nowait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_block_operation_nowait(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = ptrtoint i32* %12 to i32
  %14 = call i32 @L2_CACHE_ALIGN_CNT(i32 %13)
  %15 = load i32*, i32** %5, align 8
  %16 = ptrtoint i32* %15 to i32
  %17 = call i32 @L2_CACHE_ALIGN_LOW(i32 %16)
  %18 = sub i32 %14, %17
  %19 = lshr i32 %18, 2
  store i32 %19, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %49, %4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %57

23:                                               ; preds = %20
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @spin_lock_irqsave(i32* @cache_lock, i64 %24)
  %26 = load i32, i32* %7, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = ptrtoint i32* %27 to i32
  %29 = call i32 @L2_CACHE_ALIGN_LOW(i32 %28)
  %30 = call i32 @imcr_set(i32 %26, i32 %29)
  %31 = load i32, i32* %10, align 4
  %32 = icmp ugt i32 %31, 65535
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  store i32 65535, i32* %11, align 4
  br label %36

34:                                               ; preds = %23
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %34, %33
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %11, align 4
  %39 = and i32 %38, 65535
  %40 = call i32 @imcr_set(i32 %37, i32 %39)
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* @cache_lock, i64 %41)
  %43 = load i32, i32* %10, align 4
  %44 = icmp ugt i32 %43, 65535
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @cache_block_operation_wait(i32 %46)
  br label %48

48:                                               ; preds = %45, %36
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %10, align 4
  %52 = sub i32 %51, %50
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = zext i32 %53 to i64
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32* %56, i32** %5, align 8
  br label %20

57:                                               ; preds = %20
  ret void
}

declare dso_local i32 @L2_CACHE_ALIGN_CNT(i32) #1

declare dso_local i32 @L2_CACHE_ALIGN_LOW(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @imcr_set(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @cache_block_operation_wait(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
