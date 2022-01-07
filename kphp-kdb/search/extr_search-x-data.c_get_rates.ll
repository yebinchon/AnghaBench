; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_get_rates.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_get_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { i32 }

@ONLY_FIND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"get_rates(%016llx): %p %p\0A\00", align 1
@FLAG_DELETED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_rates(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.item*, align 8
  %7 = alloca %struct.item*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i32, i32* @ONLY_FIND, align 4
  %10 = call %struct.item* @get_item_f(i64 %8, i32 %9)
  store %struct.item* %10, %struct.item** %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i64 @get_idx_item(i64 %11)
  %13 = inttoptr i64 %12 to %struct.item*
  store %struct.item* %13, %struct.item** %7, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.item*, %struct.item** %6, align 8
  %16 = load %struct.item*, %struct.item** %7, align 8
  %17 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %14, %struct.item* %15, %struct.item* %16)
  %18 = load %struct.item*, %struct.item** %7, align 8
  %19 = icmp ne %struct.item* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %2
  %21 = load %struct.item*, %struct.item** %6, align 8
  %22 = icmp ne %struct.item* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.item*, %struct.item** %7, align 8
  %27 = call i32 @get_rate_item(%struct.item* %26, i32 0)
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.item*, %struct.item** %7, align 8
  %31 = call i32 @get_rate_item(%struct.item* %30, i32 1)
  %32 = load i32*, i32** %4, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 %31, i32* %33, align 4
  store i32 1, i32* %3, align 4
  br label %54

34:                                               ; preds = %2
  %35 = load %struct.item*, %struct.item** %6, align 8
  %36 = icmp ne %struct.item* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load %struct.item*, %struct.item** %6, align 8
  %39 = getelementptr inbounds %struct.item, %struct.item* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @FLAG_DELETED, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37, %34
  store i32 0, i32* %3, align 4
  br label %54

45:                                               ; preds = %37
  %46 = load %struct.item*, %struct.item** %6, align 8
  %47 = call i32 @get_rate_item(%struct.item* %46, i32 0)
  %48 = load i32*, i32** %4, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.item*, %struct.item** %6, align 8
  %51 = call i32 @get_rate_item(%struct.item* %50, i32 1)
  %52 = load i32*, i32** %4, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 %51, i32* %53, align 4
  store i32 1, i32* %3, align 4
  br label %54

54:                                               ; preds = %45, %44, %20
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.item* @get_item_f(i64, i32) #1

declare dso_local i64 @get_idx_item(i64) #1

declare dso_local i32 @vkprintf(i32, i8*, i64, %struct.item*, %struct.item*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @get_rate_item(%struct.item*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
