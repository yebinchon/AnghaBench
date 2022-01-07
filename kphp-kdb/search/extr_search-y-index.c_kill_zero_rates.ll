; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-index.c_kill_zero_rates.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-index.c_kill_zero_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { i32, i32, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kill_zero_rates(%struct.item* %0) #0 {
  %2 = alloca %struct.item*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.item* %0, %struct.item** %2, align 8
  %8 = load %struct.item*, %struct.item** %2, align 8
  %9 = getelementptr inbounds %struct.item, %struct.item* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %51, %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %54

14:                                               ; preds = %11
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = sub nsw i32 0, %16
  %18 = and i32 %15, %17
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %3, align 4
  %20 = xor i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load %struct.item*, %struct.item** %2, align 8
  %22 = getelementptr inbounds %struct.item, %struct.item* %21, i32 0, i32 2
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %14
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, 49152
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %29, %14
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load %struct.item*, %struct.item** %2, align 8
  %38 = getelementptr inbounds %struct.item, %struct.item* %37, i32 0, i32 2
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.item*, %struct.item** %2, align 8
  %45 = getelementptr inbounds %struct.item, %struct.item* %44, i32 0, i32 2
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i64, i64* %46, i64 %49
  store i64 %43, i64* %50, align 8
  br label %51

51:                                               ; preds = %33, %29
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %11

54:                                               ; preds = %11
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.item*, %struct.item** %2, align 8
  %57 = getelementptr inbounds %struct.item, %struct.item* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %55, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.item*, %struct.item** %2, align 8
  %64 = getelementptr inbounds %struct.item, %struct.item* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.item*, %struct.item** %2, align 8
  %67 = getelementptr inbounds %struct.item, %struct.item* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
