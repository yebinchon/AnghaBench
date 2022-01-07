; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-index.c_set_multiple_rates_item.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-index.c_set_multiple_rates_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { i32, i32, i32*, i32 }

@FLAG_DELETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.item*, i32, i32*)* @set_multiple_rates_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_multiple_rates_item(%struct.item* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.item*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.item* %0, %struct.item** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load %struct.item*, %struct.item** %5, align 8
  %14 = icmp ne %struct.item* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load %struct.item*, %struct.item** %5, align 8
  %17 = getelementptr inbounds %struct.item, %struct.item* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @FLAG_DELETED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15, %3
  store i32 0, i32* %4, align 4
  br label %94

23:                                               ; preds = %15
  %24 = load %struct.item*, %struct.item** %5, align 8
  %25 = getelementptr inbounds %struct.item, %struct.item* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.item*, %struct.item** %5, align 8
  %31 = getelementptr inbounds %struct.item, %struct.item* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %29, %32
  br i1 %33, label %34, label %66

34:                                               ; preds = %23
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.item*, %struct.item** %5, align 8
  %37 = getelementptr inbounds %struct.item, %struct.item* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = xor i32 %35, %38
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %43, %34
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = load %struct.item*, %struct.item** %5, align 8
  %45 = getelementptr inbounds %struct.item, %struct.item* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sub nsw i32 %48, 1
  %50 = load i32, i32* %9, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %9, align 4
  br label %40

52:                                               ; preds = %40
  %53 = load %struct.item*, %struct.item** %5, align 8
  %54 = getelementptr inbounds %struct.item, %struct.item* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.item*, %struct.item** %5, align 8
  %57 = getelementptr inbounds %struct.item, %struct.item* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32* @zzrealloc_ushort_mask(i32* %55, i32 %58, i32 %59, i32 4)
  %61 = load %struct.item*, %struct.item** %5, align 8
  %62 = getelementptr inbounds %struct.item, %struct.item* %61, i32 0, i32 2
  store i32* %60, i32** %62, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.item*, %struct.item** %5, align 8
  %65 = getelementptr inbounds %struct.item, %struct.item* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %52, %23
  store i32 0, i32* %10, align 4
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %71, %66
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %93

71:                                               ; preds = %68
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = sub nsw i32 0, %73
  %75 = and i32 %72, %74
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %11, align 4
  %77 = xor i32 %76, %75
  store i32 %77, i32* %11, align 4
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %10, align 4
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.item*, %struct.item** %5, align 8
  %85 = getelementptr inbounds %struct.item, %struct.item* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %12, align 4
  %89 = sub nsw i32 %88, 1
  %90 = and i32 %87, %89
  %91 = call i64 @popcount_short(i32 %90)
  %92 = getelementptr inbounds i32, i32* %86, i64 %91
  store i32 %83, i32* %92, align 4
  br label %68

93:                                               ; preds = %68
  store i32 1, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %22
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32* @zzrealloc_ushort_mask(i32*, i32, i32, i32) #1

declare dso_local i64 @popcount_short(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
