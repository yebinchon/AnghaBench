; ModuleID = '/home/carl/AnghaBench/japronto/src/japronto/router/extr_match_dict.c_MatchDict_entries_to_dict.c'
source_filename = "/home/carl/AnghaBench/japronto/src/japronto/router/extr_match_dict.c_MatchDict_entries_to_dict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @MatchDict_entries_to_dict(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32* null, i32** %5, align 8
  %9 = call i32* (...) @PyDict_New()
  store i32* %9, i32** %5, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %64

12:                                               ; preds = %2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %6, align 8
  br label %14

14:                                               ; preds = %60, %12
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %17
  %19 = icmp ult %struct.TYPE_3__* %15, %18
  br i1 %19, label %20, label %63

20:                                               ; preds = %14
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32* @PyUnicode_FromStringAndSize(i32 %23, i32 %26)
  store i32* %27, i32** %7, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  br label %48

30:                                               ; preds = %20
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32* @PyUnicode_FromStringAndSize(i32 %33, i32 %36)
  store i32* %37, i32** %8, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  br label %48

40:                                               ; preds = %30
  %41 = load i32*, i32** %5, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @PyDict_SetItem(i32* %41, i32* %42, i32* %43)
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %48

47:                                               ; preds = %40
  br label %51

48:                                               ; preds = %46, %39, %29
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @Py_XDECREF(i32* %49)
  store i32* null, i32** %5, align 8
  br label %51

51:                                               ; preds = %48, %47
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @Py_XDECREF(i32* %52)
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @Py_XDECREF(i32* %54)
  %56 = load i32*, i32** %5, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  br label %64

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 1
  store %struct.TYPE_3__* %62, %struct.TYPE_3__** %6, align 8
  br label %14

63:                                               ; preds = %14
  br label %67

64:                                               ; preds = %58, %11
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @Py_XDECREF(i32* %65)
  store i32* null, i32** %5, align 8
  br label %67

67:                                               ; preds = %64, %63
  %68 = load i32*, i32** %5, align 8
  ret i32* %68
}

declare dso_local i32* @PyDict_New(...) #1

declare dso_local i32* @PyUnicode_FromStringAndSize(i32, i32) #1

declare dso_local i32 @PyDict_SetItem(i32*, i32*, i32*) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
