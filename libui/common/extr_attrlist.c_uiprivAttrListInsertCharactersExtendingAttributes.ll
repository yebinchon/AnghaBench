; ModuleID = '/home/carl/AnghaBench/libui/common/extr_attrlist.c_uiprivAttrListInsertCharactersExtendingAttributes.c'
source_filename = "/home/carl/AnghaBench/libui/common/extr_attrlist.c_uiprivAttrListInsertCharactersExtendingAttributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.attr* }
%struct.attr = type { i64, i64, %struct.attr* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uiprivAttrListInsertCharactersExtendingAttributes(%struct.TYPE_3__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.attr*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.attr*, %struct.attr** %9, align 8
  store %struct.attr* %10, %struct.attr** %7, align 8
  br label %11

11:                                               ; preds = %55, %3
  %12 = load %struct.attr*, %struct.attr** %7, align 8
  %13 = icmp ne %struct.attr* %12, null
  br i1 %13, label %14, label %59

14:                                               ; preds = %11
  %15 = load %struct.attr*, %struct.attr** %7, align 8
  %16 = getelementptr inbounds %struct.attr, %struct.attr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.attr*, %struct.attr** %7, align 8
  %23 = getelementptr inbounds %struct.attr, %struct.attr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %24, %21
  store i64 %25, i64* %23, align 8
  br label %42

26:                                               ; preds = %14
  %27 = load %struct.attr*, %struct.attr** %7, align 8
  %28 = getelementptr inbounds %struct.attr, %struct.attr* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load i64, i64* %5, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.attr*, %struct.attr** %7, align 8
  %38 = getelementptr inbounds %struct.attr, %struct.attr* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, %36
  store i64 %40, i64* %38, align 8
  br label %41

41:                                               ; preds = %35, %32, %26
  br label %42

42:                                               ; preds = %41, %20
  %43 = load %struct.attr*, %struct.attr** %7, align 8
  %44 = getelementptr inbounds %struct.attr, %struct.attr* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %5, align 8
  %47 = icmp ule i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.attr*, %struct.attr** %7, align 8
  %51 = getelementptr inbounds %struct.attr, %struct.attr* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, %49
  store i64 %53, i64* %51, align 8
  br label %54

54:                                               ; preds = %48, %42
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.attr*, %struct.attr** %7, align 8
  %57 = getelementptr inbounds %struct.attr, %struct.attr* %56, i32 0, i32 2
  %58 = load %struct.attr*, %struct.attr** %57, align 8
  store %struct.attr* %58, %struct.attr** %7, align 8
  br label %11

59:                                               ; preds = %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
