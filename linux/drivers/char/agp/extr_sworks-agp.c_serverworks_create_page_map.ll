; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_sworks-agp.c_serverworks_create_page_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_sworks-agp.c_serverworks_create_page_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.serverworks_page_map = type { i64*, i64* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@agp_bridge = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serverworks_page_map*)* @serverworks_create_page_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serverworks_create_page_map(%struct.serverworks_page_map* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.serverworks_page_map*, align 8
  %4 = alloca i32, align 4
  store %struct.serverworks_page_map* %0, %struct.serverworks_page_map** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call i64 @__get_free_page(i32 %5)
  %7 = inttoptr i64 %6 to i64*
  %8 = load %struct.serverworks_page_map*, %struct.serverworks_page_map** %3, align 8
  %9 = getelementptr inbounds %struct.serverworks_page_map, %struct.serverworks_page_map* %8, i32 0, i32 0
  store i64* %7, i64** %9, align 8
  %10 = load %struct.serverworks_page_map*, %struct.serverworks_page_map** %3, align 8
  %11 = getelementptr inbounds %struct.serverworks_page_map, %struct.serverworks_page_map* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = icmp eq i64* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %50

17:                                               ; preds = %1
  %18 = load %struct.serverworks_page_map*, %struct.serverworks_page_map** %3, align 8
  %19 = getelementptr inbounds %struct.serverworks_page_map, %struct.serverworks_page_map* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = ptrtoint i64* %20 to i64
  %22 = call i32 @set_memory_uc(i64 %21, i32 1)
  %23 = load %struct.serverworks_page_map*, %struct.serverworks_page_map** %3, align 8
  %24 = getelementptr inbounds %struct.serverworks_page_map, %struct.serverworks_page_map* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load %struct.serverworks_page_map*, %struct.serverworks_page_map** %3, align 8
  %27 = getelementptr inbounds %struct.serverworks_page_map, %struct.serverworks_page_map* %26, i32 0, i32 1
  store i64* %25, i64** %27, align 8
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %46, %17
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = sext i32 %31 to i64
  %33 = udiv i64 %32, 8
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %28
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.serverworks_page_map*, %struct.serverworks_page_map** %3, align 8
  %40 = getelementptr inbounds %struct.serverworks_page_map, %struct.serverworks_page_map* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = call i32 @writel(i32 %38, i64* %44)
  br label %46

46:                                               ; preds = %35
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %28

49:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %14
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @set_memory_uc(i64, i32) #1

declare dso_local i32 @writel(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
