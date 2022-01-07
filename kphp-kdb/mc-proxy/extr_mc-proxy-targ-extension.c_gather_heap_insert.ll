; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-targ-extension.c_gather_heap_insert.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-targ-extension.c_gather_heap_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64, i64 }
%struct.gather_entry = type { i64, i32, i32, i64 }

@GH_N = common dso_local global i64 0, align 8
@MAX_CLUSTER_SERVERS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"num = %d, res_read = %d, data = %p\0A\00", align 1
@Q_order = common dso_local global i32 0, align 4
@Q_DOUBLE = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
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
  %18 = load i64, i64* %17, align 8
  %19 = icmp sle i64 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %1
  %21 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %22 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %27 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %25, %20, %1
  %31 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %32 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %35 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %38 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @vkprintf(i32 4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %33, i32 %36, i64 %39)
  store i32 0, i32* %2, align 4
  br label %142

41:                                               ; preds = %25
  %42 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %43 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = ashr i32 %44, 2
  %46 = sub nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* @Q_order, align 4
  %48 = load i32, i32* @Q_DOUBLE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 2, i32 1
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %4, align 4
  %55 = sdiv i32 %54, %53
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %6, align 4
  %58 = mul nsw i32 %56, %57
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* @verbosity, align 4
  %60 = icmp sge i32 %59, 3
  br i1 %60, label %61, label %70

61:                                               ; preds = %41
  %62 = load i32, i32* @stderr, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %65 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = ashr i32 %66, 2
  %68 = sub nsw i32 %67, 1
  %69 = call i32 @fprintf(i32 %62, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %68)
  br label %70

70:                                               ; preds = %61, %41
  %71 = load i32, i32* %4, align 4
  %72 = icmp sle i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 0, i32* %2, align 4
  br label %142

74:                                               ; preds = %70
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @GH_total, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* @GH_total, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** @GH_E, align 8
  %79 = load i64, i64* @GH_N, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i64 %79
  store %struct.TYPE_5__* %80, %struct.TYPE_5__** %7, align 8
  %81 = load i32, i32* %4, align 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %85 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 3
  store i64 %86, i64* %88, align 8
  %89 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %90 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %93 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = sdiv i32 %94, 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %91, %96
  %98 = add nsw i64 %97, 1
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 2
  store i64 %98, i64* %100, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %102 = call i32 @load_heap_v(%struct.TYPE_5__* %101)
  %103 = load i64, i64* @GH_N, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* @GH_N, align 8
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %8, align 4
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %10, align 8
  br label %109

109:                                              ; preds = %125, %74
  %110 = load i32, i32* %8, align 4
  %111 = icmp sgt i32 %110, 1
  br i1 %111, label %112, label %136

112:                                              ; preds = %109
  %113 = load i32, i32* %8, align 4
  %114 = ashr i32 %113, 1
  store i32 %114, i32* %9, align 4
  %115 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @GH, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %115, i64 %117
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %10, align 8
  %123 = icmp ule i64 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %112
  br label %136

125:                                              ; preds = %112
  %126 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @GH, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %126, i64 %128
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @GH, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %131, i64 %133
  store %struct.TYPE_5__* %130, %struct.TYPE_5__** %134, align 8
  %135 = load i32, i32* %9, align 4
  store i32 %135, i32* %8, align 4
  br label %109

136:                                              ; preds = %124, %109
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %138 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @GH, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %138, i64 %140
  store %struct.TYPE_5__* %137, %struct.TYPE_5__** %141, align 8
  store i32 1, i32* %2, align 4
  br label %142

142:                                              ; preds = %136, %73, %30
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i64, i32, i64) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @load_heap_v(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
