; ModuleID = '/home/carl/AnghaBench/libgit2/src/xdiff/extr_xdiffi.c_xdl_build_script.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/xdiff/extr_xdiffi.c_xdl_build_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i8*, i64 }
%struct.TYPE_5__ = type { i8*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdl_build_script(%struct.TYPE_7__* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32* null, i32** %6, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %8, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %9, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %10, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %11, align 8
  br label %30

30:                                               ; preds = %98, %2
  %31 = load i64, i64* %10, align 8
  %32 = icmp sge i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i64, i64* %11, align 8
  %35 = icmp sge i64 %34, 0
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi i1 [ true, %30 ], [ %35, %33 ]
  br i1 %37, label %38, label %103

38:                                               ; preds = %36
  %39 = load i8*, i8** %8, align 8
  %40 = load i64, i64* %10, align 8
  %41 = sub nsw i64 %40, 1
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %38
  %47 = load i8*, i8** %9, align 8
  %48 = load i64, i64* %11, align 8
  %49 = sub nsw i64 %48, 1
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %97

54:                                               ; preds = %46, %38
  %55 = load i64, i64* %10, align 8
  store i64 %55, i64* %12, align 8
  br label %56

56:                                               ; preds = %64, %54
  %57 = load i8*, i8** %8, align 8
  %58 = load i64, i64* %10, align 8
  %59 = sub nsw i64 %58, 1
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = icmp ne i8 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %10, align 8
  %66 = add nsw i64 %65, -1
  store i64 %66, i64* %10, align 8
  br label %56

67:                                               ; preds = %56
  %68 = load i64, i64* %11, align 8
  store i64 %68, i64* %13, align 8
  br label %69

69:                                               ; preds = %77, %67
  %70 = load i8*, i8** %9, align 8
  %71 = load i64, i64* %11, align 8
  %72 = sub nsw i64 %71, 1
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = icmp ne i8 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %11, align 8
  %79 = add nsw i64 %78, -1
  store i64 %79, i64* %11, align 8
  br label %69

80:                                               ; preds = %69
  %81 = load i32*, i32** %6, align 8
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* %11, align 8
  %84 = load i64, i64* %12, align 8
  %85 = load i64, i64* %10, align 8
  %86 = sub nsw i64 %84, %85
  %87 = load i64, i64* %13, align 8
  %88 = load i64, i64* %11, align 8
  %89 = sub nsw i64 %87, %88
  %90 = call i32* @xdl_add_change(i32* %81, i64 %82, i64 %83, i64 %86, i64 %89)
  store i32* %90, i32** %7, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %80
  %93 = load i32*, i32** %6, align 8
  %94 = call i32 @xdl_free_script(i32* %93)
  store i32 -1, i32* %3, align 4
  br label %106

95:                                               ; preds = %80
  %96 = load i32*, i32** %7, align 8
  store i32* %96, i32** %6, align 8
  br label %97

97:                                               ; preds = %95, %46
  br label %98

98:                                               ; preds = %97
  %99 = load i64, i64* %10, align 8
  %100 = add nsw i64 %99, -1
  store i64 %100, i64* %10, align 8
  %101 = load i64, i64* %11, align 8
  %102 = add nsw i64 %101, -1
  store i64 %102, i64* %11, align 8
  br label %30

103:                                              ; preds = %36
  %104 = load i32*, i32** %6, align 8
  %105 = load i32**, i32*** %5, align 8
  store i32* %104, i32** %105, align 8
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %103, %92
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32* @xdl_add_change(i32*, i64, i64, i64, i64) #1

declare dso_local i32 @xdl_free_script(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
