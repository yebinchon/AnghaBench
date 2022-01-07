; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_cache.c_nl_cache_alloc_and_fill.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_cache.c_nl_cache_alloc_and_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_cache_ops = type { i32 }
%struct.nl_sock = type { i32 }
%struct.nl_cache = type { i32 }

@NLE_NOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nl_cache_alloc_and_fill(%struct.nl_cache_ops* %0, %struct.nl_sock* %1, %struct.nl_cache** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nl_cache_ops*, align 8
  %6 = alloca %struct.nl_sock*, align 8
  %7 = alloca %struct.nl_cache**, align 8
  %8 = alloca %struct.nl_cache*, align 8
  %9 = alloca i32, align 4
  store %struct.nl_cache_ops* %0, %struct.nl_cache_ops** %5, align 8
  store %struct.nl_sock* %1, %struct.nl_sock** %6, align 8
  store %struct.nl_cache** %2, %struct.nl_cache*** %7, align 8
  %10 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %5, align 8
  %11 = call %struct.nl_cache* @nl_cache_alloc(%struct.nl_cache_ops* %10)
  store %struct.nl_cache* %11, %struct.nl_cache** %8, align 8
  %12 = icmp ne %struct.nl_cache* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @NLE_NOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %31

16:                                               ; preds = %3
  %17 = load %struct.nl_sock*, %struct.nl_sock** %6, align 8
  %18 = icmp ne %struct.nl_sock* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load %struct.nl_sock*, %struct.nl_sock** %6, align 8
  %21 = load %struct.nl_cache*, %struct.nl_cache** %8, align 8
  %22 = call i32 @nl_cache_refill(%struct.nl_sock* %20, %struct.nl_cache* %21)
  store i32 %22, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.nl_cache*, %struct.nl_cache** %8, align 8
  %26 = call i32 @nl_cache_free(%struct.nl_cache* %25)
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %4, align 4
  br label %31

28:                                               ; preds = %19, %16
  %29 = load %struct.nl_cache*, %struct.nl_cache** %8, align 8
  %30 = load %struct.nl_cache**, %struct.nl_cache*** %7, align 8
  store %struct.nl_cache* %29, %struct.nl_cache** %30, align 8
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %28, %24, %13
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local %struct.nl_cache* @nl_cache_alloc(%struct.nl_cache_ops*) #1

declare dso_local i32 @nl_cache_refill(%struct.nl_sock*, %struct.nl_cache*) #1

declare dso_local i32 @nl_cache_free(%struct.nl_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
