; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_util.c_uv_cpu_info.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_util.c_uv_cpu_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_21__*, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_22__ = type { i32 }

@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@SystemProcessorPerformanceInformation = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i32] [i32 72, i32 65, i32 82, i32 68, i32 87, i32 65, i32 82, i32 69, i32 92, i32 68, i32 69, i32 83, i32 67, i32 82, i32 73, i32 80, i32 84, i32 73, i32 79, i32 78, i32 92, i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 92, i32 67, i32 101, i32 110, i32 116, i32 114, i32 97, i32 108, i32 80, i32 114, i32 111, i32 99, i32 101, i32 115, i32 115, i32 111, i32 114, i32 92, i32 37, i32 100, i32 0], align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@KEY_QUERY_VALUE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i32] [i32 126, i32 77, i32 72, i32 122, i32 0], align 4
@.str.2 = private unnamed_addr constant [20 x i32] [i32 80, i32 114, i32 111, i32 99, i32 101, i32 115, i32 115, i32 111, i32 114, i32 78, i32 97, i32 109, i32 101, i32 83, i32 116, i32 114, i32 105, i32 110, i32 103, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_cpu_info(%struct.TYPE_21__** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_22__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_21__*, align 8
  %16 = alloca [128 x i32], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [256 x i32], align 16
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store %struct.TYPE_21__** %0, %struct.TYPE_21__*** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %6, align 8
  store i32 0, i32* %10, align 4
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %7, align 8
  %23 = call i32 (...) @uv__once_init()
  %24 = call i32 @GetSystemInfo(%struct.TYPE_22__* %9)
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call %struct.TYPE_21__* @uv__calloc(i32 %27, i32 56)
  store %struct.TYPE_21__* %28, %struct.TYPE_21__** %6, align 8
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %30 = icmp eq %struct.TYPE_21__* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  store i32 %32, i32* %14, align 4
  br label %190

33:                                               ; preds = %2
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 56
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call %struct.TYPE_21__* @uv__malloc(i32 %38)
  store %struct.TYPE_21__* %39, %struct.TYPE_21__** %7, align 8
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %41 = icmp eq %struct.TYPE_21__* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  store i32 %43, i32* %14, align 4
  br label %190

44:                                               ; preds = %33
  %45 = load i32, i32* @SystemProcessorPerformanceInformation, align 4
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @pNtQuerySystemInformation(i32 %45, %struct.TYPE_21__* %46, i32 %47, i32* %13)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @NT_SUCCESS(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %44
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @pRtlNtStatusToDosError(i32 %53)
  store i32 %54, i32* %14, align 4
  br label %190

55:                                               ; preds = %44
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp eq i32 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  store i32 0, i32* %11, align 4
  br label %61

61:                                               ; preds = %180, %55
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %183

65:                                               ; preds = %61
  store i32 4, i32* %19, align 4
  store i32 1024, i32* %21, align 4
  %66 = getelementptr inbounds [128 x i32], [128 x i32]* %16, i64 0, i64 0
  %67 = getelementptr inbounds [128 x i32], [128 x i32]* %16, i64 0, i64 0
  %68 = call i64 @ARRAY_SIZE(i32* %67)
  %69 = load i32, i32* %11, align 4
  %70 = call i64 @_snwprintf(i32* %66, i64 %68, i8* bitcast ([48 x i32]* @.str to i8*), i32 %69)
  store i64 %70, i64* %22, align 8
  %71 = load i64, i64* %22, align 8
  %72 = icmp ugt i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %65
  %74 = load i64, i64* %22, align 8
  %75 = getelementptr inbounds [128 x i32], [128 x i32]* %16, i64 0, i64 0
  %76 = call i64 @ARRAY_SIZE(i32* %75)
  %77 = icmp ult i64 %74, %76
  br label %78

78:                                               ; preds = %73, %65
  %79 = phi i1 [ false, %65 ], [ %77, %73 ]
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %83 = getelementptr inbounds [128 x i32], [128 x i32]* %16, i64 0, i64 0
  %84 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %85 = call i32 @RegOpenKeyExW(i32 %82, i32* %83, i32 0, i32 %84, i32* %17)
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* @ERROR_SUCCESS, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %78
  br label %190

90:                                               ; preds = %78
  %91 = load i32, i32* %17, align 4
  %92 = call i32 @RegQueryValueExW(i32 %91, i8* bitcast ([5 x i32]* @.str.1 to i8*), i32* null, i32* null, i32* %18, i32* %19)
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* @ERROR_SUCCESS, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load i32, i32* %17, align 4
  %98 = call i32 @RegCloseKey(i32 %97)
  br label %190

99:                                               ; preds = %90
  %100 = load i32, i32* %17, align 4
  %101 = bitcast [256 x i32]* %20 to i32*
  %102 = call i32 @RegQueryValueExW(i32 %100, i8* bitcast ([20 x i32]* @.str.2 to i8*), i32* null, i32* null, i32* %101, i32* %21)
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %17, align 4
  %104 = call i32 @RegCloseKey(i32 %103)
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* @ERROR_SUCCESS, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %99
  br label %190

109:                                              ; preds = %99
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i64 %112
  store %struct.TYPE_21__* %113, %struct.TYPE_21__** %15, align 8
  %114 = load i32, i32* %18, align 4
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 6
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = sdiv i32 %123, 10000
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 0
  store i32 %124, i32* %127, align 8
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 5
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = sub nsw i32 %134, %141
  %143 = sdiv i32 %142, 10000
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 1
  store i32 %143, i32* %146, align 4
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = sdiv i32 %153, 10000
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 2
  store i32 %154, i32* %157, align 8
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %159 = load i32, i32* %11, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = sdiv i32 %164, 10000
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 3
  store i32 %165, i32* %168, align 4
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 4
  store i64 0, i64* %171, align 8
  %172 = getelementptr inbounds [256 x i32], [256 x i32]* %20, i64 0, i64 0
  %173 = load i32, i32* %21, align 4
  %174 = sext i32 %173 to i64
  %175 = udiv i64 %174, 4
  %176 = trunc i64 %175 to i32
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 1
  %179 = call i32 @uv__convert_utf16_to_utf8(i32* %172, i32 %176, %struct.TYPE_21__** %178)
  br label %180

180:                                              ; preds = %109
  %181 = load i32, i32* %11, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %11, align 4
  br label %61

183:                                              ; preds = %61
  %184 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %185 = call i32 @uv__free(%struct.TYPE_21__* %184)
  %186 = load i32, i32* %10, align 4
  %187 = load i32*, i32** %5, align 8
  store i32 %186, i32* %187, align 4
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %189 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %4, align 8
  store %struct.TYPE_21__* %188, %struct.TYPE_21__** %189, align 8
  store i32 0, i32* %3, align 4
  br label %217

190:                                              ; preds = %108, %96, %89, %52, %42, %31
  %191 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %192 = icmp ne %struct.TYPE_21__* %191, null
  br i1 %192, label %193, label %210

193:                                              ; preds = %190
  store i32 0, i32* %11, align 4
  br label %194

194:                                              ; preds = %206, %193
  %195 = load i32, i32* %11, align 4
  %196 = load i32, i32* %10, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %198, label %209

198:                                              ; preds = %194
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %200 = load i32, i32* %11, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_21__*, %struct.TYPE_21__** %203, align 8
  %205 = call i32 @uv__free(%struct.TYPE_21__* %204)
  br label %206

206:                                              ; preds = %198
  %207 = load i32, i32* %11, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %11, align 4
  br label %194

209:                                              ; preds = %194
  br label %210

210:                                              ; preds = %209, %190
  %211 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %212 = call i32 @uv__free(%struct.TYPE_21__* %211)
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %214 = call i32 @uv__free(%struct.TYPE_21__* %213)
  %215 = load i32, i32* %14, align 4
  %216 = call i32 @uv_translate_sys_error(i32 %215)
  store i32 %216, i32* %3, align 4
  br label %217

217:                                              ; preds = %210, %183
  %218 = load i32, i32* %3, align 4
  ret i32 %218
}

declare dso_local i32 @uv__once_init(...) #1

declare dso_local i32 @GetSystemInfo(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_21__* @uv__calloc(i32, i32) #1

declare dso_local %struct.TYPE_21__* @uv__malloc(i32) #1

declare dso_local i32 @pNtQuerySystemInformation(i32, %struct.TYPE_21__*, i32, i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @pRtlNtStatusToDosError(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @_snwprintf(i32*, i64, i8*, i32) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @RegOpenKeyExW(i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @RegQueryValueExW(i32, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @uv__convert_utf16_to_utf8(i32*, i32, %struct.TYPE_21__**) #1

declare dso_local i32 @uv__free(%struct.TYPE_21__*) #1

declare dso_local i32 @uv_translate_sys_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
