; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_uncached.c_uncached_free_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_uncached.c_uncached_free_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.gen_pool* }
%struct.gen_pool = type { i32 }

@__IA64_UNCACHED_OFFSET = common dso_local global i64 0, align 8
@uncached_pools = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"uncached_free_page invalid address %lx\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uncached_free_page(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.gen_pool*, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @__IA64_UNCACHED_OFFSET, align 8
  %9 = sub i64 %7, %8
  %10 = call i32 @paddr_to_nid(i64 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @uncached_pools, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.gen_pool*, %struct.gen_pool** %15, align 8
  store %struct.gen_pool* %16, %struct.gen_pool** %6, align 8
  %17 = load %struct.gen_pool*, %struct.gen_pool** %6, align 8
  %18 = icmp eq %struct.gen_pool* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %38

23:                                               ; preds = %2
  %24 = load i64, i64* %3, align 8
  %25 = and i64 %24, -1152921504606846976
  %26 = load i64, i64* @__IA64_UNCACHED_OFFSET, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i64, i64* %3, align 8
  %30 = call i32 @panic(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %29)
  br label %31

31:                                               ; preds = %28, %23
  %32 = load %struct.gen_pool*, %struct.gen_pool** %6, align 8
  %33 = load i64, i64* %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = mul nsw i32 %34, %35
  %37 = call i32 @gen_pool_free(%struct.gen_pool* %32, i64 %33, i32 %36)
  br label %38

38:                                               ; preds = %31, %22
  ret void
}

declare dso_local i32 @paddr_to_nid(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @panic(i8*, i64) #1

declare dso_local i32 @gen_pool_free(%struct.gen_pool*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
