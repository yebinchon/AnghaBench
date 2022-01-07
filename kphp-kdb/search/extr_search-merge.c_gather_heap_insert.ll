; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-merge.c_gather_heap_insert.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-merge.c_gather_heap_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.gather_entry = type { i64, i32, %struct.TYPE_6__* }

@GH_N = common dso_local global i64 0, align 8
@MAX_CLUSTER_SERVERS = common dso_local global i64 0, align 8
@GH_mode = common dso_local global i32 0, align 4
@g_double = common dso_local global i32 0, align 4
@GH_total = common dso_local global i32 0, align 4
@GH_E = common dso_local global %struct.TYPE_7__* null, align 8
@CHUNK_INTS = common dso_local global i32 0, align 4
@GH = common dso_local global %struct.TYPE_7__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gather_entry*)* @gather_heap_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gather_heap_insert(%struct.gather_entry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gather_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gather_entry* %0, %struct.gather_entry** %3, align 8
  %12 = load i64, i64* @GH_N, align 8
  %13 = load i64, i64* @MAX_CLUSTER_SERVERS, align 8
  %14 = icmp ult i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %18 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sle i64 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %1
  %22 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %23 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %24, 8
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %28 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %27, i32 0, i32 2
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26, %21, %1
  store i32 0, i32* %2, align 4
  br label %154

32:                                               ; preds = %26
  %33 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %34 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = ashr i32 %35, 2
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* @GH_mode, align 4
  %39 = load i32, i32* @g_double, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 3, i32 2
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %4, align 4
  %46 = sdiv i32 %45, %44
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %6, align 4
  %49 = mul nsw i32 %47, %48
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp sle i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %154

53:                                               ; preds = %32
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @GH_total, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* @GH_total, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** @GH_E, align 8
  %58 = load i64, i64* @GH_N, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i64 %58
  store %struct.TYPE_7__* %59, %struct.TYPE_7__** %7, align 8
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %64 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %63, i32 0, i32 2
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 5
  store %struct.TYPE_6__* %65, %struct.TYPE_6__** %67, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 5
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @CHUNK_INTS, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %53
  %82 = load i32, i32* %5, align 4
  br label %85

83:                                               ; preds = %53
  %84 = load i32, i32* @CHUNK_INTS, align 4
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ %84, %83 ]
  %87 = add nsw i32 %77, %86
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %91 = call i32 @load_heap_v(%struct.TYPE_7__* %90)
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %8, align 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  store i32 %97, i32* %9, align 4
  %98 = load i64, i64* @GH_N, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* @GH_N, align 8
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %10, align 4
  br label %101

101:                                              ; preds = %137, %85
  %102 = load i32, i32* %10, align 4
  %103 = icmp sgt i32 %102, 1
  br i1 %103, label %104, label %148

104:                                              ; preds = %101
  %105 = load i32, i32* %10, align 4
  %106 = ashr i32 %105, 1
  store i32 %106, i32* %11, align 4
  %107 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @GH, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %107, i64 %109
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %136, label %116

116:                                              ; preds = %104
  %117 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @GH, align 8
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %117, i64 %119
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %8, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %137

126:                                              ; preds = %116
  %127 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @GH, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %127, i64 %129
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %9, align 4
  %135 = icmp sle i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %126, %104
  br label %148

137:                                              ; preds = %126, %116
  %138 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @GH, align 8
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %138, i64 %140
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @GH, align 8
  %144 = load i32, i32* %10, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %143, i64 %145
  store %struct.TYPE_7__* %142, %struct.TYPE_7__** %146, align 8
  %147 = load i32, i32* %11, align 4
  store i32 %147, i32* %10, align 4
  br label %101

148:                                              ; preds = %136, %101
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %150 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @GH, align 8
  %151 = load i32, i32* %10, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %150, i64 %152
  store %struct.TYPE_7__* %149, %struct.TYPE_7__** %153, align 8
  store i32 1, i32* %2, align 4
  br label %154

154:                                              ; preds = %148, %52, %31
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @load_heap_v(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
