; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_get_monthly_views_serialized_raw.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_get_monthly_views_serialized_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter = type { %struct.counter*, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_monthly_views_serialized_raw(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.counter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @load_counter(i64 %11, i32 0, i32 1)
  %13 = icmp eq i32 %12, -2
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -2, i32* %3, align 4
  br label %91

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %6, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call %struct.counter* @get_counter_f(i64 %18, i32 0)
  store %struct.counter* %19, %struct.counter** %7, align 8
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %79, %15
  %21 = load %struct.counter*, %struct.counter** %7, align 8
  %22 = icmp ne %struct.counter* %21, null
  br i1 %22, label %23, label %83

23:                                               ; preds = %20
  %24 = load %struct.counter*, %struct.counter** %7, align 8
  %25 = getelementptr inbounds %struct.counter, %struct.counter* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %8, align 4
  %31 = load %struct.counter*, %struct.counter** %7, align 8
  %32 = getelementptr inbounds %struct.counter, %struct.counter* %31, i32 0, i32 0
  %33 = load %struct.counter*, %struct.counter** %32, align 8
  %34 = icmp ne %struct.counter* %33, null
  br i1 %34, label %35, label %59

35:                                               ; preds = %23
  %36 = load %struct.counter*, %struct.counter** %7, align 8
  %37 = getelementptr inbounds %struct.counter, %struct.counter* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @get_month(i32 %38)
  %40 = load %struct.counter*, %struct.counter** %7, align 8
  %41 = getelementptr inbounds %struct.counter, %struct.counter* %40, i32 0, i32 0
  %42 = load %struct.counter*, %struct.counter** %41, align 8
  %43 = getelementptr inbounds %struct.counter, %struct.counter* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @get_month(i32 %44)
  %46 = icmp ne i32 %39, %45
  br i1 %46, label %59, label %47

47:                                               ; preds = %35
  %48 = load %struct.counter*, %struct.counter** %7, align 8
  %49 = getelementptr inbounds %struct.counter, %struct.counter* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @get_year(i32 %50)
  %52 = load %struct.counter*, %struct.counter** %7, align 8
  %53 = getelementptr inbounds %struct.counter, %struct.counter* %52, i32 0, i32 0
  %54 = load %struct.counter*, %struct.counter** %53, align 8
  %55 = getelementptr inbounds %struct.counter, %struct.counter* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @get_year(i32 %56)
  %58 = icmp ne i32 %51, %57
  br i1 %58, label %59, label %79

59:                                               ; preds = %47, %35, %23
  %60 = load %struct.counter*, %struct.counter** %7, align 8
  %61 = getelementptr inbounds %struct.counter, %struct.counter* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @get_month(i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = load %struct.counter*, %struct.counter** %7, align 8
  %65 = getelementptr inbounds %struct.counter, %struct.counter* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @get_year(i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = mul nsw i32 %70, 100
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %71, %72
  %74 = load i32*, i32** %6, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %6, align 8
  store i32 %73, i32* %74, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32*, i32** %6, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %6, align 8
  store i32 %76, i32* %77, align 4
  store i32 0, i32* %8, align 4
  br label %79

79:                                               ; preds = %59, %47
  %80 = load %struct.counter*, %struct.counter** %7, align 8
  %81 = getelementptr inbounds %struct.counter, %struct.counter* %80, i32 0, i32 0
  %82 = load %struct.counter*, %struct.counter** %81, align 8
  store %struct.counter* %82, %struct.counter** %7, align 8
  br label %20

83:                                               ; preds = %20
  %84 = load i32*, i32** %6, align 8
  %85 = bitcast i32* %84 to i8*
  %86 = load i8*, i8** %4, align 8
  %87 = ptrtoint i8* %85 to i64
  %88 = ptrtoint i8* %86 to i64
  %89 = sub i64 %87, %88
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %83, %14
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @load_counter(i64, i32, i32) #1

declare dso_local %struct.counter* @get_counter_f(i64, i32) #1

declare dso_local i32 @get_month(i32) #1

declare dso_local i32 @get_year(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
