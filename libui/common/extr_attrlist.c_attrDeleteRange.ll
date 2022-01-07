; ModuleID = '/home/carl/AnghaBench/libui/common/extr_attrlist.c_attrDeleteRange.c'
source_filename = "/home/carl/AnghaBench/libui/common/extr_attrlist.c_attrDeleteRange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attr = type { i64, i64, %struct.attr* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.attr* (i32*, %struct.attr*, i64, i64)* @attrDeleteRange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.attr* @attrDeleteRange(i32* %0, %struct.attr* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.attr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.attr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.attr* %1, %struct.attr** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* %8, align 8
  store i64 %13, i64* %10, align 8
  %14 = load i64, i64* %9, align 8
  store i64 %14, i64* %11, align 8
  %15 = load i64, i64* %11, align 8
  %16 = load i64, i64* %10, align 8
  %17 = sub i64 %15, %16
  store i64 %17, i64* %12, align 8
  %18 = load %struct.attr*, %struct.attr** %7, align 8
  %19 = call i32 @attrRangeIntersect(%struct.attr* %18, i64* %8, i64* %9)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %49, label %21

21:                                               ; preds = %4
  %22 = load %struct.attr*, %struct.attr** %7, align 8
  %23 = getelementptr inbounds %struct.attr, %struct.attr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %10, align 8
  %26 = icmp uge i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load i64, i64* %12, align 8
  %29 = load %struct.attr*, %struct.attr** %7, align 8
  %30 = getelementptr inbounds %struct.attr, %struct.attr* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub i64 %31, %28
  store i64 %32, i64* %30, align 8
  br label %33

33:                                               ; preds = %27, %21
  %34 = load %struct.attr*, %struct.attr** %7, align 8
  %35 = getelementptr inbounds %struct.attr, %struct.attr* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %11, align 8
  %38 = icmp uge i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load i64, i64* %12, align 8
  %41 = load %struct.attr*, %struct.attr** %7, align 8
  %42 = getelementptr inbounds %struct.attr, %struct.attr* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = sub i64 %43, %40
  store i64 %44, i64* %42, align 8
  br label %45

45:                                               ; preds = %39, %33
  %46 = load %struct.attr*, %struct.attr** %7, align 8
  %47 = getelementptr inbounds %struct.attr, %struct.attr* %46, i32 0, i32 2
  %48 = load %struct.attr*, %struct.attr** %47, align 8
  store %struct.attr* %48, %struct.attr** %5, align 8
  br label %107

49:                                               ; preds = %4
  %50 = load %struct.attr*, %struct.attr** %7, align 8
  %51 = getelementptr inbounds %struct.attr, %struct.attr* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = icmp uge i64 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %49
  %56 = load %struct.attr*, %struct.attr** %7, align 8
  %57 = getelementptr inbounds %struct.attr, %struct.attr* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %9, align 8
  %60 = icmp ule i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i32*, i32** %6, align 8
  %63 = load %struct.attr*, %struct.attr** %7, align 8
  %64 = call %struct.attr* @attrDelete(i32* %62, %struct.attr* %63)
  store %struct.attr* %64, %struct.attr** %5, align 8
  br label %107

65:                                               ; preds = %55, %49
  %66 = load %struct.attr*, %struct.attr** %7, align 8
  %67 = getelementptr inbounds %struct.attr, %struct.attr* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %8, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %85

71:                                               ; preds = %65
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* %12, align 8
  %74 = sub i64 %72, %73
  %75 = load %struct.attr*, %struct.attr** %7, align 8
  %76 = getelementptr inbounds %struct.attr, %struct.attr* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load i64, i64* %12, align 8
  %78 = load %struct.attr*, %struct.attr** %7, align 8
  %79 = getelementptr inbounds %struct.attr, %struct.attr* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = sub i64 %80, %77
  store i64 %81, i64* %79, align 8
  %82 = load %struct.attr*, %struct.attr** %7, align 8
  %83 = getelementptr inbounds %struct.attr, %struct.attr* %82, i32 0, i32 2
  %84 = load %struct.attr*, %struct.attr** %83, align 8
  store %struct.attr* %84, %struct.attr** %5, align 8
  br label %107

85:                                               ; preds = %65
  %86 = load %struct.attr*, %struct.attr** %7, align 8
  %87 = getelementptr inbounds %struct.attr, %struct.attr* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %9, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %85
  %92 = load i64, i64* %8, align 8
  %93 = load %struct.attr*, %struct.attr** %7, align 8
  %94 = getelementptr inbounds %struct.attr, %struct.attr* %93, i32 0, i32 1
  store i64 %92, i64* %94, align 8
  %95 = load %struct.attr*, %struct.attr** %7, align 8
  %96 = getelementptr inbounds %struct.attr, %struct.attr* %95, i32 0, i32 2
  %97 = load %struct.attr*, %struct.attr** %96, align 8
  store %struct.attr* %97, %struct.attr** %5, align 8
  br label %107

98:                                               ; preds = %85
  %99 = load i64, i64* %12, align 8
  %100 = load %struct.attr*, %struct.attr** %7, align 8
  %101 = getelementptr inbounds %struct.attr, %struct.attr* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = sub i64 %102, %99
  store i64 %103, i64* %101, align 8
  %104 = load %struct.attr*, %struct.attr** %7, align 8
  %105 = getelementptr inbounds %struct.attr, %struct.attr* %104, i32 0, i32 2
  %106 = load %struct.attr*, %struct.attr** %105, align 8
  store %struct.attr* %106, %struct.attr** %5, align 8
  br label %107

107:                                              ; preds = %98, %91, %71, %61, %45
  %108 = load %struct.attr*, %struct.attr** %5, align 8
  ret %struct.attr* %108
}

declare dso_local i32 @attrRangeIntersect(%struct.attr*, i64*, i64*) #1

declare dso_local %struct.attr* @attrDelete(i32*, %struct.attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
