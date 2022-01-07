; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-search-extension.c_gather_heap_advance.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-search-extension.c_gather_heap_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64, i32 }

@SEARCH_EXTENSION = common dso_local global i64 0, align 8
@SEARCHX_EXTENSION = common dso_local global i64 0, align 8
@GH_mode = common dso_local global i32 0, align 4
@g_double = common dso_local global i32 0, align 4
@TARG_EXTENSION = common dso_local global i64 0, align 8
@HINTS_MERGE_EXTENSION = common dso_local global i64 0, align 8
@g_hash = common dso_local global i32 0, align 4
@GH_N = common dso_local global i32 0, align 4
@GH = common dso_local global %struct.TYPE_4__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @gather_heap_advance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gather_heap_advance() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = load i64, i64* @SEARCH_EXTENSION, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %0
  %9 = load i64, i64* @SEARCHX_EXTENSION, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %8, %0
  %12 = load i32, i32* @GH_mode, align 4
  %13 = load i32, i32* @g_double, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 3, i32 2
  store i32 %17, i32* %2, align 4
  br label %36

18:                                               ; preds = %8
  %19 = load i64, i64* @TARG_EXTENSION, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i32, i32* @GH_mode, align 4
  %23 = load i32, i32* @g_double, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 2, i32 1
  store i32 %27, i32* %2, align 4
  br label %35

28:                                               ; preds = %18
  %29 = load i64, i64* @HINTS_MERGE_EXTENSION, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 3, i32* %2, align 4
  br label %34

32:                                               ; preds = %28
  %33 = call i32 @assert(i32 0)
  br label %34

34:                                               ; preds = %32, %31
  br label %35

35:                                               ; preds = %34, %21
  br label %36

36:                                               ; preds = %35, %11
  %37 = load i32, i32* @GH_mode, align 4
  %38 = load i32, i32* @g_hash, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* %2, align 4
  %43 = add nsw i32 %42, 2
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i32, i32* @GH_N, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  br label %150

48:                                               ; preds = %44
  %49 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @GH, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %49, i64 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  store %struct.TYPE_4__* %51, %struct.TYPE_4__** %1, align 8
  %52 = load i32, i32* %2, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %58, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %48
  %63 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @GH, align 8
  %64 = load i32, i32* @GH_N, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* @GH_N, align 4
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %63, i64 %66
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  store %struct.TYPE_4__* %68, %struct.TYPE_4__** %1, align 8
  %69 = load i32, i32* @GH_N, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %62
  br label %150

72:                                               ; preds = %62
  br label %87

73:                                               ; preds = %48
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp sge i64 %77, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %73
  %83 = call i32 @assert(i32 0)
  br label %84

84:                                               ; preds = %82, %73
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %86 = call i32 @load_heap_v(%struct.TYPE_4__* %85)
  br label %87

87:                                               ; preds = %84, %72
  store i32 1, i32* %3, align 4
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %5, align 8
  br label %91

91:                                               ; preds = %87, %133
  %92 = load i32, i32* %3, align 4
  %93 = mul nsw i32 %92, 2
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @GH_N, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %144

98:                                               ; preds = %91
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @GH_N, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %122

102:                                              ; preds = %98
  %103 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @GH, align 8
  %104 = load i32, i32* %4, align 4
  %105 = add nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %103, i64 %106
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @GH, align 8
  %112 = load i32, i32* %4, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %111, i64 %113
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp ult i64 %110, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %102
  %120 = load i32, i32* %4, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %119, %102, %98
  %123 = load i64, i64* %5, align 8
  %124 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @GH, align 8
  %125 = load i32, i32* %4, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %124, i64 %126
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = icmp ule i64 %123, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %122
  br label %144

133:                                              ; preds = %122
  %134 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @GH, align 8
  %135 = load i32, i32* %4, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %134, i64 %136
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @GH, align 8
  %140 = load i32, i32* %3, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %139, i64 %141
  store %struct.TYPE_4__* %138, %struct.TYPE_4__** %142, align 8
  %143 = load i32, i32* %4, align 4
  store i32 %143, i32* %3, align 4
  br label %91

144:                                              ; preds = %132, %97
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %146 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @GH, align 8
  %147 = load i32, i32* %3, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %146, i64 %148
  store %struct.TYPE_4__* %145, %struct.TYPE_4__** %149, align 8
  br label %150

150:                                              ; preds = %144, %71, %47
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @load_heap_v(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
