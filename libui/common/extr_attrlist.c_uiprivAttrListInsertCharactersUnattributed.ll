; ModuleID = '/home/carl/AnghaBench/libui/common/extr_attrlist.c_uiprivAttrListInsertCharactersUnattributed.c'
source_filename = "/home/carl/AnghaBench/libui/common/extr_attrlist.c_uiprivAttrListInsertCharactersUnattributed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.attr* }
%struct.attr = type { i64, i64, %struct.attr* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uiprivAttrListInsertCharactersUnattributed(%struct.TYPE_5__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.attr*, align 8
  %8 = alloca %struct.attr*, align 8
  %9 = alloca %struct.attr*, align 8
  %10 = alloca %struct.attr*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store %struct.attr* null, %struct.attr** %8, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.attr*, %struct.attr** %12, align 8
  store %struct.attr* %13, %struct.attr** %7, align 8
  br label %14

14:                                               ; preds = %49, %3
  %15 = load %struct.attr*, %struct.attr** %7, align 8
  %16 = icmp ne %struct.attr* %15, null
  br i1 %16, label %17, label %53

17:                                               ; preds = %14
  %18 = load %struct.attr*, %struct.attr** %7, align 8
  %19 = getelementptr inbounds %struct.attr, %struct.attr* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp uge i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %53

24:                                               ; preds = %17
  %25 = load %struct.attr*, %struct.attr** %7, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @attrHasPos(%struct.attr* %25, i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %49

30:                                               ; preds = %24
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = load %struct.attr*, %struct.attr** %7, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call %struct.attr* @attrSplitAt(%struct.TYPE_5__* %31, %struct.attr* %32, i64 %33)
  store %struct.attr* %34, %struct.attr** %9, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.attr*, %struct.attr** %9, align 8
  %37 = getelementptr inbounds %struct.attr, %struct.attr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %38, %35
  store i64 %39, i64* %37, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.attr*, %struct.attr** %9, align 8
  %42 = getelementptr inbounds %struct.attr, %struct.attr* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %43, %40
  store i64 %44, i64* %42, align 8
  %45 = load %struct.attr*, %struct.attr** %8, align 8
  %46 = load %struct.attr*, %struct.attr** %9, align 8
  %47 = getelementptr inbounds %struct.attr, %struct.attr* %46, i32 0, i32 2
  store %struct.attr* %45, %struct.attr** %47, align 8
  %48 = load %struct.attr*, %struct.attr** %9, align 8
  store %struct.attr* %48, %struct.attr** %8, align 8
  br label %49

49:                                               ; preds = %30, %29
  %50 = load %struct.attr*, %struct.attr** %7, align 8
  %51 = getelementptr inbounds %struct.attr, %struct.attr* %50, i32 0, i32 2
  %52 = load %struct.attr*, %struct.attr** %51, align 8
  store %struct.attr* %52, %struct.attr** %7, align 8
  br label %14

53:                                               ; preds = %23, %14
  br label %54

54:                                               ; preds = %57, %53
  %55 = load %struct.attr*, %struct.attr** %8, align 8
  %56 = icmp ne %struct.attr* %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load %struct.attr*, %struct.attr** %8, align 8
  %59 = getelementptr inbounds %struct.attr, %struct.attr* %58, i32 0, i32 2
  %60 = load %struct.attr*, %struct.attr** %59, align 8
  store %struct.attr* %60, %struct.attr** %10, align 8
  %61 = load %struct.attr*, %struct.attr** %8, align 8
  %62 = getelementptr inbounds %struct.attr, %struct.attr* %61, i32 0, i32 2
  store %struct.attr* null, %struct.attr** %62, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = load %struct.attr*, %struct.attr** %8, align 8
  %65 = load %struct.attr*, %struct.attr** %7, align 8
  %66 = call i32 @attrInsertBefore(%struct.TYPE_5__* %63, %struct.attr* %64, %struct.attr* %65)
  %67 = load %struct.attr*, %struct.attr** %10, align 8
  store %struct.attr* %67, %struct.attr** %8, align 8
  br label %54

68:                                               ; preds = %54
  br label %69

69:                                               ; preds = %83, %68
  %70 = load %struct.attr*, %struct.attr** %7, align 8
  %71 = icmp ne %struct.attr* %70, null
  br i1 %71, label %72, label %87

72:                                               ; preds = %69
  %73 = load i64, i64* %6, align 8
  %74 = load %struct.attr*, %struct.attr** %7, align 8
  %75 = getelementptr inbounds %struct.attr, %struct.attr* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add i64 %76, %73
  store i64 %77, i64* %75, align 8
  %78 = load i64, i64* %6, align 8
  %79 = load %struct.attr*, %struct.attr** %7, align 8
  %80 = getelementptr inbounds %struct.attr, %struct.attr* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = add i64 %81, %78
  store i64 %82, i64* %80, align 8
  br label %83

83:                                               ; preds = %72
  %84 = load %struct.attr*, %struct.attr** %7, align 8
  %85 = getelementptr inbounds %struct.attr, %struct.attr* %84, i32 0, i32 2
  %86 = load %struct.attr*, %struct.attr** %85, align 8
  store %struct.attr* %86, %struct.attr** %7, align 8
  br label %69

87:                                               ; preds = %69
  ret void
}

declare dso_local i32 @attrHasPos(%struct.attr*, i64) #1

declare dso_local %struct.attr* @attrSplitAt(%struct.TYPE_5__*, %struct.attr*, i64) #1

declare dso_local i32 @attrInsertBefore(%struct.TYPE_5__*, %struct.attr*, %struct.attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
