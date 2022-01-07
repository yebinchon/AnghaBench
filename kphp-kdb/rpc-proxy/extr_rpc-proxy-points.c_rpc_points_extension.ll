; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-points.c_rpc_points_extension.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-points.c_rpc_points_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 (%struct.TYPE_7__*)* }
%struct.points_extra = type { i32, %struct.TYPE_6__* }

@CC = common dso_local global %struct.TYPE_8__* null, align 8
@PE_NUM = common dso_local global i64 0, align 8
@MAX_RETRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_points_extension(i8** %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i8** %1, i8*** %5, align 8
  %15 = load i8**, i8*** %5, align 8
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %6, align 8
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  %20 = ptrtoint i8* %19 to i64
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @crc64(i8* %22, i32 %23)
  store i64 %24, i64* %8, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** @CC, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* @PE_NUM, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.points_extra*
  %32 = getelementptr inbounds %struct.points_extra, %struct.points_extra* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %9, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** @CC, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* @PE_NUM, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.points_extra*
  %41 = getelementptr inbounds %struct.points_extra, %struct.points_extra* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** @CC, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = mul nsw i32 %45, %46
  store i32 %47, i32* %12, align 4
  br label %48

48:                                               ; preds = %70, %2
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %11, align 4
  %51 = sub nsw i32 %49, %50
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %53, label %71

53:                                               ; preds = %48
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %54, %55
  %57 = ashr i32 %56, 1
  store i32 %57, i32* %13, align 4
  %58 = load i64, i64* %8, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ult i64 %58, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %53
  %67 = load i32, i32* %13, align 4
  store i32 %67, i32* %12, align 4
  br label %70

68:                                               ; preds = %53
  %69 = load i32, i32* %13, align 4
  store i32 %69, i32* %11, align 4
  br label %70

70:                                               ; preds = %68, %66
  br label %48

71:                                               ; preds = %48
  %72 = load i32, i32* %10, align 4
  %73 = icmp sgt i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  store i32 0, i32* %14, align 4
  br label %76

76:                                               ; preds = %118, %71
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* @MAX_RETRIES, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %121

80:                                               ; preds = %76
  %81 = load i32, i32* %11, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %11, align 4
  br label %87

87:                                               ; preds = %83, %80
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i64 (%struct.TYPE_7__*)*, i64 (%struct.TYPE_7__*)** %96, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = call i64 %97(%struct.TYPE_7__* %103)
  %105 = icmp sge i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %87
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = bitcast %struct.TYPE_7__* %112 to i8*
  %114 = load i8**, i8*** %5, align 8
  store i8* %113, i8** %114, align 8
  store i32 0, i32* %3, align 4
  br label %123

115:                                              ; preds = %87
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %11, align 4
  br label %118

118:                                              ; preds = %115
  %119 = load i32, i32* %14, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %14, align 4
  br label %76

121:                                              ; preds = %76
  %122 = load i8**, i8*** %5, align 8
  store i8* null, i8** %122, align 8
  store i32 -1, i32* %3, align 4
  br label %123

123:                                              ; preds = %121, %106
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i64 @crc64(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
