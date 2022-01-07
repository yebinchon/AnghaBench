; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_uninorth-agp.c_uninorth_free_gatt_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_uninorth-agp.c_uninorth_free_gatt_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.agp_bridge_data = type { i64, i32, i8* }
%struct.page = type { i32 }
%struct.TYPE_4__ = type { i32 }

@uninorth_priv = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.agp_bridge_data*)* @uninorth_free_gatt_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uninorth_free_gatt_table(%struct.agp_bridge_data* %0) #0 {
  %2 = alloca %struct.agp_bridge_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.page*, align 8
  store %struct.agp_bridge_data* %0, %struct.agp_bridge_data** %2, align 8
  %8 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %2, align 8
  %9 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %8, i32 0, i32 2
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call %struct.TYPE_4__* @A_SIZE_32(i8* %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %3, align 4
  %15 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %2, align 8
  %16 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @vunmap(i32 %17)
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uninorth_priv, i32 0, i32 0), align 4
  %20 = call i32 @kfree(i32 %19)
  %21 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %2, align 8
  %22 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %4, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = load i32, i32* %3, align 4
  %28 = shl i32 1, %27
  %29 = mul nsw i32 %26, %28
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %25, i64 %31
  store i8* %32, i8** %5, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = call %struct.page* @virt_to_page(i8* %33)
  store %struct.page* %34, %struct.page** %7, align 8
  br label %35

35:                                               ; preds = %43, %1
  %36 = load %struct.page*, %struct.page** %7, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = call %struct.page* @virt_to_page(i8* %37)
  %39 = icmp ule %struct.page* %36, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.page*, %struct.page** %7, align 8
  %42 = call i32 @ClearPageReserved(%struct.page* %41)
  br label %43

43:                                               ; preds = %40
  %44 = load %struct.page*, %struct.page** %7, align 8
  %45 = getelementptr inbounds %struct.page, %struct.page* %44, i32 1
  store %struct.page* %45, %struct.page** %7, align 8
  br label %35

46:                                               ; preds = %35
  %47 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %2, align 8
  %48 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @free_pages(i64 %49, i32 %50)
  ret i32 0
}

declare dso_local %struct.TYPE_4__* @A_SIZE_32(i8*) #1

declare dso_local i32 @vunmap(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local %struct.page* @virt_to_page(i8*) #1

declare dso_local i32 @ClearPageReserved(%struct.page*) #1

declare dso_local i32 @free_pages(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
