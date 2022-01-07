; ModuleID = '/home/carl/AnghaBench/libui/common/extr_attrlist.c_uiprivAttrListRemoveAttribute.c'
source_filename = "/home/carl/AnghaBench/libui/common/extr_attrlist.c_uiprivAttrListRemoveAttribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.attr* }
%struct.attr = type { i64, %struct.attr*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uiprivAttrListRemoveAttribute(%struct.TYPE_5__* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.attr*, align 8
  %10 = alloca %struct.attr*, align 8
  %11 = alloca %struct.attr*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.attr*, align 8
  %15 = alloca %struct.attr*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store %struct.attr* null, %struct.attr** %10, align 8
  store %struct.attr* null, %struct.attr** %11, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.attr*, %struct.attr** %17, align 8
  store %struct.attr* %18, %struct.attr** %9, align 8
  br label %19

19:                                               ; preds = %59, %58, %4
  %20 = load %struct.attr*, %struct.attr** %9, align 8
  %21 = icmp ne %struct.attr* %20, null
  br i1 %21, label %22, label %63

22:                                               ; preds = %19
  %23 = load %struct.attr*, %struct.attr** %9, align 8
  %24 = getelementptr inbounds %struct.attr, %struct.attr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp uge i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load %struct.attr*, %struct.attr** %9, align 8
  store %struct.attr* %29, %struct.attr** %11, align 8
  br label %63

30:                                               ; preds = %22
  %31 = load %struct.attr*, %struct.attr** %9, align 8
  %32 = getelementptr inbounds %struct.attr, %struct.attr* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @uiAttributeGetType(i32 %33)
  %35 = load i64, i64* %6, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %59

38:                                               ; preds = %30
  %39 = load i64, i64* %7, align 8
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %8, align 8
  store i64 %40, i64* %13, align 8
  %41 = load %struct.attr*, %struct.attr** %9, align 8
  %42 = call i32 @attrRangeIntersect(%struct.attr* %41, i64* %12, i64* %13)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  br label %59

45:                                               ; preds = %38
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %47 = load %struct.attr*, %struct.attr** %9, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call %struct.attr* @attrDropRange(%struct.TYPE_5__* %46, %struct.attr* %47, i64 %48, i64 %49, %struct.attr** %14)
  store %struct.attr* %50, %struct.attr** %9, align 8
  %51 = load %struct.attr*, %struct.attr** %14, align 8
  %52 = icmp ne %struct.attr* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %45
  %54 = load %struct.attr*, %struct.attr** %10, align 8
  %55 = load %struct.attr*, %struct.attr** %14, align 8
  %56 = getelementptr inbounds %struct.attr, %struct.attr* %55, i32 0, i32 1
  store %struct.attr* %54, %struct.attr** %56, align 8
  %57 = load %struct.attr*, %struct.attr** %14, align 8
  store %struct.attr* %57, %struct.attr** %10, align 8
  br label %58

58:                                               ; preds = %53, %45
  br label %19

59:                                               ; preds = %44, %37
  %60 = load %struct.attr*, %struct.attr** %9, align 8
  %61 = getelementptr inbounds %struct.attr, %struct.attr* %60, i32 0, i32 1
  %62 = load %struct.attr*, %struct.attr** %61, align 8
  store %struct.attr* %62, %struct.attr** %9, align 8
  br label %19

63:                                               ; preds = %28, %19
  br label %64

64:                                               ; preds = %67, %63
  %65 = load %struct.attr*, %struct.attr** %10, align 8
  %66 = icmp ne %struct.attr* %65, null
  br i1 %66, label %67, label %78

67:                                               ; preds = %64
  %68 = load %struct.attr*, %struct.attr** %10, align 8
  %69 = getelementptr inbounds %struct.attr, %struct.attr* %68, i32 0, i32 1
  %70 = load %struct.attr*, %struct.attr** %69, align 8
  store %struct.attr* %70, %struct.attr** %15, align 8
  %71 = load %struct.attr*, %struct.attr** %10, align 8
  %72 = getelementptr inbounds %struct.attr, %struct.attr* %71, i32 0, i32 1
  store %struct.attr* null, %struct.attr** %72, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %74 = load %struct.attr*, %struct.attr** %10, align 8
  %75 = load %struct.attr*, %struct.attr** %9, align 8
  %76 = call i32 @attrInsertBefore(%struct.TYPE_5__* %73, %struct.attr* %74, %struct.attr* %75)
  %77 = load %struct.attr*, %struct.attr** %15, align 8
  store %struct.attr* %77, %struct.attr** %10, align 8
  br label %64

78:                                               ; preds = %64
  ret void
}

declare dso_local i64 @uiAttributeGetType(i32) #1

declare dso_local i32 @attrRangeIntersect(%struct.attr*, i64*, i64*) #1

declare dso_local %struct.attr* @attrDropRange(%struct.TYPE_5__*, %struct.attr*, i64, i64, %struct.attr**) #1

declare dso_local i32 @attrInsertBefore(%struct.TYPE_5__*, %struct.attr*, %struct.attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
