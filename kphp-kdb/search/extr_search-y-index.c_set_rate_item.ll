; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-index.c_set_rate_item.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-index.c_set_rate_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { i32, i32, i32*, i32 }

@FLAG_DELETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.item*, i32, i32)* @set_rate_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_rate_item(%struct.item* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.item*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.item* %0, %struct.item** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.item*, %struct.item** %5, align 8
  %9 = icmp ne %struct.item* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load %struct.item*, %struct.item** %5, align 8
  %12 = getelementptr inbounds %struct.item, %struct.item* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @FLAG_DELETED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10, %3
  store i32 0, i32* %4, align 4
  br label %63

18:                                               ; preds = %10
  %19 = load %struct.item*, %struct.item** %5, align 8
  %20 = getelementptr inbounds %struct.item, %struct.item* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = shl i32 1, %22
  %24 = and i32 %21, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %52

26:                                               ; preds = %18
  %27 = load %struct.item*, %struct.item** %5, align 8
  %28 = getelementptr inbounds %struct.item, %struct.item* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.item*, %struct.item** %5, align 8
  %31 = getelementptr inbounds %struct.item, %struct.item* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.item*, %struct.item** %5, align 8
  %34 = getelementptr inbounds %struct.item, %struct.item* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = shl i32 1, %36
  %38 = or i32 %35, %37
  %39 = call i32* @zzrealloc_ushort_mask(i32* %29, i32 %32, i32 %38, i32 4)
  %40 = load %struct.item*, %struct.item** %5, align 8
  %41 = getelementptr inbounds %struct.item, %struct.item* %40, i32 0, i32 2
  store i32* %39, i32** %41, align 8
  %42 = load i32, i32* %6, align 4
  %43 = shl i32 1, %42
  %44 = load %struct.item*, %struct.item** %5, align 8
  %45 = getelementptr inbounds %struct.item, %struct.item* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.item*, %struct.item** %5, align 8
  %49 = getelementptr inbounds %struct.item, %struct.item* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %26, %18
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.item*, %struct.item** %5, align 8
  %55 = getelementptr inbounds %struct.item, %struct.item* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.item*, %struct.item** %5, align 8
  %58 = getelementptr inbounds %struct.item, %struct.item* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i64 @get_bitno(i32 %59, i32 %60)
  %62 = getelementptr inbounds i32, i32* %56, i64 %61
  store i32 %53, i32* %62, align 4
  store i32 1, i32* %4, align 4
  br label %63

63:                                               ; preds = %52, %17
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32* @zzrealloc_ushort_mask(i32*, i32, i32, i32) #1

declare dso_local i64 @get_bitno(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
