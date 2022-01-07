; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_sunos.c_uv_cpu_info.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_sunos.c_uv_cpu_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, i32*, i64 }
%struct.TYPE_10__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64, i64 }

@UV_EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"cpu_info\00", align 1
@UV_ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"clock_MHz\00", align 1
@KSTAT_DATA_INT32 = common dso_local global i64 0, align 8
@KSTAT_DATA_INT64 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"brand\00", align 1
@KSTAT_DATA_STRING = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"sys\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"cpu_ticks_user\00", align 1
@KSTAT_DATA_UINT64 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [17 x i8] c"cpu_ticks_kernel\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"cpu_ticks_idle\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"intr\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_cpu_info(%struct.TYPE_11__** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__** %0, %struct.TYPE_11__*** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = call i32* (...) @kstat_open()
  store i32* %11, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @UV_EPERM, align 4
  store i32 %15, i32* %3, align 4
  br label %222

16:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %22, %16
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32* @kstat_lookup(i32* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %19, i8* null)
  store i32* %20, i32** %8, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %6, align 4
  br label %17

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 56
  %29 = trunc i64 %28 to i32
  %30 = call %struct.TYPE_11__* @uv__malloc(i32 %29)
  %31 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %4, align 8
  store %struct.TYPE_11__* %30, %struct.TYPE_11__** %31, align 8
  %32 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %4, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = icmp ne %struct.TYPE_11__* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %25
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @kstat_close(i32* %36)
  %38 = load i32, i32* @UV_ENOMEM, align 4
  store i32 %38, i32* %3, align 4
  br label %222

39:                                               ; preds = %25
  %40 = load i32, i32* %6, align 4
  %41 = load i32*, i32** %5, align 8
  store i32 %40, i32* %41, align 4
  %42 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %4, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  store %struct.TYPE_11__* %43, %struct.TYPE_11__** %10, align 8
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %110, %39
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32* @kstat_lookup(i32* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %46, i8* null)
  store i32* %47, i32** %8, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %115

49:                                               ; preds = %44
  %50 = load i32*, i32** %7, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @kstat_read(i32* %50, i32* %51, i32* null)
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  store i32* null, i32** %58, align 8
  br label %110

59:                                               ; preds = %49
  %60 = load i32*, i32** %8, align 8
  %61 = call %struct.TYPE_12__* @kstat_data_lookup(i32* %60, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_12__* %61, %struct.TYPE_12__** %9, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @KSTAT_DATA_INT32, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %73, label %67

67:                                               ; preds = %59
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @KSTAT_DATA_INT64, align 8
  %72 = icmp eq i64 %70, %71
  br label %73

73:                                               ; preds = %67, %59
  %74 = phi i1 [ true, %59 ], [ %72, %67 ]
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @KSTAT_DATA_INT32, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %73
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  br label %92

87:                                               ; preds = %73
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  br label %92

92:                                               ; preds = %87, %82
  %93 = phi i64 [ %86, %82 ], [ %91, %87 ]
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 2
  store i64 %93, i64* %95, align 8
  %96 = load i32*, i32** %8, align 8
  %97 = call %struct.TYPE_12__* @kstat_data_lookup(i32* %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_12__* %97, %struct.TYPE_12__** %9, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @KSTAT_DATA_STRING, align 8
  %102 = icmp eq i64 %100, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @assert(i32 %103)
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %106 = call i32 @KSTAT_NAMED_STR_PTR(%struct.TYPE_12__* %105)
  %107 = call i32* @uv__strdup(i32 %106)
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  store i32* %107, i32** %109, align 8
  br label %110

110:                                              ; preds = %92, %54
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %6, align 4
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 1
  store %struct.TYPE_11__* %114, %struct.TYPE_11__** %10, align 8
  br label %44

115:                                              ; preds = %44
  %116 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %4, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  store %struct.TYPE_11__* %117, %struct.TYPE_11__** %10, align 8
  store i32 0, i32* %6, align 4
  br label %118

118:                                              ; preds = %214, %115
  %119 = load i32*, i32** %7, align 8
  %120 = load i32, i32* %6, align 4
  %121 = call i32* @kstat_lookup(i32* %119, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %120, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i32* %121, i32** %8, align 8
  %122 = load i32*, i32** %8, align 8
  %123 = icmp eq i32* %122, null
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  br label %219

125:                                              ; preds = %118
  %126 = load i32*, i32** %7, align 8
  %127 = load i32*, i32** %8, align 8
  %128 = call i32 @kstat_read(i32* %126, i32* %127, i32* null)
  %129 = icmp eq i32 %128, -1
  br i1 %129, label %130, label %146

130:                                              ; preds = %125
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 4
  store i64 0, i64* %133, align 8
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  store i64 0, i64* %136, align 8
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 3
  store i64 0, i64* %139, align 8
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 2
  store i64 0, i64* %142, align 8
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 1
  store i64 0, i64* %145, align 8
  br label %214

146:                                              ; preds = %125
  %147 = load i32*, i32** %8, align 8
  %148 = call %struct.TYPE_12__* @kstat_data_lookup(i32* %147, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  store %struct.TYPE_12__* %148, %struct.TYPE_12__** %9, align 8
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @KSTAT_DATA_UINT64, align 8
  %153 = icmp eq i64 %151, %152
  %154 = zext i1 %153 to i32
  %155 = call i32 @assert(i32 %154)
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 4
  store i64 %159, i64* %162, align 8
  %163 = load i32*, i32** %8, align 8
  %164 = call %struct.TYPE_12__* @kstat_data_lookup(i32* %163, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  store %struct.TYPE_12__* %164, %struct.TYPE_12__** %9, align 8
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @KSTAT_DATA_UINT64, align 8
  %169 = icmp eq i64 %167, %168
  %170 = zext i1 %169 to i32
  %171 = call i32 @assert(i32 %170)
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 3
  store i64 %175, i64* %178, align 8
  %179 = load i32*, i32** %8, align 8
  %180 = call %struct.TYPE_12__* @kstat_data_lookup(i32* %179, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  store %struct.TYPE_12__* %180, %struct.TYPE_12__** %9, align 8
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @KSTAT_DATA_UINT64, align 8
  %185 = icmp eq i64 %183, %184
  %186 = zext i1 %185 to i32
  %187 = call i32 @assert(i32 %186)
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 2
  store i64 %191, i64* %194, align 8
  %195 = load i32*, i32** %8, align 8
  %196 = call %struct.TYPE_12__* @kstat_data_lookup(i32* %195, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  store %struct.TYPE_12__* %196, %struct.TYPE_12__** %9, align 8
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @KSTAT_DATA_UINT64, align 8
  %201 = icmp eq i64 %199, %200
  %202 = zext i1 %201 to i32
  %203 = call i32 @assert(i32 %202)
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 1
  store i64 %207, i64* %210, align 8
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 0
  store i64 0, i64* %213, align 8
  br label %214

214:                                              ; preds = %146, %130
  %215 = load i32, i32* %6, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %6, align 4
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 1
  store %struct.TYPE_11__* %218, %struct.TYPE_11__** %10, align 8
  br label %118

219:                                              ; preds = %124
  %220 = load i32*, i32** %7, align 8
  %221 = call i32 @kstat_close(i32* %220)
  store i32 0, i32* %3, align 4
  br label %222

222:                                              ; preds = %219, %35, %14
  %223 = load i32, i32* %3, align 4
  ret i32 %223
}

declare dso_local i32* @kstat_open(...) #1

declare dso_local i32* @kstat_lookup(i32*, i8*, i32, i8*) #1

declare dso_local %struct.TYPE_11__* @uv__malloc(i32) #1

declare dso_local i32 @kstat_close(i32*) #1

declare dso_local i32 @kstat_read(i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_12__* @kstat_data_lookup(i32*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @uv__strdup(i32) #1

declare dso_local i32 @KSTAT_NAMED_STR_PTR(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
