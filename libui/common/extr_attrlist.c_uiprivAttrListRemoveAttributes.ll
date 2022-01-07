; ModuleID = '/home/carl/AnghaBench/libui/common/extr_attrlist.c_uiprivAttrListRemoveAttributes.c'
source_filename = "/home/carl/AnghaBench/libui/common/extr_attrlist.c_uiprivAttrListRemoveAttributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.attr* }
%struct.attr = type { i64, %struct.attr* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uiprivAttrListRemoveAttributes(%struct.TYPE_5__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.attr*, align 8
  %8 = alloca %struct.attr*, align 8
  %9 = alloca %struct.attr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.attr*, align 8
  %13 = alloca %struct.attr*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store %struct.attr* null, %struct.attr** %8, align 8
  store %struct.attr* null, %struct.attr** %9, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.attr*, %struct.attr** %15, align 8
  store %struct.attr* %16, %struct.attr** %7, align 8
  br label %17

17:                                               ; preds = %49, %48, %3
  %18 = load %struct.attr*, %struct.attr** %7, align 8
  %19 = icmp ne %struct.attr* %18, null
  br i1 %19, label %20, label %53

20:                                               ; preds = %17
  %21 = load %struct.attr*, %struct.attr** %7, align 8
  %22 = getelementptr inbounds %struct.attr, %struct.attr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp uge i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load %struct.attr*, %struct.attr** %7, align 8
  store %struct.attr* %27, %struct.attr** %9, align 8
  br label %53

28:                                               ; preds = %20
  %29 = load i64, i64* %5, align 8
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %6, align 8
  store i64 %30, i64* %11, align 8
  %31 = load %struct.attr*, %struct.attr** %7, align 8
  %32 = call i32 @attrRangeIntersect(%struct.attr* %31, i64* %10, i64* %11)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %49

35:                                               ; preds = %28
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = load %struct.attr*, %struct.attr** %7, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call %struct.attr* @attrDropRange(%struct.TYPE_5__* %36, %struct.attr* %37, i64 %38, i64 %39, %struct.attr** %12)
  store %struct.attr* %40, %struct.attr** %7, align 8
  %41 = load %struct.attr*, %struct.attr** %12, align 8
  %42 = icmp ne %struct.attr* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %35
  %44 = load %struct.attr*, %struct.attr** %8, align 8
  %45 = load %struct.attr*, %struct.attr** %12, align 8
  %46 = getelementptr inbounds %struct.attr, %struct.attr* %45, i32 0, i32 1
  store %struct.attr* %44, %struct.attr** %46, align 8
  %47 = load %struct.attr*, %struct.attr** %12, align 8
  store %struct.attr* %47, %struct.attr** %8, align 8
  br label %48

48:                                               ; preds = %43, %35
  br label %17

49:                                               ; preds = %34
  %50 = load %struct.attr*, %struct.attr** %7, align 8
  %51 = getelementptr inbounds %struct.attr, %struct.attr* %50, i32 0, i32 1
  %52 = load %struct.attr*, %struct.attr** %51, align 8
  store %struct.attr* %52, %struct.attr** %7, align 8
  br label %17

53:                                               ; preds = %26, %17
  br label %54

54:                                               ; preds = %57, %53
  %55 = load %struct.attr*, %struct.attr** %8, align 8
  %56 = icmp ne %struct.attr* %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load %struct.attr*, %struct.attr** %8, align 8
  %59 = getelementptr inbounds %struct.attr, %struct.attr* %58, i32 0, i32 1
  %60 = load %struct.attr*, %struct.attr** %59, align 8
  store %struct.attr* %60, %struct.attr** %13, align 8
  %61 = load %struct.attr*, %struct.attr** %8, align 8
  %62 = getelementptr inbounds %struct.attr, %struct.attr* %61, i32 0, i32 1
  store %struct.attr* null, %struct.attr** %62, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = load %struct.attr*, %struct.attr** %8, align 8
  %65 = load %struct.attr*, %struct.attr** %7, align 8
  %66 = call i32 @attrInsertBefore(%struct.TYPE_5__* %63, %struct.attr* %64, %struct.attr* %65)
  %67 = load %struct.attr*, %struct.attr** %13, align 8
  store %struct.attr* %67, %struct.attr** %8, align 8
  br label %54

68:                                               ; preds = %54
  ret void
}

declare dso_local i32 @attrRangeIntersect(%struct.attr*, i64*, i64*) #1

declare dso_local %struct.attr* @attrDropRange(%struct.TYPE_5__*, %struct.attr*, i64, i64, %struct.attr**) #1

declare dso_local i32 @attrInsertBefore(%struct.TYPE_5__*, %struct.attr*, %struct.attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
