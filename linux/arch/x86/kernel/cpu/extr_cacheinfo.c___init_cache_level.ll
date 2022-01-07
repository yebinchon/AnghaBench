; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_cacheinfo.c___init_cache_level.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_cacheinfo.c___init_cache_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_cacheinfo = type { i32, i64 }

@num_cache_leaves = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @__init_cache_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__init_cache_level(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpu_cacheinfo*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32 %5)
  store %struct.cpu_cacheinfo* %6, %struct.cpu_cacheinfo** %4, align 8
  %7 = load i64, i64* @num_cache_leaves, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOENT, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %24

12:                                               ; preds = %1
  %13 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %4, align 8
  %14 = icmp ne %struct.cpu_cacheinfo* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %24

18:                                               ; preds = %12
  %19 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %4, align 8
  %20 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %19, i32 0, i32 0
  store i32 3, i32* %20, align 8
  %21 = load i64, i64* @num_cache_leaves, align 8
  %22 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %4, align 8
  %23 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %18, %15, %9
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
