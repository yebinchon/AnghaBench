; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_cacheinfo.c___init_cache_level.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_cacheinfo.c___init_cache_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_cacheinfo = type { i32, i32 }

@MAX_CACHE_LEVEL = common dso_local global i32 0, align 4
@CACHE_TYPE_NOCACHE = common dso_local global i32 0, align 4
@CACHE_TYPE_SEPARATE = common dso_local global i32 0, align 4
@acpi_disabled = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @__init_cache_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__init_cache_level(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cpu_cacheinfo*, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32 %8)
  store %struct.cpu_cacheinfo* %9, %struct.cpu_cacheinfo** %7, align 8
  store i32 1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %31, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @MAX_CACHE_LEVEL, align 4
  %13 = icmp ule i32 %11, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @get_cache_type(i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @CACHE_TYPE_NOCACHE, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* %4, align 4
  %22 = add i32 %21, -1
  store i32 %22, i32* %4, align 4
  br label %34

23:                                               ; preds = %14
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @CACHE_TYPE_SEPARATE, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 2, i32 1
  %29 = load i32, i32* %5, align 4
  %30 = add i32 %29, %28
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %4, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %10

34:                                               ; preds = %20, %10
  %35 = load i64, i64* @acpi_disabled, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @of_find_last_cache_level(i32 %38)
  store i32 %39, i32* %6, align 4
  br label %43

40:                                               ; preds = %34
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @acpi_find_last_cache_level(i32 %41)
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %4, align 4
  %50 = sub i32 %48, %49
  %51 = load i32, i32* %5, align 4
  %52 = add i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %47, %43
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %7, align 8
  %57 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %7, align 8
  %60 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  ret i32 0
}

declare dso_local %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32) #1

declare dso_local i32 @get_cache_type(i32) #1

declare dso_local i32 @of_find_last_cache_level(i32) #1

declare dso_local i32 @acpi_find_last_cache_level(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
