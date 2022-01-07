; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_tl_do_change_photo.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_tl_do_change_photo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_10__, %struct.TYPE_9__, i64 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32 }
%struct.tl_act_extra = type { i64 }
%struct.tl_change_photo = type { i64, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@MAX_EVENT_SIZE = common dso_local global i64 0, align 8
@NOAIO = common dso_local global i32 0, align 4
@PHOTO_TYPE = common dso_local global i32 0, align 4
@TL_ERROR_BAD_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Can't parse changes\00", align 1
@field_changes_n = common dso_local global i64 0, align 8
@LEV_PHOTO_CHANGE_PHOTO = common dso_local global i32 0, align 4
@location_changes_n = common dso_local global i32 0, align 4
@location_changes = common dso_local global %struct.TYPE_12__* null, align 8
@photo_type__original_location = common dso_local global i64 0, align 8
@TL_BOOL_TRUE = common dso_local global i32 0, align 4
@TL_BOOL_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_do_change_photo(%struct.tl_act_extra* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tl_act_extra*, align 8
  %4 = alloca %struct.tl_change_photo*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  store %struct.tl_act_extra* %0, %struct.tl_act_extra** %3, align 8
  %9 = load %struct.tl_act_extra*, %struct.tl_act_extra** %3, align 8
  %10 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.tl_change_photo*
  store %struct.tl_change_photo* %12, %struct.tl_change_photo** %4, align 8
  %13 = load %struct.tl_change_photo*, %struct.tl_change_photo** %4, align 8
  %14 = getelementptr inbounds %struct.tl_change_photo, %struct.tl_change_photo* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @check_photo_id(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %1
  %19 = load %struct.tl_change_photo*, %struct.tl_change_photo** %4, align 8
  %20 = getelementptr inbounds %struct.tl_change_photo, %struct.tl_change_photo* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 0, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.tl_change_photo*, %struct.tl_change_photo** %4, align 8
  %25 = getelementptr inbounds %struct.tl_change_photo, %struct.tl_change_photo* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MAX_EVENT_SIZE, align 8
  %28 = icmp slt i64 %26, %27
  br label %29

29:                                               ; preds = %23, %18, %1
  %30 = phi i1 [ false, %18 ], [ false, %1 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.tl_change_photo*, %struct.tl_change_photo** %4, align 8
  %34 = getelementptr inbounds %struct.tl_change_photo, %struct.tl_change_photo* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.TYPE_11__* @conv_uid(i32 %35)
  store %struct.TYPE_11__* %36, %struct.TYPE_11__** %5, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %38 = icmp ne %struct.TYPE_11__* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @NOAIO, align 4
  %46 = call i32 @load_user_metafile(%struct.TYPE_11__* %41, i32 %44, i32 %45)
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %48 = call i32 @user_loaded(%struct.TYPE_11__* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %29
  store i32 -2, i32* %2, align 4
  br label %189

51:                                               ; preds = %29
  %52 = load i32, i32* @PHOTO_TYPE, align 4
  %53 = load %struct.tl_change_photo*, %struct.tl_change_photo** %4, align 8
  %54 = getelementptr inbounds %struct.tl_change_photo, %struct.tl_change_photo* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.tl_change_photo*, %struct.tl_change_photo** %4, align 8
  %57 = getelementptr inbounds %struct.tl_change_photo, %struct.tl_change_photo* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.tl_change_photo*, %struct.tl_change_photo** %4, align 8
  %60 = getelementptr inbounds %struct.tl_change_photo, %struct.tl_change_photo* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @rpc_get_fields(i32 %52, i32 %55, i32 %58, i64 %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %51
  %65 = load i32, i32* @TL_ERROR_BAD_VALUE, align 4
  %66 = call i32 @tl_fetch_set_error_format(i32 %65, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %189

67:                                               ; preds = %51
  store i32 1, i32* %6, align 4
  %68 = load i64, i64* @field_changes_n, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %67
  %71 = load %struct.tl_change_photo*, %struct.tl_change_photo** %4, align 8
  %72 = getelementptr inbounds %struct.tl_change_photo, %struct.tl_change_photo* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.tl_change_photo*, %struct.tl_change_photo** %4, align 8
  %75 = getelementptr inbounds %struct.tl_change_photo, %struct.tl_change_photo* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @LEV_PHOTO_CHANGE_PHOTO, align 4
  %78 = call i32 @do_change_data(i32 %73, i32 %76, i32 %77)
  %79 = load i32, i32* %6, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %70, %67
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %176, %81
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @location_changes_n, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %179

86:                                               ; preds = %82
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** @location_changes, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i64 %89
  store %struct.TYPE_12__* %90, %struct.TYPE_12__** %8, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %135

95:                                               ; preds = %86
  %96 = load %struct.tl_change_photo*, %struct.tl_change_photo** %4, align 8
  %97 = getelementptr inbounds %struct.tl_change_photo, %struct.tl_change_photo* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.tl_change_photo*, %struct.tl_change_photo** %4, align 8
  %100 = getelementptr inbounds %struct.tl_change_photo, %struct.tl_change_photo* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @photo_type__original_location, align 8
  %106 = icmp eq i64 %104, %105
  %107 = zext i1 %106 to i32
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @do_add_photo_location_engine(i32 %98, i32 %101, i32 %107, i32 %111, i32 %115, i32 %119, i32 %123, i32 %127, i32 %131)
  %133 = load i32, i32* %6, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %6, align 4
  br label %175

135:                                              ; preds = %86
  %136 = load %struct.tl_change_photo*, %struct.tl_change_photo** %4, align 8
  %137 = getelementptr inbounds %struct.tl_change_photo, %struct.tl_change_photo* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.tl_change_photo*, %struct.tl_change_photo** %4, align 8
  %140 = getelementptr inbounds %struct.tl_change_photo, %struct.tl_change_photo* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @photo_type__original_location, align 8
  %146 = icmp eq i64 %144, %145
  %147 = zext i1 %146 to i32
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @do_add_photo_location(i32 %138, i32 %141, i32 %147, i32 %151, i32 %155, i32 %159, i32 %163, i32 %167, i32 %171)
  %173 = load i32, i32* %6, align 4
  %174 = and i32 %173, %172
  store i32 %174, i32* %6, align 4
  br label %175

175:                                              ; preds = %135, %95
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %7, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %7, align 4
  br label %82

179:                                              ; preds = %82
  %180 = load i32, i32* %6, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %179
  %183 = load i32, i32* @TL_BOOL_TRUE, align 4
  br label %186

184:                                              ; preds = %179
  %185 = load i32, i32* @TL_BOOL_FALSE, align 4
  br label %186

186:                                              ; preds = %184, %182
  %187 = phi i32 [ %183, %182 ], [ %185, %184 ]
  %188 = call i32 @tl_store_int(i32 %187)
  store i32 0, i32* %2, align 4
  br label %189

189:                                              ; preds = %186, %64, %50
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @check_photo_id(i32) #1

declare dso_local %struct.TYPE_11__* @conv_uid(i32) #1

declare dso_local i32 @load_user_metafile(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @user_loaded(%struct.TYPE_11__*) #1

declare dso_local i64 @rpc_get_fields(i32, i32, i32, i64) #1

declare dso_local i32 @tl_fetch_set_error_format(i32, i8*) #1

declare dso_local i32 @do_change_data(i32, i32, i32) #1

declare dso_local i32 @do_add_photo_location_engine(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @do_add_photo_location(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @tl_store_int(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
