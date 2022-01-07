; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-results-data.c_tree_get_pairs_hostid_result.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-results-data.c_tree_get_pairs_hostid_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.pair_hostid_result = type { i32, i64 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_4__*, i64, %struct.TYPE_4__* }

@HOSTS = common dso_local global %struct.TYPE_5__** null, align 8
@hosts = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pair_hostid_result*, i32*, i64, %struct.TYPE_4__*)* @tree_get_pairs_hostid_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tree_get_pairs_hostid_result(%struct.pair_hostid_result* %0, i32* %1, i64 %2, %struct.TYPE_4__* %3) #0 {
  %5 = alloca %struct.pair_hostid_result*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pair_hostid_result* %0, %struct.pair_hostid_result** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %8, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %12 = icmp eq %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  br label %149

14:                                               ; preds = %4
  %15 = load %struct.pair_hostid_result*, %struct.pair_hostid_result** %5, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  call void @tree_get_pairs_hostid_result(%struct.pair_hostid_result* %15, i32* %16, i64 %17, %struct.TYPE_4__* %20)
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  br label %35

25:                                               ; preds = %14
  %26 = load %struct.pair_hostid_result*, %struct.pair_hostid_result** %5, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.pair_hostid_result, %struct.pair_hostid_result* %26, i64 %30
  %32 = getelementptr inbounds %struct.pair_hostid_result, %struct.pair_hostid_result* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  br label %35

35:                                               ; preds = %25, %24
  %36 = phi i32 [ 1, %24 ], [ %34, %25 ]
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %87, %35
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %90

44:                                               ; preds = %38
  %45 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @HOSTS, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %45, i64 %47
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %86

54:                                               ; preds = %44
  %55 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @HOSTS, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %55, i64 %57
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %86, label %63

63:                                               ; preds = %54
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @hosts, align 4
  %67 = icmp slt i32 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.pair_hostid_result*, %struct.pair_hostid_result** %5, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.pair_hostid_result, %struct.pair_hostid_result* %71, i64 %74
  %76 = getelementptr inbounds %struct.pair_hostid_result, %struct.pair_hostid_result* %75, i32 0, i32 0
  store i32 %70, i32* %76, align 8
  %77 = load %struct.pair_hostid_result*, %struct.pair_hostid_result** %5, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.pair_hostid_result, %struct.pair_hostid_result* %77, i64 %80
  %82 = getelementptr inbounds %struct.pair_hostid_result, %struct.pair_hostid_result* %81, i32 0, i32 1
  store i64 0, i64* %82, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %63, %54, %44
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %10, align 4
  br label %38

90:                                               ; preds = %38
  %91 = load i32*, i32** %6, align 8
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @hosts, align 4
  %94 = icmp slt i32 %92, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert(i32 %95)
  %97 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @HOSTS, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %97, i64 %101
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %7, align 8
  %107 = icmp eq i64 %105, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  %110 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @HOSTS, align 8
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %110, i64 %114
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %142, label %120

120:                                              ; preds = %90
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.pair_hostid_result*, %struct.pair_hostid_result** %5, align 8
  %125 = load i32*, i32** %6, align 8
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.pair_hostid_result, %struct.pair_hostid_result* %124, i64 %127
  %129 = getelementptr inbounds %struct.pair_hostid_result, %struct.pair_hostid_result* %128, i32 0, i32 0
  store i32 %123, i32* %129, align 8
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.pair_hostid_result*, %struct.pair_hostid_result** %5, align 8
  %134 = load i32*, i32** %6, align 8
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.pair_hostid_result, %struct.pair_hostid_result* %133, i64 %136
  %138 = getelementptr inbounds %struct.pair_hostid_result, %struct.pair_hostid_result* %137, i32 0, i32 1
  store i64 %132, i64* %138, align 8
  %139 = load i32*, i32** %6, align 8
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %120, %90
  %143 = load %struct.pair_hostid_result*, %struct.pair_hostid_result** %5, align 8
  %144 = load i32*, i32** %6, align 8
  %145 = load i64, i64* %7, align 8
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  call void @tree_get_pairs_hostid_result(%struct.pair_hostid_result* %143, i32* %144, i64 %145, %struct.TYPE_4__* %148)
  br label %149

149:                                              ; preds = %142, %13
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
