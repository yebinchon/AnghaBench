; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-index.c_set_hash_item.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-index.c_set_hash_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { i32, i32, i64*, i32 }

@FLAG_DELETED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_hash_item(%struct.item* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.item*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.item* %0, %struct.item** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.item*, %struct.item** %4, align 8
  %8 = icmp ne %struct.item* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.item*, %struct.item** %4, align 8
  %11 = getelementptr inbounds %struct.item, %struct.item* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @FLAG_DELETED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9, %2
  store i32 0, i32* %3, align 4
  br label %91

17:                                               ; preds = %9
  %18 = load %struct.item*, %struct.item** %4, align 8
  %19 = getelementptr inbounds %struct.item, %struct.item* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 49152
  %22 = icmp ne i32 %21, 49152
  br i1 %22, label %23, label %61

23:                                               ; preds = %17
  %24 = load %struct.item*, %struct.item** %4, align 8
  %25 = getelementptr inbounds %struct.item, %struct.item* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 49152
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.item*, %struct.item** %4, align 8
  %33 = getelementptr inbounds %struct.item, %struct.item* %32, i32 0, i32 2
  %34 = load i64*, i64** %33, align 8
  %35 = load %struct.item*, %struct.item** %4, align 8
  %36 = getelementptr inbounds %struct.item, %struct.item* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = shl i32 %37, 2
  %39 = load %struct.item*, %struct.item** %4, align 8
  %40 = getelementptr inbounds %struct.item, %struct.item* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 2
  %43 = shl i32 %42, 2
  %44 = call i8* @zzrealloc(i64* %34, i32 %38, i32 %43)
  store i8* %44, i8** %6, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %91

48:                                               ; preds = %23
  %49 = load %struct.item*, %struct.item** %4, align 8
  %50 = getelementptr inbounds %struct.item, %struct.item* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, 49152
  store i32 %52, i32* %50, align 4
  %53 = load %struct.item*, %struct.item** %4, align 8
  %54 = getelementptr inbounds %struct.item, %struct.item* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 2
  store i32 %56, i32* %54, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = bitcast i8* %57 to i64*
  %59 = load %struct.item*, %struct.item** %4, align 8
  %60 = getelementptr inbounds %struct.item, %struct.item* %59, i32 0, i32 2
  store i64* %58, i64** %60, align 8
  br label %61

61:                                               ; preds = %48, %17
  %62 = load %struct.item*, %struct.item** %4, align 8
  %63 = getelementptr inbounds %struct.item, %struct.item* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = icmp sge i32 %64, 2
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load i64, i64* %5, align 8
  %69 = ashr i64 %68, 32
  %70 = load %struct.item*, %struct.item** %4, align 8
  %71 = getelementptr inbounds %struct.item, %struct.item* %70, i32 0, i32 2
  %72 = load i64*, i64** %71, align 8
  %73 = load %struct.item*, %struct.item** %4, align 8
  %74 = getelementptr inbounds %struct.item, %struct.item* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %72, i64 %77
  store i64 %69, i64* %78, align 8
  %79 = load i64, i64* %5, align 8
  %80 = trunc i64 %79 to i32
  %81 = zext i32 %80 to i64
  %82 = load %struct.item*, %struct.item** %4, align 8
  %83 = getelementptr inbounds %struct.item, %struct.item* %82, i32 0, i32 2
  %84 = load i64*, i64** %83, align 8
  %85 = load %struct.item*, %struct.item** %4, align 8
  %86 = getelementptr inbounds %struct.item, %struct.item* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = sub nsw i32 %87, 2
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %84, i64 %89
  store i64 %81, i64* %90, align 8
  store i32 1, i32* %3, align 4
  br label %91

91:                                               ; preds = %61, %47, %16
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @zzrealloc(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
