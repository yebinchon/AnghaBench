; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_util.c_uv_uptime.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_util.c_uv_uptime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }

@HKEY_PERFORMANCE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i32] [i32 50, i32 0], align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_MORE_DATA = common dso_local global i64 0, align 8
@UV_ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i32] [i32 80, i32 69, i32 82, i32 70, i32 0], align 4
@PERF_NO_INSTANCES = common dso_local global i64 0, align 8
@PERF_OBJECT_TIMER = common dso_local global i32 0, align 4
@UV_ENOSYS = common dso_local global i32 0, align 4
@UV_EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_uptime(double* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double*, align 8
  %4 = alloca [4096 x i32], align 16
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  store double* %0, double** %3, align 8
  store i32* null, i32** %5, align 8
  %16 = getelementptr inbounds [4096 x i32], [4096 x i32]* %4, i64 0, i64 0
  store i32* %16, i32** %6, align 8
  store i64 16384, i64* %7, align 8
  br label %17

17:                                               ; preds = %53, %1
  %18 = load i64, i64* %7, align 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @HKEY_PERFORMANCE_DATA, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = call i64 @RegQueryValueExW(i32 %20, i8* bitcast ([2 x i32]* @.str to i8*), i32* null, i32* null, i32* %21, i32* %8)
  store i64 %22, i64* %13, align 8
  %23 = load i64, i64* %13, align 8
  %24 = load i64, i64* @ERROR_SUCCESS, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %54

27:                                               ; preds = %17
  %28 = load i64, i64* %13, align 8
  %29 = load i64, i64* @ERROR_MORE_DATA, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load double*, double** %3, align 8
  store double 0.000000e+00, double* %32, align 8
  %33 = load i64, i64* %13, align 8
  %34 = call i32 @uv_translate_sys_error(i64 %33)
  store i32 %34, i32* %2, align 4
  br label %204

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %7, align 8
  %38 = mul i64 %37, 2
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp ugt i64 %39, 1048576
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %199

42:                                               ; preds = %36
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @uv__free(i32* %43)
  %45 = load i64, i64* %7, align 8
  %46 = call i64 @uv__malloc(i64 %45)
  %47 = inttoptr i64 %46 to i32*
  store i32* %47, i32** %5, align 8
  store i32* %47, i32** %6, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load double*, double** %3, align 8
  store double 0.000000e+00, double* %51, align 8
  %52 = load i32, i32* @UV_ENOMEM, align 4
  store i32 %52, i32* %2, align 4
  br label %204

53:                                               ; preds = %42
  br label %17

54:                                               ; preds = %26
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp ult i64 %56, 8
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %199

59:                                               ; preds = %54
  %60 = load i32*, i32** %6, align 8
  %61 = bitcast i32* %60 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %61, %struct.TYPE_9__** %9, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @wmemcmp(i32 %64, i8* bitcast ([5 x i32]* @.str.1 to i8*), i32 4)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %199

68:                                               ; preds = %59
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = add i64 %74, 40
  %76 = icmp ult i64 %70, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  br label %199

78:                                               ; preds = %68
  %79 = load i32*, i32** %6, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %79, i64 %83
  %85 = bitcast i32* %84 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %85, %struct.TYPE_8__** %10, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @PERF_NO_INSTANCES, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %78
  br label %199

92:                                               ; preds = %78
  %93 = load i32*, i32** %6, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %93, i64 %97
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %98, i64 %102
  %104 = bitcast i32* %103 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %104, %struct.TYPE_10__** %11, align 8
  store i32 0, i32* %12, align 4
  br label %105

105:                                              ; preds = %191, %92
  %106 = load i32, i32* %12, align 4
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %194

111:                                              ; preds = %105
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %113 = bitcast %struct.TYPE_10__* %112 to i32*
  %114 = getelementptr inbounds i32, i32* %113, i64 20
  %115 = load i32*, i32** %6, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = icmp ugt i32* %114, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %111
  br label %194

121:                                              ; preds = %111
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 674
  br i1 %125, label %126, label %182

126:                                              ; preds = %121
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = icmp eq i64 %130, 8
  br i1 %131, label %132, label %182

132:                                              ; preds = %126
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = add i64 %136, 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = icmp ugt i64 %137, %139
  br i1 %140, label %148, label %141

141:                                              ; preds = %132
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @PERF_OBJECT_TIMER, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %141, %132
  br label %199

149:                                              ; preds = %141
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %151 = bitcast %struct.TYPE_8__* %150 to i32*
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %151, i64 %155
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %156, i64 %160
  store i32* %161, i32** %14, align 8
  %162 = load i32*, i32** %14, align 8
  %163 = bitcast i32* %162 to i64*
  %164 = load i64, i64* %163, align 8
  store i64 %164, i64* %15, align 8
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 5
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* %15, align 8
  %170 = sub nsw i64 %168, %169
  %171 = sitofp i64 %170 to double
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 4
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = sitofp i64 %175 to double
  %177 = fdiv double %171, %176
  %178 = call double @llvm.floor.f64(double %177)
  %179 = load double*, double** %3, align 8
  store double %178, double* %179, align 8
  %180 = load i32*, i32** %5, align 8
  %181 = call i32 @uv__free(i32* %180)
  store i32 0, i32* %2, align 4
  br label %204

182:                                              ; preds = %126, %121
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %184 = bitcast %struct.TYPE_10__* %183 to i32*
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %184, i64 %188
  %190 = bitcast i32* %189 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %190, %struct.TYPE_10__** %11, align 8
  br label %191

191:                                              ; preds = %182
  %192 = load i32, i32* %12, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %12, align 4
  br label %105

194:                                              ; preds = %120, %105
  %195 = load i32*, i32** %5, align 8
  %196 = call i32 @uv__free(i32* %195)
  %197 = load double*, double** %3, align 8
  store double 0.000000e+00, double* %197, align 8
  %198 = load i32, i32* @UV_ENOSYS, align 4
  store i32 %198, i32* %2, align 4
  br label %204

199:                                              ; preds = %148, %91, %77, %67, %58, %41
  %200 = load i32*, i32** %5, align 8
  %201 = call i32 @uv__free(i32* %200)
  %202 = load double*, double** %3, align 8
  store double 0.000000e+00, double* %202, align 8
  %203 = load i32, i32* @UV_EIO, align 4
  store i32 %203, i32* %2, align 4
  br label %204

204:                                              ; preds = %199, %194, %149, %50, %31
  %205 = load i32, i32* %2, align 4
  ret i32 %205
}

declare dso_local i64 @RegQueryValueExW(i32, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @uv_translate_sys_error(i64) #1

declare dso_local i32 @uv__free(i32*) #1

declare dso_local i64 @uv__malloc(i64) #1

declare dso_local i64 @wmemcmp(i32, i8*, i32) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
