; ModuleID = '/home/carl/AnghaBench/libui/common/extr_attrlist.c_attrGrow.c'
source_filename = "/home/carl/AnghaBench/libui/common/extr_attrlist.c_attrGrow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.attr* }
%struct.attr = type { i64, i64, %struct.attr* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.attr*, i64, i64)* @attrGrow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @attrGrow(%struct.TYPE_5__* %0, %struct.attr* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.attr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.attr*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store %struct.attr* %1, %struct.attr** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.attr*, %struct.attr** %6, align 8
  %11 = getelementptr inbounds %struct.attr, %struct.attr* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i64, i64* %8, align 8
  %17 = load %struct.attr*, %struct.attr** %6, align 8
  %18 = getelementptr inbounds %struct.attr, %struct.attr* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  br label %19

19:                                               ; preds = %15, %4
  %20 = load %struct.attr*, %struct.attr** %6, align 8
  %21 = getelementptr inbounds %struct.attr, %struct.attr* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ule i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %58

26:                                               ; preds = %19
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.attr*, %struct.attr** %6, align 8
  %29 = getelementptr inbounds %struct.attr, %struct.attr* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = load %struct.attr*, %struct.attr** %6, align 8
  %32 = call i32 @attrUnlink(%struct.TYPE_5__* %30, %struct.attr* %31)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.attr*, %struct.attr** %34, align 8
  store %struct.attr* %35, %struct.attr** %9, align 8
  br label %36

36:                                               ; preds = %49, %26
  %37 = load %struct.attr*, %struct.attr** %9, align 8
  %38 = icmp ne %struct.attr* %37, null
  br i1 %38, label %39, label %53

39:                                               ; preds = %36
  %40 = load %struct.attr*, %struct.attr** %9, align 8
  %41 = getelementptr inbounds %struct.attr, %struct.attr* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.attr*, %struct.attr** %6, align 8
  %44 = getelementptr inbounds %struct.attr, %struct.attr* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ugt i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %53

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.attr*, %struct.attr** %9, align 8
  %51 = getelementptr inbounds %struct.attr, %struct.attr* %50, i32 0, i32 2
  %52 = load %struct.attr*, %struct.attr** %51, align 8
  store %struct.attr* %52, %struct.attr** %9, align 8
  br label %36

53:                                               ; preds = %47, %36
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = load %struct.attr*, %struct.attr** %6, align 8
  %56 = load %struct.attr*, %struct.attr** %9, align 8
  %57 = call i32 @attrInsertBefore(%struct.TYPE_5__* %54, %struct.attr* %55, %struct.attr* %56)
  br label %58

58:                                               ; preds = %53, %25
  ret void
}

declare dso_local i32 @attrUnlink(%struct.TYPE_5__*, %struct.attr*) #1

declare dso_local i32 @attrInsertBefore(%struct.TYPE_5__*, %struct.attr*, %struct.attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
