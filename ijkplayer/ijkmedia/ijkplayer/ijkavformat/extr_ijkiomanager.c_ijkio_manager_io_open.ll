; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavformat/extr_ijkiomanager.c_ijkio_manager_io_open.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavformat/extr_ijkiomanager.c_ijkio_manager_io_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64, i64, %struct.TYPE_18__*, i32, i32 }
%struct.TYPE_18__ = type { i32, i64, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_15__*, %struct.TYPE_14__*, i32, %struct.TYPE_18__* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_15__*, i8*, i32, i32**)*, i32 (%struct.TYPE_15__*)* }

@.str = private unnamed_addr constant [16 x i8] c"cache_file_path\00", align 1
@IJK_AV_DICT_MATCH_CASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"cache_map_path\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"auto_save_map\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"parse_cache_map\00", align 1
@IJKURL_STARTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ijkio_manager_io_open(%struct.TYPE_16__* %0, i8* %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %15 = icmp ne %struct.TYPE_16__* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %5, align 4
  br label %208

18:                                               ; preds = %4
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %22 = icmp ne %struct.TYPE_18__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 -1, i32* %5, align 4
  br label %208

24:                                               ; preds = %18
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %12, align 8
  %25 = load i32**, i32*** %9, align 8
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* @IJK_AV_DICT_MATCH_CASE, align 4
  %28 = call %struct.TYPE_17__* @ijk_av_dict_get(i32* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* null, i32 %27)
  store %struct.TYPE_17__* %28, %struct.TYPE_17__** %12, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %30 = icmp ne %struct.TYPE_17__* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %24
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @strcpy(i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %31, %24
  %42 = load i32**, i32*** %9, align 8
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* @IJK_AV_DICT_MATCH_CASE, align 4
  %45 = call %struct.TYPE_17__* @ijk_av_dict_get(i32* %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %44)
  store %struct.TYPE_17__* %45, %struct.TYPE_17__** %12, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %47 = icmp ne %struct.TYPE_17__* %46, null
  br i1 %47, label %48, label %111

48:                                               ; preds = %41
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @strcpy(i32 %51, i32 %54)
  %56 = load i32**, i32*** %9, align 8
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* @IJK_AV_DICT_MATCH_CASE, align 4
  %59 = call %struct.TYPE_17__* @ijk_av_dict_get(i32* %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %58)
  store %struct.TYPE_17__* %59, %struct.TYPE_17__** %12, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %61 = icmp ne %struct.TYPE_17__* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %48
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @strtol(i32 %65, i32* null, i32 10)
  %67 = trunc i64 %66 to i32
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %62, %48
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 3
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %110

77:                                               ; preds = %70
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @ijk_map_size(i64 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %110, label %85

85:                                               ; preds = %77
  %86 = load i32**, i32*** %9, align 8
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* @IJK_AV_DICT_MATCH_CASE, align 4
  %89 = call %struct.TYPE_17__* @ijk_av_dict_get(i32* %87, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %88)
  store %struct.TYPE_17__* %89, %struct.TYPE_17__** %12, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %91 = icmp ne %struct.TYPE_17__* %90, null
  br i1 %91, label %92, label %109

92:                                               ; preds = %85
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @strtol(i32 %95, i32* null, i32 10)
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %92
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 3
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %102, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ijkio_manager_parse_cache_info(%struct.TYPE_18__* %103, i32 %106)
  br label %108

108:                                              ; preds = %100, %92
  br label %109

109:                                              ; preds = %108, %85
  br label %110

110:                                              ; preds = %109, %77, %70
  br label %111

111:                                              ; preds = %110, %41
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 3
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 0
  store i32 %114, i32* %118, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %13, align 8
  %119 = load i8*, i8** %7, align 8
  %120 = call i32 @ijkio_alloc_url(%struct.TYPE_15__** %13, i8* %119)
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %122 = icmp ne %struct.TYPE_15__* %121, null
  br i1 %122, label %123, label %164

123:                                              ; preds = %111
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 3
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %125, align 8
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 3
  store %struct.TYPE_18__* %126, %struct.TYPE_18__** %128, align 8
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %148

133:                                              ; preds = %123
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %135 = call i32 @ijkio_manager_set_all_ctx_pause(%struct.TYPE_16__* %134)
  %136 = load i32, i32* @IJKURL_STARTED, align 4
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 8
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = trunc i64 %144 to i32
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %147 = call i32 @ijk_map_put(i64 %141, i32 %145, %struct.TYPE_15__* %146)
  br label %148

148:                                              ; preds = %133, %123
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 0
  %153 = load i32 (%struct.TYPE_15__*, i8*, i32, i32**)*, i32 (%struct.TYPE_15__*, i8*, i32, i32**)** %152, align 8
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %155 = load i8*, i8** %7, align 8
  %156 = load i32, i32* %8, align 4
  %157 = load i32**, i32*** %9, align 8
  %158 = call i32 %153(%struct.TYPE_15__* %154, i8* %155, i32 %156, i32** %157)
  store i32 %158, i32* %10, align 4
  %159 = load i32, i32* %10, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %148
  br label %165

162:                                              ; preds = %148
  %163 = load i32, i32* %10, align 4
  store i32 %163, i32* %5, align 4
  br label %208

164:                                              ; preds = %111
  br label %165

165:                                              ; preds = %164, %161
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %167 = icmp ne %struct.TYPE_15__* %166, null
  br i1 %167, label %168, label %207

168:                                              ; preds = %165
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %170, align 8
  %172 = icmp ne %struct.TYPE_14__* %171, null
  br i1 %172, label %173, label %188

173:                                              ; preds = %168
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 1
  %178 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %177, align 8
  %179 = icmp ne i32 (%struct.TYPE_15__*)* %178, null
  br i1 %179, label %180, label %188

180:                                              ; preds = %173
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 1
  %185 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %184, align 8
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %187 = call i32 %185(%struct.TYPE_15__* %186)
  store i32 %187, i32* %10, align 4
  br label %188

188:                                              ; preds = %180, %173, %168
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %202

193:                                              ; preds = %188
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = trunc i64 %199 to i32
  %201 = call i32 @ijk_map_remove(i64 %196, i32 %200)
  br label %202

202:                                              ; preds = %193, %188
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 0
  %205 = call i32 @ijk_av_freep(%struct.TYPE_15__** %204)
  %206 = call i32 @ijk_av_freep(%struct.TYPE_15__** %13)
  br label %207

207:                                              ; preds = %202, %165
  store i32 -1, i32* %5, align 4
  br label %208

208:                                              ; preds = %207, %162, %23, %16
  %209 = load i32, i32* %5, align 4
  ret i32 %209
}

declare dso_local %struct.TYPE_17__* @ijk_av_dict_get(i32*, i8*, i32*, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i64 @strtol(i32, i32*, i32) #1

declare dso_local i32 @ijk_map_size(i64) #1

declare dso_local i32 @ijkio_manager_parse_cache_info(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ijkio_alloc_url(%struct.TYPE_15__**, i8*) #1

declare dso_local i32 @ijkio_manager_set_all_ctx_pause(%struct.TYPE_16__*) #1

declare dso_local i32 @ijk_map_put(i64, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @ijk_map_remove(i64, i32) #1

declare dso_local i32 @ijk_av_freep(%struct.TYPE_15__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
