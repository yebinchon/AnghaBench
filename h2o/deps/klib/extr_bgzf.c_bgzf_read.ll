; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/extr_bgzf.c_bgzf_read.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/extr_bgzf.c_bgzf_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8, i32, i32, i64, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bgzf_read(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %9, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp sle i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %121

18:                                               ; preds = %3
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i8, i8* %20, align 8
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 114
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  br label %26

26:                                               ; preds = %71, %18
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %99

30:                                               ; preds = %26
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %33, %36
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp sle i32 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %30
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %42 = call i64 @bgzf_read_block(%struct.TYPE_4__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i64 -1, i64* %4, align 8
  br label %121

45:                                               ; preds = %40
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %48, %51
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp sle i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %99

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %56, %30
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* %8, align 8
  %60 = sub nsw i64 %58, %59
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = icmp slt i64 %60, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* %8, align 8
  %67 = sub nsw i64 %65, %66
  br label %71

68:                                               ; preds = %57
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  br label %71

71:                                               ; preds = %68, %64
  %72 = phi i64 [ %67, %64 ], [ %70, %68 ]
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %10, align 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 5
  %76 = load i32*, i32** %75, align 8
  store i32* %76, i32** %12, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = load i32*, i32** %12, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %78, i64 %82
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @memcpy(i32* %77, i32* %83, i32 %84)
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, %86
  store i32 %90, i32* %88, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load i32*, i32** %9, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  store i32* %94, i32** %9, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* %8, align 8
  %98 = add nsw i64 %97, %96
  store i64 %98, i64* %8, align 8
  br label %26

99:                                               ; preds = %55, %26
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %102, %105
  br i1 %106, label %107, label %119

107:                                              ; preds = %99
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = call i32 @_bgzf_tell(i32 %111)
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 4
  store i32 %112, i32* %114, align 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  store i32 0, i32* %116, align 4
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 2
  store i32 0, i32* %118, align 8
  br label %119

119:                                              ; preds = %107, %99
  %120 = load i64, i64* %8, align 8
  store i64 %120, i64* %4, align 8
  br label %121

121:                                              ; preds = %119, %44, %17
  %122 = load i64, i64* %4, align 8
  ret i64 %122
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @bgzf_read_block(%struct.TYPE_4__*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @_bgzf_tell(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
