; ModuleID = '/home/carl/AnghaBench/git/xdiff/extr_xmerge.c_xdl_append_merge.c'
source_filename = "/home/carl/AnghaBench/git/xdiff/extr_xmerge.c_xdl_append_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64, i32, i64, i64, %struct.TYPE_4__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__**, i32, i64, i64, i64, i64, i64, i64)* @xdl_append_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdl_append_merge(%struct.TYPE_4__** %0, i32 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %10, align 8
  store i32 %1, i32* %11, align 4
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i64 %7, i64* %17, align 8
  %19 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %10, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %18, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %23, label %80

23:                                               ; preds = %8
  %24 = load i64, i64* %14, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = icmp sle i64 %24, %31
  br i1 %32, label %43, label %33

33:                                               ; preds = %23
  %34 = load i64, i64* %16, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = icmp sle i64 %34, %41
  br i1 %42, label %43, label %80

43:                                               ; preds = %33, %23
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %44, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 4
  store i32 0, i32* %51, align 8
  br label %52

52:                                               ; preds = %49, %43
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* %13, align 8
  %55 = add nsw i64 %53, %54
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 6
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %55, %58
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 5
  store i64 %59, i64* %61, align 8
  %62 = load i64, i64* %14, align 8
  %63 = load i64, i64* %15, align 8
  %64 = add nsw i64 %62, %63
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %64, %67
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  %71 = load i64, i64* %16, align 8
  %72 = load i64, i64* %17, align 8
  %73 = add nsw i64 %71, %72
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %73, %76
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 3
  store i64 %77, i64* %79, align 8
  br label %120

80:                                               ; preds = %33, %8
  %81 = call %struct.TYPE_4__* @xdl_malloc(i32 64)
  store %struct.TYPE_4__* %81, %struct.TYPE_4__** %18, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %83 = icmp ne %struct.TYPE_4__* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  store i32 -1, i32* %9, align 4
  br label %121

85:                                               ; preds = %80
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 7
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %87, align 8
  %88 = load i32, i32* %11, align 4
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 8
  %91 = load i64, i64* %12, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 6
  store i64 %91, i64* %93, align 8
  %94 = load i64, i64* %13, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 5
  store i64 %94, i64* %96, align 8
  %97 = load i64, i64* %14, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load i64, i64* %15, align 8
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  store i64 %100, i64* %102, align 8
  %103 = load i64, i64* %16, align 8
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  store i64 %103, i64* %105, align 8
  %106 = load i64, i64* %17, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 3
  store i64 %106, i64* %108, align 8
  %109 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %10, align 8
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = icmp ne %struct.TYPE_4__* %110, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %85
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %114 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %10, align 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 7
  store %struct.TYPE_4__* %113, %struct.TYPE_4__** %116, align 8
  br label %117

117:                                              ; preds = %112, %85
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %119 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %10, align 8
  store %struct.TYPE_4__* %118, %struct.TYPE_4__** %119, align 8
  br label %120

120:                                              ; preds = %117, %52
  store i32 0, i32* %9, align 4
  br label %121

121:                                              ; preds = %120, %84
  %122 = load i32, i32* %9, align 4
  ret i32 %122
}

declare dso_local %struct.TYPE_4__* @xdl_malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
