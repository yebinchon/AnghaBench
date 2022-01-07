; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_uri_get_size.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_uri_get_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_uri = type { i32, i64 }

@uri_off = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cache_uri_get_size(%struct.cache_uri* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.cache_uri*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.cache_uri* %0, %struct.cache_uri** %3, align 8
  %10 = load %struct.cache_uri*, %struct.cache_uri** %3, align 8
  %11 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i64 -1, i64* %2, align 8
  br label %73

15:                                               ; preds = %1
  %16 = load %struct.cache_uri*, %struct.cache_uri** %3, align 8
  %17 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, -2147483648
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load %struct.cache_uri*, %struct.cache_uri** %3, align 8
  %23 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, 2147483647
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %2, align 8
  br label %73

27:                                               ; preds = %15
  %28 = load %struct.cache_uri*, %struct.cache_uri** %3, align 8
  %29 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, 16777215
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %4, align 8
  %33 = load %struct.cache_uri*, %struct.cache_uri** %3, align 8
  %34 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = ashr i32 %35, 24
  store i32 %36, i32* %5, align 4
  store i32 24, i32* %7, align 4
  %37 = load %struct.cache_uri*, %struct.cache_uri** %3, align 8
  %38 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @uri_off, align 8
  %41 = load %struct.cache_uri*, %struct.cache_uri** %3, align 8
  %42 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @uri_off, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i64 @strlen(i64 %45)
  %47 = add nsw i64 %40, %46
  %48 = add nsw i64 %47, 1
  %49 = add nsw i64 %39, %48
  %50 = inttoptr i64 %49 to i8*
  store i8* %50, i8** %8, align 8
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %68, %27
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %51
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %8, align 8
  %58 = load i8, i8* %56, align 1
  %59 = zext i8 %58 to i64
  store i64 %59, i64* %9, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load i32, i32* %7, align 4
  %62 = zext i32 %61 to i64
  %63 = shl i64 %60, %62
  %64 = load i64, i64* %4, align 8
  %65 = or i64 %64, %63
  store i64 %65, i64* %4, align 8
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 8
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %55
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %51

71:                                               ; preds = %51
  %72 = load i64, i64* %4, align 8
  store i64 %72, i64* %2, align 8
  br label %73

73:                                               ; preds = %71, %21, %14
  %74 = load i64, i64* %2, align 8
  ret i64 %74
}

declare dso_local i64 @strlen(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
