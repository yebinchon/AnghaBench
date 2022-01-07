; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-octeon.c_co_cache_error_call_notifiers.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-octeon.c_co_cache_error_call_notifiers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@co_cache_error_chain = common dso_local global i32 0, align 4
@NOTIFY_STOP_MASK = common dso_local global i32 0, align 4
@NOTIFY_OK = common dso_local global i32 0, align 4
@cache_err_dcache = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"Core%lu: Cache error exception:\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"cp0_errorepc == %lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"CacheErr (Icache) == %llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"CacheErr (Dcache) == %llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @co_cache_error_call_notifiers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @co_cache_error_call_notifiers(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = call i32 @raw_notifier_call_chain(i32* @co_cache_error_chain, i64 %7, i32* null)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @NOTIFY_STOP_MASK, align 4
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  %13 = load i32, i32* @NOTIFY_OK, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %52

15:                                               ; preds = %1
  %16 = call i64 (...) @cvmx_get_core_num()
  store i64 %16, i64* %5, align 8
  %17 = call i32 (...) @read_octeon_c0_icacheerr()
  store i32 %17, i32* %6, align 4
  %18 = load i64, i64* %2, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load i32*, i32** @cache_err_dcache, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %4, align 4
  %25 = load i32*, i32** @cache_err_dcache, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32 0, i32* %27, align 4
  br label %30

28:                                               ; preds = %15
  %29 = call i32 (...) @read_octeon_c0_dcacheerr()
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %28, %20
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = call i64 (...) @read_c0_errorepc()
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, 1
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %40)
  %42 = call i32 @write_octeon_c0_icacheerr(i32 0)
  br label %43

43:                                               ; preds = %38, %30
  %44 = load i32, i32* %4, align 4
  %45 = and i32 %44, 1
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %49)
  br label %51

51:                                               ; preds = %47, %43
  br label %52

52:                                               ; preds = %51, %1
  ret void
}

declare dso_local i32 @raw_notifier_call_chain(i32*, i64, i32*) #1

declare dso_local i64 @cvmx_get_core_num(...) #1

declare dso_local i32 @read_octeon_c0_icacheerr(...) #1

declare dso_local i32 @read_octeon_c0_dcacheerr(...) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i64 @read_c0_errorepc(...) #1

declare dso_local i32 @write_octeon_c0_icacheerr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
