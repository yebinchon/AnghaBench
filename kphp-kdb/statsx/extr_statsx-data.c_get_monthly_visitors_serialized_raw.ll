; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_get_monthly_visitors_serialized_raw.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_get_monthly_visitors_serialized_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter = type { i32, %struct.counter*, i32, i32 }

@COUNTER_TYPE_MONTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_monthly_visitors_serialized_raw(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.counter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @load_counter(i64 %15, i32 0, i32 1)
  %17 = icmp eq i32 %16, -2
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 -2, i32* %3, align 4
  br label %136

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %6, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call %struct.counter* @get_counter_f(i64 %22, i32 0)
  store %struct.counter* %23, %struct.counter** %7, align 8
  store i32 1, i32* %8, align 4
  br label %24

24:                                               ; preds = %124, %19
  %25 = load %struct.counter*, %struct.counter** %7, align 8
  %26 = icmp ne %struct.counter* %25, null
  br i1 %26, label %27, label %128

27:                                               ; preds = %24
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %64

30:                                               ; preds = %27
  %31 = load %struct.counter*, %struct.counter** %7, align 8
  %32 = getelementptr inbounds %struct.counter, %struct.counter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @COUNTER_TYPE_MONTH, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %64, label %37

37:                                               ; preds = %30
  %38 = load %struct.counter*, %struct.counter** %7, align 8
  %39 = getelementptr inbounds %struct.counter, %struct.counter* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %64

42:                                               ; preds = %37
  %43 = load %struct.counter*, %struct.counter** %7, align 8
  %44 = getelementptr inbounds %struct.counter, %struct.counter* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @get_month(i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load %struct.counter*, %struct.counter** %7, align 8
  %48 = getelementptr inbounds %struct.counter, %struct.counter* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @get_year(i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = mul nsw i32 %53, 100
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %54, %55
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %6, align 8
  store i32 %56, i32* %57, align 4
  %59 = load %struct.counter*, %struct.counter** %7, align 8
  %60 = getelementptr inbounds %struct.counter, %struct.counter* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %6, align 8
  store i32 %61, i32* %62, align 4
  store i32 0, i32* %8, align 4
  br label %64

64:                                               ; preds = %42, %37, %30, %27
  %65 = load %struct.counter*, %struct.counter** %7, align 8
  %66 = getelementptr inbounds %struct.counter, %struct.counter* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @COUNTER_TYPE_MONTH, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %124

71:                                               ; preds = %64
  %72 = load %struct.counter*, %struct.counter** %7, align 8
  %73 = getelementptr inbounds %struct.counter, %struct.counter* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp sge i32 %74, 0
  br i1 %75, label %76, label %124

76:                                               ; preds = %71
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %98

79:                                               ; preds = %76
  %80 = load %struct.counter*, %struct.counter** %7, align 8
  %81 = getelementptr inbounds %struct.counter, %struct.counter* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @get_month(i32 %82)
  store i32 %83, i32* %11, align 4
  %84 = load %struct.counter*, %struct.counter** %7, align 8
  %85 = getelementptr inbounds %struct.counter, %struct.counter* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @get_year(i32 %86)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %12, align 4
  %91 = mul nsw i32 %90, 100
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %91, %92
  %94 = load i32*, i32** %6, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %6, align 8
  store i32 %93, i32* %94, align 4
  %96 = load i32*, i32** %6, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %6, align 8
  store i32 0, i32* %96, align 4
  store i32 0, i32* %8, align 4
  br label %98

98:                                               ; preds = %79, %76
  %99 = load %struct.counter*, %struct.counter** %7, align 8
  %100 = getelementptr inbounds %struct.counter, %struct.counter* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @get_month(i32 %101)
  store i32 %102, i32* %13, align 4
  %103 = load %struct.counter*, %struct.counter** %7, align 8
  %104 = getelementptr inbounds %struct.counter, %struct.counter* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @get_year(i32 %105)
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* %13, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %98
  store i32 12, i32* %13, align 4
  %110 = load i32, i32* %14, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %14, align 4
  br label %112

112:                                              ; preds = %109, %98
  %113 = load i32, i32* %14, align 4
  %114 = mul nsw i32 %113, 100
  %115 = load i32, i32* %13, align 4
  %116 = add nsw i32 %114, %115
  %117 = load i32*, i32** %6, align 8
  %118 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %118, i32** %6, align 8
  store i32 %116, i32* %117, align 4
  %119 = load %struct.counter*, %struct.counter** %7, align 8
  %120 = getelementptr inbounds %struct.counter, %struct.counter* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load i32*, i32** %6, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %123, i32** %6, align 8
  store i32 %121, i32* %122, align 4
  br label %124

124:                                              ; preds = %112, %71, %64
  %125 = load %struct.counter*, %struct.counter** %7, align 8
  %126 = getelementptr inbounds %struct.counter, %struct.counter* %125, i32 0, i32 1
  %127 = load %struct.counter*, %struct.counter** %126, align 8
  store %struct.counter* %127, %struct.counter** %7, align 8
  br label %24

128:                                              ; preds = %24
  %129 = load i32*, i32** %6, align 8
  %130 = bitcast i32* %129 to i8*
  %131 = load i8*, i8** %4, align 8
  %132 = ptrtoint i8* %130 to i64
  %133 = ptrtoint i8* %131 to i64
  %134 = sub i64 %132, %133
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %128, %18
  %137 = load i32, i32* %3, align 4
  ret i32 %137
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
