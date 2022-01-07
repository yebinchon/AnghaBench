; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-data.c_free_cache_item.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-data.c_free_cache_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i32, i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i64 }

@cache_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_cache_item(%struct.entry* %0) #0 {
  %2 = alloca %struct.entry*, align 8
  store %struct.entry* %0, %struct.entry** %2, align 8
  %3 = load %struct.entry*, %struct.entry** %2, align 8
  %4 = getelementptr inbounds %struct.entry, %struct.entry* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %52

7:                                                ; preds = %1
  %8 = load %struct.entry*, %struct.entry** %2, align 8
  %9 = getelementptr inbounds %struct.entry, %struct.entry* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.entry*, %struct.entry** %2, align 8
  %12 = getelementptr inbounds %struct.entry, %struct.entry* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 1
  %16 = trunc i64 %15 to i32
  %17 = call i32 @zzfree(i64 %10, i32 %16)
  %18 = load %struct.entry*, %struct.entry** %2, align 8
  %19 = getelementptr inbounds %struct.entry, %struct.entry* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 1
  %23 = load i32, i32* @cache_size, align 4
  %24 = sext i32 %23 to i64
  %25 = sub i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* @cache_size, align 4
  %27 = load %struct.entry*, %struct.entry** %2, align 8
  %28 = getelementptr inbounds %struct.entry, %struct.entry* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %7
  %32 = load %struct.entry*, %struct.entry** %2, align 8
  %33 = getelementptr inbounds %struct.entry, %struct.entry* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.entry*, %struct.entry** %2, align 8
  %37 = getelementptr inbounds %struct.entry, %struct.entry* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  %41 = call i32 @zzfree(i64 %35, i32 %40)
  %42 = load %struct.entry*, %struct.entry** %2, align 8
  %43 = getelementptr inbounds %struct.entry, %struct.entry* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load %struct.entry*, %struct.entry** %2, align 8
  %45 = getelementptr inbounds %struct.entry, %struct.entry* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  %49 = load i32, i32* @cache_size, align 4
  %50 = sub nsw i32 %49, %48
  store i32 %50, i32* @cache_size, align 4
  br label %51

51:                                               ; preds = %31, %7
  br label %52

52:                                               ; preds = %51, %1
  %53 = load %struct.entry*, %struct.entry** %2, align 8
  %54 = getelementptr inbounds %struct.entry, %struct.entry* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  ret void
}

declare dso_local i32 @zzfree(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
