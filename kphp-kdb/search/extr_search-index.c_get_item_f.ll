; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-index.c_get_item_f.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-index.c_get_item_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { i64, i32 }

@ITEMS_HASH_PRIME = common dso_local global i64 0, align 8
@Items = common dso_local global %struct.item** null, align 8
@FLAG_DELETED = common dso_local global i32 0, align 4
@tot_items = common dso_local global i64 0, align 8
@MAX_ITEMS = common dso_local global i64 0, align 8
@del_items = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.item* (i64, i32)* @get_item_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.item* @get_item_f(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.item*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.item*, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i64, i64* %4, align 8
  %11 = icmp sle i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @fits(i64 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12, %2
  store %struct.item* null, %struct.item** %3, align 8
  br label %109

17:                                               ; preds = %12
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @ITEMS_HASH_PRIME, align 8
  %20 = srem i64 %18, %19
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %6, align 4
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @ITEMS_HASH_PRIME, align 8
  %24 = sub nsw i64 %23, 1
  %25 = srem i64 %22, %24
  %26 = add nsw i64 1, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %7, align 4
  store i32 -1, i32* %9, align 4
  br label %28

28:                                               ; preds = %69, %17
  %29 = load %struct.item**, %struct.item*** @Items, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.item*, %struct.item** %29, i64 %31
  %33 = load %struct.item*, %struct.item** %32, align 8
  store %struct.item* %33, %struct.item** %8, align 8
  %34 = icmp ne %struct.item* %33, null
  br i1 %34, label %35, label %70

35:                                               ; preds = %28
  %36 = load %struct.item*, %struct.item** %8, align 8
  %37 = getelementptr inbounds %struct.item, %struct.item* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %4, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load %struct.item*, %struct.item** %8, align 8
  store %struct.item* %42, %struct.item** %3, align 8
  br label %109

43:                                               ; preds = %35
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load %struct.item*, %struct.item** %8, align 8
  %48 = getelementptr inbounds %struct.item, %struct.item* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @FLAG_DELETED, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %53, %46, %43
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* @ITEMS_HASH_PRIME, align 8
  %62 = icmp sge i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %55
  %64 = load i64, i64* @ITEMS_HASH_PRIME, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = sub nsw i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %63, %55
  br label %28

70:                                               ; preds = %28
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i64, i64* @tot_items, align 8
  %75 = load i64, i64* @MAX_ITEMS, align 8
  %76 = icmp sge i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73, %70
  store %struct.item* null, %struct.item** %3, align 8
  br label %109

78:                                               ; preds = %73
  %79 = load i32, i32* %9, align 4
  %80 = icmp sge i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = load %struct.item**, %struct.item*** @Items, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.item*, %struct.item** %82, i64 %84
  %86 = load %struct.item*, %struct.item** %85, align 8
  store %struct.item* %86, %struct.item** %8, align 8
  %87 = load i32, i32* @del_items, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* @del_items, align 4
  br label %103

89:                                               ; preds = %78
  %90 = call %struct.item* @ztmalloc(i32 16)
  store %struct.item* %90, %struct.item** %8, align 8
  %91 = load %struct.item*, %struct.item** %8, align 8
  %92 = icmp ne %struct.item* %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %89
  %94 = load %struct.item*, %struct.item** %8, align 8
  store %struct.item* %94, %struct.item** %3, align 8
  br label %109

95:                                               ; preds = %89
  %96 = load %struct.item*, %struct.item** %8, align 8
  %97 = load %struct.item**, %struct.item*** @Items, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.item*, %struct.item** %97, i64 %99
  store %struct.item* %96, %struct.item** %100, align 8
  %101 = load i64, i64* @tot_items, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* @tot_items, align 8
  br label %103

103:                                              ; preds = %95, %81
  %104 = load %struct.item*, %struct.item** %8, align 8
  %105 = load i64, i64* %4, align 8
  %106 = call i32 @create_item(%struct.item* %104, i64 %105)
  %107 = call i32 @assert(i32 %106)
  %108 = load %struct.item*, %struct.item** %8, align 8
  store %struct.item* %108, %struct.item** %3, align 8
  br label %109

109:                                              ; preds = %103, %93, %77, %41, %16
  %110 = load %struct.item*, %struct.item** %3, align 8
  ret %struct.item* %110
}

declare dso_local i32 @fits(i64) #1

declare dso_local %struct.item* @ztmalloc(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @create_item(%struct.item*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
