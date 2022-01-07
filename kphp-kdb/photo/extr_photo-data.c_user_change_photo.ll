; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_user_change_photo.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_user_change_photo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_16__ = type { i32*, i32 }
%struct.TYPE_14__ = type { i32*, i32 }

@.str = private unnamed_addr constant [59 x i8] c"user_change_photo %d: photo_id = %d, field_changes_n = %d\0A\00", align 1
@write_only = common dso_local global i64 0, align 8
@photo_type_id = common dso_local global i64 0, align 8
@photo_type_owner_id = common dso_local global i64 0, align 8
@photo_type_album_id = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [64 x i8] c"Move (photo_id = %d) to (album_id = %d) (field_changes_n = %d)\0A\00", align 1
@PHOTO_TYPE = common dso_local global i32 0, align 4
@ch_event = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @user_change_photo(%struct.TYPE_13__* %0, i32 %1, %struct.TYPE_15__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_16__, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_14__, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @dbg(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22, i32 %23)
  %25 = load i64, i64* @write_only, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %197

28:                                               ; preds = %4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %30 = call i32 @user_loaded(%struct.TYPE_13__* %29)
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @user_get_aid_by_pid(%struct.TYPE_13__* %32, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %197

38:                                               ; preds = %28
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32* @user_get_photo_data(%struct.TYPE_13__* %39, i32 %40)
  store i32* %41, i32** %11, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %197

45:                                               ; preds = %38
  %46 = load i32*, i32** %11, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i64 @data_get_hidden_state(i32* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %197

51:                                               ; preds = %45
  store i32 0, i32* %12, align 4
  br label %52

52:                                               ; preds = %186, %51
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %189

56:                                               ; preds = %52
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @photo_type_id, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %56
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @photo_type_owner_id, align 8
  %73 = icmp ne i64 %71, %72
  br label %74

74:                                               ; preds = %65, %56
  %75 = phi i1 [ false, %56 ], [ %73, %65 ]
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @photo_type_album_id, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %185

86:                                               ; preds = %74
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %86
  br label %186

97:                                               ; preds = %86
  %98 = load i32, i32* %7, align 4
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @dbg(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %98, i32 %104, i32 %105)
  %107 = load i32, i32* %13, align 4
  %108 = call i32 @check_album_id(i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %97
  store i32 0, i32* %5, align 4
  br label %197

111:                                              ; preds = %97
  %112 = load i32, i32* %13, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @user_create_album_force(%struct.TYPE_13__* %115, i32 %116)
  br label %118

118:                                              ; preds = %114, %111
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %120 = load i32, i32* %13, align 4
  %121 = call i32* @user_get_photo_data(%struct.TYPE_13__* %119, i32 %120)
  store i32* %121, i32** %14, align 8
  %122 = load i32*, i32** %14, align 8
  %123 = icmp eq i32* %122, null
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  store i32 0, i32* %5, align 4
  br label %197

125:                                              ; preds = %118
  %126 = load i32*, i32** %14, align 8
  %127 = call i64 @data_get_cnt(i32* %126)
  %128 = add nsw i64 %127, 1
  %129 = load i32, i32* %13, align 4
  %130 = call i64 @GET_MAX_PHOTOS(i32 %129)
  %131 = icmp sgt i64 %128, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %125
  store i32 0, i32* %5, align 4
  br label %197

133:                                              ; preds = %125
  %134 = load i32*, i32** %11, align 8
  %135 = load i32, i32* %7, align 4
  %136 = call i32 @data_get_local_id_by_id(i32* %134, i32 %135)
  store i32 %136, i32* %16, align 4
  %137 = load i32, i32* %16, align 4
  %138 = icmp sge i32 %137, 0
  %139 = zext i1 %138 to i32
  %140 = call i32 @assert(i32 %139)
  %141 = load i32*, i32** %11, align 8
  %142 = load i32, i32* %16, align 4
  %143 = call i64 @data_get_actual_object(i32* %141, i32 %142, %struct.TYPE_16__* %15)
  %144 = icmp sge i64 %143, 0
  %145 = zext i1 %144 to i32
  %146 = call i32 @assert(i32 %145)
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @PHOTO_TYPE, align 4
  %152 = call i32* @event_update_event(i32* %148, i32 %150, i32 %151)
  store i32* %152, i32** %17, align 8
  %153 = load i32*, i32** %17, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = icmp eq i32* %153, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %133
  %158 = load i32*, i32** %17, align 8
  %159 = call i32* @event_dup(i32* %158)
  store i32* %159, i32** %17, align 8
  br label %160

160:                                              ; preds = %157, %133
  %161 = load i32*, i32** %11, align 8
  %162 = load i32, i32* %7, align 4
  %163 = call i32 @data_del(i32* %161, i32 %162)
  %164 = load i32*, i32** %14, align 8
  %165 = load i32, i32* %7, align 4
  %166 = call i32 @data_add_object(i32* %164, i32 %165)
  store i32 %166, i32* %16, align 4
  %167 = load i32, i32* %16, align 4
  %168 = icmp sge i32 %167, 0
  %169 = zext i1 %168 to i32
  %170 = call i32 @assert(i32 %169)
  %171 = load i32, i32* @ch_event, align 4
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  store i32 %171, i32* %172, align 8
  %173 = load i32*, i32** %17, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  store i32* %173, i32** %174, align 8
  %175 = load i32*, i32** %14, align 8
  %176 = bitcast %struct.TYPE_14__* %18 to i32*
  %177 = load i32, i32* %16, align 4
  %178 = call i32 @data_add_change(i32* %175, i32* %176, i32 %177)
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 1
  %181 = load i32, i32* %7, align 4
  %182 = load i32, i32* %13, align 4
  %183 = call i32 @lookup_set(i32* %180, i32 %181, i32 %182)
  %184 = load i32*, i32** %14, align 8
  store i32* %184, i32** %11, align 8
  br label %185

185:                                              ; preds = %160, %74
  br label %186

186:                                              ; preds = %185, %96
  %187 = load i32, i32* %12, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %12, align 4
  br label %52

189:                                              ; preds = %52
  %190 = load i32*, i32** %11, align 8
  %191 = load i32, i32* %7, align 4
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %193 = load i32, i32* %9, align 4
  %194 = call i32 @user_change_data(i32* %190, i32 %191, %struct.TYPE_15__* %192, i32 %193, i32 0)
  %195 = icmp sgt i32 %194, -1
  %196 = zext i1 %195 to i32
  store i32 %196, i32* %5, align 4
  br label %197

197:                                              ; preds = %189, %132, %124, %110, %50, %44, %37, %27
  %198 = load i32, i32* %5, align 4
  ret i32 %198
}

declare dso_local i32 @dbg(i8*, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @user_loaded(%struct.TYPE_13__*) #1

declare dso_local i32 @user_get_aid_by_pid(%struct.TYPE_13__*, i32) #1

declare dso_local i32* @user_get_photo_data(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @data_get_hidden_state(i32*, i32) #1

declare dso_local i32 @check_album_id(i32) #1

declare dso_local i32 @user_create_album_force(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @data_get_cnt(i32*) #1

declare dso_local i64 @GET_MAX_PHOTOS(i32) #1

declare dso_local i32 @data_get_local_id_by_id(i32*, i32) #1

declare dso_local i64 @data_get_actual_object(i32*, i32, %struct.TYPE_16__*) #1

declare dso_local i32* @event_update_event(i32*, i32, i32) #1

declare dso_local i32* @event_dup(i32*) #1

declare dso_local i32 @data_del(i32*, i32) #1

declare dso_local i32 @data_add_object(i32*, i32) #1

declare dso_local i32 @data_add_change(i32*, i32*, i32) #1

declare dso_local i32 @lookup_set(i32*, i32, i32) #1

declare dso_local i32 @user_change_data(i32*, i32, %struct.TYPE_15__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
