; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-search-extension.c_gather_heap_insert.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-search-extension.c_gather_heap_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64, i64 }
%struct.gather_entry = type { i64, i32, i32, i64 }

@GH_N = common dso_local global i64 0, align 8
@MAX_CLUSTER_SERVERS = common dso_local global i64 0, align 8
@SEARCH_EXTENSION = common dso_local global i64 0, align 8
@SEARCHX_EXTENSION = common dso_local global i64 0, align 8
@GH_mode = common dso_local global i32 0, align 4
@g_double = common dso_local global i32 0, align 4
@TARG_EXTENSION = common dso_local global i64 0, align 8
@HINTS_MERGE_EXTENSION = common dso_local global i64 0, align 8
@g_hash = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"gather_heap_insert: %d elements (size %d)\0A\00", align 1
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
  %24 = icmp slt i32 %23, 8
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %27 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %20, %1
  store i32 0, i32* %2, align 4
  br label %165

31:                                               ; preds = %25
  %32 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %33 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = ashr i32 %34, 2
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  store i32 %36, i32* %5, align 4
  %37 = load i64, i64* @SEARCH_EXTENSION, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %31
  %40 = load i64, i64* @SEARCHX_EXTENSION, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39, %31
  %43 = load i32, i32* @GH_mode, align 4
  %44 = load i32, i32* @g_double, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 3, i32 2
  store i32 %48, i32* %6, align 4
  br label %67

49:                                               ; preds = %39
  %50 = load i64, i64* @TARG_EXTENSION, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load i32, i32* @GH_mode, align 4
  %54 = load i32, i32* @g_double, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 2, i32 1
  store i32 %58, i32* %6, align 4
  br label %66

59:                                               ; preds = %49
  %60 = load i64, i64* @HINTS_MERGE_EXTENSION, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 3, i32* %6, align 4
  br label %65

63:                                               ; preds = %59
  %64 = call i32 @assert(i32 0)
  br label %65

65:                                               ; preds = %63, %62
  br label %66

66:                                               ; preds = %65, %52
  br label %67

67:                                               ; preds = %66, %42
  %68 = load i32, i32* @GH_mode, align 4
  %69 = load i32, i32* @g_hash, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 2
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %72, %67
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %4, align 4
  %78 = sdiv i32 %77, %76
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* %6, align 4
  %81 = mul nsw i32 %79, %80
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* @verbosity, align 4
  %83 = icmp sge i32 %82, 3
  br i1 %83, label %84, label %93

84:                                               ; preds = %75
  %85 = load i32, i32* @stderr, align 4
  %86 = load i32, i32* %4, align 4
  %87 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %88 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = ashr i32 %89, 2
  %91 = sub nsw i32 %90, 1
  %92 = call i32 @fprintf(i32 %85, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %91)
  br label %93

93:                                               ; preds = %84, %75
  %94 = load i32, i32* %4, align 4
  %95 = icmp sle i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i32 0, i32* %2, align 4
  br label %165

97:                                               ; preds = %93
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @GH_total, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* @GH_total, align 4
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** @GH_E, align 8
  %102 = load i64, i64* @GH_N, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i64 %102
  store %struct.TYPE_5__* %103, %struct.TYPE_5__** %7, align 8
  %104 = load i32, i32* %4, align 4
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %108 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 3
  store i64 %109, i64* %111, align 8
  %112 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %113 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %116 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = sdiv i32 %117, 4
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %114, %119
  %121 = add nsw i64 %120, 1
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 2
  store i64 %121, i64* %123, align 8
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %125 = call i32 @load_heap_v(%struct.TYPE_5__* %124)
  %126 = load i64, i64* @GH_N, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* @GH_N, align 8
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %8, align 4
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %10, align 8
  br label %132

132:                                              ; preds = %148, %97
  %133 = load i32, i32* %8, align 4
  %134 = icmp sgt i32 %133, 1
  br i1 %134, label %135, label %159

135:                                              ; preds = %132
  %136 = load i32, i32* %8, align 4
  %137 = ashr i32 %136, 1
  store i32 %137, i32* %9, align 4
  %138 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @GH, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %138, i64 %140
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* %10, align 8
  %146 = icmp ule i64 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %135
  br label %159

148:                                              ; preds = %135
  %149 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @GH, align 8
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %149, i64 %151
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %152, align 8
  %154 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @GH, align 8
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %154, i64 %156
  store %struct.TYPE_5__* %153, %struct.TYPE_5__** %157, align 8
  %158 = load i32, i32* %9, align 4
  store i32 %158, i32* %8, align 4
  br label %132

159:                                              ; preds = %147, %132
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %161 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @GH, align 8
  %162 = load i32, i32* %8, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %161, i64 %163
  store %struct.TYPE_5__* %160, %struct.TYPE_5__** %164, align 8
  store i32 1, i32* %2, align 4
  br label %165

165:                                              ; preds = %159, %96, %30
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @load_heap_v(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
