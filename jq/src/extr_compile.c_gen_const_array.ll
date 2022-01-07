; ModuleID = '/home/carl/AnghaBench/jq/src/extr_compile.c_gen_const_array.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_compile.c_gen_const_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_12__*, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_11__, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i64 }

@FORK = common dso_local global i64 0, align 8
@JUMP = common dso_local global i64 0, align 8
@LOADK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_14__*)* @gen_const_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_const_array(%struct.TYPE_14__* noalias sret %0, %struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_14__, align 8
  store i32 1, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %9 = call i32 (...) @jv_array()
  store i32 %9, i32* %6, align 4
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1, i32 0, i32 3
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %7, align 8
  br label %12

12:                                               ; preds = %101, %2
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %14 = icmp ne %struct.TYPE_13__* %13, null
  br i1 %14, label %15, label %105

15:                                               ; preds = %12
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @FORK, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %45

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = icmp eq %struct.TYPE_10__* %27, null
  br i1 %28, label %43, label %29

29:                                               ; preds = %21
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @JUMP, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %43, label %38

38:                                               ; preds = %29
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @jv_copy(i32 %39)
  %41 = call i32 @jv_array_length(i32 %40)
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38, %29, %21
  store i32 0, i32* %5, align 4
  br label %105

44:                                               ; preds = %38
  br label %100

45:                                               ; preds = %15
  %46 = load i32, i32* %3, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %76

48:                                               ; preds = %45
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @LOADK, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %76

54:                                               ; preds = %48
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  %58 = icmp ne %struct.TYPE_13__* %57, null
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @JUMP, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  store i32 0, i32* %5, align 4
  br label %105

68:                                               ; preds = %59, %54
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @jv_copy(i32 %73)
  %75 = call i32 @jv_array_append(i32 %69, i32 %74)
  store i32 %75, i32* %6, align 4
  br label %99

76:                                               ; preds = %48, %45
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @JUMP, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %97, label %82

82:                                               ; preds = %76
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = icmp eq %struct.TYPE_10__* %86, null
  br i1 %87, label %97, label %88

88:                                               ; preds = %82
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @LOADK, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %88, %82, %76
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %88
  br label %99

99:                                               ; preds = %98, %68
  br label %100

100:                                              ; preds = %99, %44
  br label %101

101:                                              ; preds = %100
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %103, align 8
  store %struct.TYPE_13__* %104, %struct.TYPE_13__** %7, align 8
  br label %12

105:                                              ; preds = %67, %43, %12
  %106 = load i32, i32* %3, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %132

108:                                              ; preds = %105
  %109 = load i32, i32* %5, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %132

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1, i32 0, i32 2
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %112, align 8
  %114 = icmp eq %struct.TYPE_12__* %113, null
  br i1 %114, label %122, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1, i32 0, i32 2
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @LOADK, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %115, %111
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @jv_copy(i32 %123)
  %125 = call i32 @jv_array_length(i32 %124)
  %126 = load i32, i32* %4, align 4
  %127 = add nsw i32 %126, 1
  %128 = icmp eq i32 %125, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %122
  %130 = call i32 @block_free(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %1)
  %131 = load i32, i32* %6, align 4
  call void @gen_const(%struct.TYPE_14__* sret %0, i32 %131)
  br label %138

132:                                              ; preds = %122, %115, %108, %105
  %133 = load i32, i32* %6, align 4
  %134 = call i32 @jv_free(i32 %133)
  %135 = bitcast %struct.TYPE_14__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %135, i8 0, i64 24, i1 false)
  %136 = bitcast %struct.TYPE_14__* %0 to i8*
  %137 = bitcast %struct.TYPE_14__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %136, i8* align 8 %137, i64 24, i1 false)
  br label %138

138:                                              ; preds = %132, %129
  ret void
}

declare dso_local i32 @jv_array(...) #1

declare dso_local i32 @jv_array_length(i32) #1

declare dso_local i32 @jv_copy(i32) #1

declare dso_local i32 @jv_array_append(i32, i32) #1

declare dso_local i32 @block_free(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8) #1

declare dso_local void @gen_const(%struct.TYPE_14__* sret, i32) #1

declare dso_local i32 @jv_free(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
