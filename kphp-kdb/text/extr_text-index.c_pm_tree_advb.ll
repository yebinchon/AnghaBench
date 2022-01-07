; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_pm_tree_advb.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_pm_tree_advb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.pm_tree_builder = type { i32*, i64, i64* }

@FREQ_INFTY = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"Out of package-merge cell memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, %struct.pm_tree_builder*)* @pm_tree_advb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm_tree_advb(%struct.TYPE_4__* %0, %struct.pm_tree_builder* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.pm_tree_builder*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.pm_tree_builder* %1, %struct.pm_tree_builder** %4, align 8
  %9 = load %struct.pm_tree_builder*, %struct.pm_tree_builder** %4, align 8
  %10 = getelementptr inbounds %struct.pm_tree_builder, %struct.pm_tree_builder* %9, i32 1
  store %struct.pm_tree_builder* %10, %struct.pm_tree_builder** %4, align 8
  %11 = load %struct.pm_tree_builder*, %struct.pm_tree_builder** %4, align 8
  %12 = getelementptr inbounds %struct.pm_tree_builder, %struct.pm_tree_builder* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.pm_tree_builder*, %struct.pm_tree_builder** %4, align 8
  %15 = getelementptr inbounds %struct.pm_tree_builder, %struct.pm_tree_builder* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %2
  %22 = load %struct.pm_tree_builder*, %struct.pm_tree_builder** %4, align 8
  %23 = getelementptr inbounds %struct.pm_tree_builder, %struct.pm_tree_builder* %22, i32 -1
  store %struct.pm_tree_builder* %23, %struct.pm_tree_builder** %4, align 8
  %24 = load %struct.pm_tree_builder*, %struct.pm_tree_builder** %4, align 8
  %25 = getelementptr inbounds %struct.pm_tree_builder, %struct.pm_tree_builder* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 0, i32* %27, align 4
  %28 = load i8*, i8** @FREQ_INFTY, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = load %struct.pm_tree_builder*, %struct.pm_tree_builder** %4, align 8
  %31 = getelementptr inbounds %struct.pm_tree_builder, %struct.pm_tree_builder* %30, i32 0, i32 2
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 1
  store i64 %29, i64* %33, align 8
  %34 = load %struct.pm_tree_builder*, %struct.pm_tree_builder** %4, align 8
  %35 = getelementptr inbounds %struct.pm_tree_builder, %struct.pm_tree_builder* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  br label %152

36:                                               ; preds = %2
  %37 = load %struct.pm_tree_builder*, %struct.pm_tree_builder** %4, align 8
  %38 = getelementptr inbounds %struct.pm_tree_builder, %struct.pm_tree_builder* %37, i32 0, i32 2
  %39 = load i64*, i64** %38, align 8
  %40 = load %struct.pm_tree_builder*, %struct.pm_tree_builder** %4, align 8
  %41 = getelementptr inbounds %struct.pm_tree_builder, %struct.pm_tree_builder* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i64, i64* %39, i64 %42
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %6, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %46 = load %struct.pm_tree_builder*, %struct.pm_tree_builder** %4, align 8
  %47 = call i32 @pm_tree_advance(%struct.TYPE_4__* %45, %struct.pm_tree_builder* %46)
  %48 = load %struct.pm_tree_builder*, %struct.pm_tree_builder** %4, align 8
  %49 = getelementptr inbounds %struct.pm_tree_builder, %struct.pm_tree_builder* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.pm_tree_builder*, %struct.pm_tree_builder** %4, align 8
  %52 = getelementptr inbounds %struct.pm_tree_builder, %struct.pm_tree_builder* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %73, label %58

58:                                               ; preds = %36
  %59 = load %struct.pm_tree_builder*, %struct.pm_tree_builder** %4, align 8
  %60 = getelementptr inbounds %struct.pm_tree_builder, %struct.pm_tree_builder* %59, i32 -1
  store %struct.pm_tree_builder* %60, %struct.pm_tree_builder** %4, align 8
  %61 = load %struct.pm_tree_builder*, %struct.pm_tree_builder** %4, align 8
  %62 = getelementptr inbounds %struct.pm_tree_builder, %struct.pm_tree_builder* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  store i32 0, i32* %64, align 4
  %65 = load i8*, i8** @FREQ_INFTY, align 8
  %66 = ptrtoint i8* %65 to i64
  %67 = load %struct.pm_tree_builder*, %struct.pm_tree_builder** %4, align 8
  %68 = getelementptr inbounds %struct.pm_tree_builder, %struct.pm_tree_builder* %67, i32 0, i32 2
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 1
  store i64 %66, i64* %70, align 8
  %71 = load %struct.pm_tree_builder*, %struct.pm_tree_builder** %4, align 8
  %72 = getelementptr inbounds %struct.pm_tree_builder, %struct.pm_tree_builder* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  br label %152

73:                                               ; preds = %36
  %74 = load %struct.pm_tree_builder*, %struct.pm_tree_builder** %4, align 8
  %75 = getelementptr inbounds %struct.pm_tree_builder, %struct.pm_tree_builder* %74, i32 0, i32 2
  %76 = load i64*, i64** %75, align 8
  %77 = load %struct.pm_tree_builder*, %struct.pm_tree_builder** %4, align 8
  %78 = getelementptr inbounds %struct.pm_tree_builder, %struct.pm_tree_builder* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i64, i64* %76, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %6, align 8
  %83 = add nsw i64 %82, %81
  store i64 %83, i64* %6, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %85 = load %struct.pm_tree_builder*, %struct.pm_tree_builder** %4, align 8
  %86 = call i32 @pm_tree_advance(%struct.TYPE_4__* %84, %struct.pm_tree_builder* %85)
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %73
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 4
  br label %116

103:                                              ; preds = %73
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %106, align 4
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %103
  br label %112

112:                                              ; preds = %111, %103
  %113 = phi i1 [ false, %103 ], [ true, %111 ]
  %114 = zext i1 %113 to i32
  %115 = call i32 @assert(i32 %114)
  br label %116

116:                                              ; preds = %112, %93
  %117 = load i32, i32* %5, align 4
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  store i32 %117, i32* %122, align 4
  %123 = load i32, i32* %7, align 4
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  store i32 %123, i32* %128, align 4
  %129 = load %struct.pm_tree_builder*, %struct.pm_tree_builder** %4, align 8
  %130 = getelementptr inbounds %struct.pm_tree_builder, %struct.pm_tree_builder* %129, i32 -1
  store %struct.pm_tree_builder* %130, %struct.pm_tree_builder** %4, align 8
  %131 = load i32, i32* %8, align 4
  %132 = load %struct.pm_tree_builder*, %struct.pm_tree_builder** %4, align 8
  %133 = getelementptr inbounds %struct.pm_tree_builder, %struct.pm_tree_builder* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 1
  store i32 %131, i32* %135, align 4
  %136 = load i64, i64* %6, align 8
  %137 = load %struct.pm_tree_builder*, %struct.pm_tree_builder** %4, align 8
  %138 = getelementptr inbounds %struct.pm_tree_builder, %struct.pm_tree_builder* %137, i32 0, i32 2
  %139 = load i64*, i64** %138, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 1
  store i64 %136, i64* %140, align 8
  %141 = load i64, i64* %6, align 8
  %142 = load %struct.pm_tree_builder*, %struct.pm_tree_builder** %4, align 8
  %143 = getelementptr inbounds %struct.pm_tree_builder, %struct.pm_tree_builder* %142, i32 0, i32 2
  %144 = load i64*, i64** %143, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp slt i64 %141, %146
  %148 = zext i1 %147 to i32
  %149 = sext i32 %148 to i64
  %150 = load %struct.pm_tree_builder*, %struct.pm_tree_builder** %4, align 8
  %151 = getelementptr inbounds %struct.pm_tree_builder, %struct.pm_tree_builder* %150, i32 0, i32 1
  store i64 %149, i64* %151, align 8
  br label %152

152:                                              ; preds = %116, %58, %21
  ret void
}

declare dso_local i32 @pm_tree_advance(%struct.TYPE_4__*, %struct.pm_tree_builder*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
