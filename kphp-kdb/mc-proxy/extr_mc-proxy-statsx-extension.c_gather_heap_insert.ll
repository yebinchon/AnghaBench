; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-statsx-extension.c_gather_heap_insert.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-statsx-extension.c_gather_heap_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64, i64 }
%struct.gather_entry = type { i32, i32, i32, i64 }

@GH_N = common dso_local global i64 0, align 8
@MAX_CLUSTER_SERVERS = common dso_local global i64 0, align 8
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"GE->num = %d, GE->res_read = %d, GE->data = %p\0A\00", align 1
@GH_mode = common dso_local global i32 0, align 4
@FLAG_DOUBLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"gather_heap_insert: %d elements (size %d)\0A\00", align 1
@GH_total = common dso_local global i32 0, align 4
@GH_E = common dso_local global %struct.TYPE_5__* null, align 8
@GH = common dso_local global %struct.TYPE_5__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gather_entry*)* @gather_heap_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gather_heap_insert(%struct.gather_entry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gather_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.gather_entry* %0, %struct.gather_entry** %3, align 8
  %11 = load i64, i64* @GH_N, align 8
  %12 = load i64, i64* @MAX_CLUSTER_SERVERS, align 8
  %13 = icmp ult i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %17 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %18, 4
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %22 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %20, %1
  %26 = load i32, i32* @verbosity, align 4
  %27 = icmp sge i32 %26, 3
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = load i32, i32* @stderr, align 4
  %30 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %31 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %34 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %37 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35, i64 %38)
  br label %40

40:                                               ; preds = %28, %25
  store i32 0, i32* %2, align 4
  br label %141

41:                                               ; preds = %20
  %42 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %43 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = ashr i32 %44, 2
  store i32 %45, i32* %4, align 4
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* @GH_mode, align 4
  %47 = load i32, i32* @FLAG_DOUBLE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 2, i32 1
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %4, align 4
  %54 = sdiv i32 %53, %52
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %6, align 4
  %57 = mul nsw i32 %55, %56
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* @verbosity, align 4
  %59 = icmp sge i32 %58, 3
  br i1 %59, label %60, label %69

60:                                               ; preds = %41
  %61 = load i32, i32* @stderr, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %64 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = ashr i32 %65, 2
  %67 = sub nsw i32 %66, 1
  %68 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %67)
  br label %69

69:                                               ; preds = %60, %41
  %70 = load i32, i32* %4, align 4
  %71 = icmp sle i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 0, i32* %2, align 4
  br label %141

73:                                               ; preds = %69
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @GH_total, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* @GH_total, align 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** @GH_E, align 8
  %78 = load i64, i64* @GH_N, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i64 %78
  store %struct.TYPE_5__* %79, %struct.TYPE_5__** %7, align 8
  %80 = load i32, i32* %4, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %84 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 3
  store i64 %85, i64* %87, align 8
  %88 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %89 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %92 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = sdiv i32 %93, 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %90, %95
  %97 = add nsw i64 %96, 1
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 2
  store i64 %97, i64* %99, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %101 = call i32 @load_heap_v(%struct.TYPE_5__* %100)
  %102 = load i64, i64* @GH_N, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* @GH_N, align 8
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %8, align 4
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %10, align 8
  br label %108

108:                                              ; preds = %124, %73
  %109 = load i32, i32* %8, align 4
  %110 = icmp sgt i32 %109, 1
  br i1 %110, label %111, label %135

111:                                              ; preds = %108
  %112 = load i32, i32* %8, align 4
  %113 = ashr i32 %112, 1
  store i32 %113, i32* %9, align 4
  %114 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @GH, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %114, i64 %116
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* %10, align 8
  %122 = icmp ule i64 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %111
  br label %135

124:                                              ; preds = %111
  %125 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @GH, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %125, i64 %127
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @GH, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %130, i64 %132
  store %struct.TYPE_5__* %129, %struct.TYPE_5__** %133, align 8
  %134 = load i32, i32* %9, align 4
  store i32 %134, i32* %8, align 4
  br label %108

135:                                              ; preds = %123, %108
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %137 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @GH, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %137, i64 %139
  store %struct.TYPE_5__* %136, %struct.TYPE_5__** %140, align 8
  store i32 1, i32* %2, align 4
  br label %141

141:                                              ; preds = %135, %72, %40
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @load_heap_v(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
