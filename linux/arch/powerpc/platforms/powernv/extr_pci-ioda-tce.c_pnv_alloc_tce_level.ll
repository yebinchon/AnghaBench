; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda-tce.c_pnv_alloc_tce_level.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda-tce.c_pnv_alloc_tce_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"Failed to allocate a TCE memory, level shift=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32)* @pnv_alloc_tce_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pnv_alloc_tce_level(i32 %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.page* null, %struct.page** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = load i32, i32* @__GFP_NOWARN, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* @PAGE_SHIFT, align 8
  %15 = sub nsw i64 %13, %14
  %16 = call %struct.page* @alloc_pages_node(i32 %8, i32 %11, i64 %15)
  store %struct.page* %16, %struct.page** %6, align 8
  %17 = load %struct.page*, %struct.page** %6, align 8
  %18 = icmp ne %struct.page* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32* null, i32** %3, align 8
  br label %31

22:                                               ; preds = %2
  %23 = load %struct.page*, %struct.page** %6, align 8
  %24 = call i32* @page_address(%struct.page* %23)
  store i32* %24, i32** %7, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = shl i64 1, %27
  %29 = call i32 @memset(i32* %25, i32 0, i64 %28)
  %30 = load i32*, i32** %7, align 8
  store i32* %30, i32** %3, align 8
  br label %31

31:                                               ; preds = %22, %19
  %32 = load i32*, i32** %3, align 8
  ret i32* %32
}

declare dso_local %struct.page* @alloc_pages_node(i32, i32, i64) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32* @page_address(%struct.page*) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
