; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_icpl-data.c_get_combinator_f.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_icpl-data.c_get_combinator_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

@COMBINATORS_PRIME = common dso_local global i8 0, align 1
@COMBINATORS = common dso_local global %struct.TYPE_5__** null, align 8
@combinators = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @get_combinator_f(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8 0, i8* %8, align 1
  store i8 0, i8* %9, align 1
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %40, %3
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %13
  %18 = load i8, i8* %8, align 1
  %19 = zext i8 %18 to i32
  %20 = mul nsw i32 239, %19
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = add nsw i32 %20, %26
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %8, align 1
  %29 = load i8, i8* %9, align 1
  %30 = zext i8 %29 to i32
  %31 = mul nsw i32 3, %30
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = add nsw i32 %31, %37
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %9, align 1
  br label %40

40:                                               ; preds = %17
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  br label %13

43:                                               ; preds = %13
  %44 = load i8, i8* @COMBINATORS_PRIME, align 1
  %45 = zext i8 %44 to i32
  %46 = load i8, i8* %8, align 1
  %47 = zext i8 %46 to i32
  %48 = srem i32 %47, %45
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %8, align 1
  %50 = load i8, i8* %9, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* @COMBINATORS_PRIME, align 1
  %53 = zext i8 %52 to i32
  %54 = sub nsw i32 %53, 1
  %55 = srem i32 %51, %54
  %56 = add nsw i32 1, %55
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %9, align 1
  br label %58

58:                                               ; preds = %99, %43
  %59 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @COMBINATORS, align 8
  %60 = load i8, i8* %8, align 1
  %61 = zext i8 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %59, i64 %61
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  store %struct.TYPE_5__* %63, %struct.TYPE_5__** %11, align 8
  %64 = icmp ne %struct.TYPE_5__* %63, null
  br i1 %64, label %65, label %100

65:                                               ; preds = %58
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %65
  %72 = load i8*, i8** %5, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @memcmp(i8* %72, i32 %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %71
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %80, %struct.TYPE_5__** %4, align 8
  br label %136

81:                                               ; preds = %71, %65
  %82 = load i8, i8* %9, align 1
  %83 = zext i8 %82 to i32
  %84 = load i8, i8* %8, align 1
  %85 = zext i8 %84 to i32
  %86 = add nsw i32 %85, %83
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %8, align 1
  %88 = zext i8 %87 to i32
  %89 = load i8, i8* @COMBINATORS_PRIME, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp sge i32 %88, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %81
  %93 = load i8, i8* @COMBINATORS_PRIME, align 1
  %94 = zext i8 %93 to i32
  %95 = load i8, i8* %8, align 1
  %96 = zext i8 %95 to i32
  %97 = sub nsw i32 %96, %94
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %8, align 1
  br label %99

99:                                               ; preds = %92, %81
  br label %58

100:                                              ; preds = %58
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %136

104:                                              ; preds = %100
  %105 = load double, double* @combinators, align 8
  %106 = fadd double %105, 1.000000e+00
  store double %106, double* @combinators, align 8
  %107 = load double, double* @combinators, align 8
  %108 = load i8, i8* @COMBINATORS_PRIME, align 1
  %109 = zext i8 %108 to i32
  %110 = sitofp i32 %109 to double
  %111 = fmul double 8.000000e-01, %110
  %112 = fcmp olt double %107, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  %115 = call %struct.TYPE_5__* @zmalloc0(i32 12)
  store %struct.TYPE_5__* %115, %struct.TYPE_5__** %12, align 8
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @zmalloc(i32 %116)
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 4
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load i8*, i8** %5, align 8
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @memcpy(i32 %122, i8* %123, i32 %124)
  %126 = load i32, i32* %6, align 4
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 4
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  store i32 -1, i32* %130, align 4
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %132 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @COMBINATORS, align 8
  %133 = load i8, i8* %8, align 1
  %134 = zext i8 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %132, i64 %134
  store %struct.TYPE_5__* %131, %struct.TYPE_5__** %135, align 8
  store %struct.TYPE_5__* %131, %struct.TYPE_5__** %4, align 8
  br label %136

136:                                              ; preds = %104, %103, %79
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  ret %struct.TYPE_5__* %137
}

declare dso_local i32 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_5__* @zmalloc0(i32) #1

declare dso_local i32 @zmalloc(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
