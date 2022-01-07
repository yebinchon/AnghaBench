; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-data.c_init_all.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-data.c_init_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__*, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_7__*, %struct.TYPE_7__*, i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"sizeof (user) = %ld\0A\00", align 1
@log_ts_exact_interval = common dso_local global i32 0, align 4
@MAX_CNT = common dso_local global i32 0, align 4
@buff = common dso_local global i8* null, align 8
@index_mode = common dso_local global i64 0, align 8
@MAX_USR_SIZE = common dso_local global i32 0, align 4
@buffer = common dso_local global i8* null, align 8
@new_obj = common dso_local global i8* null, align 8
@type_ids = common dso_local global i8* null, align 8
@MAX_RATING_NUM = common dso_local global i32 0, align 4
@object_ratings = common dso_local global i8* null, align 8
@object_ratings_to_sort = common dso_local global i8* null, align 8
@h_buff = common dso_local global i8* null, align 8
@MAX_K = common dso_local global i32 0, align 4
@dp = common dso_local global i8** null, align 8
@d = common dso_local global i8* null, align 8
@weight = common dso_local global i8* null, align 8
@heap = common dso_local global i8* null, align 8
@objects_typeids_to_sort = common dso_local global i8* null, align 8
@objects_to_sort = common dso_local global i8* null, align 8
@exc = common dso_local global i32 0, align 4
@global_changes_st = common dso_local global i32 0, align 4
@global_changes_en = common dso_local global i32 0, align 4
@user_table = common dso_local global i32 0, align 4
@header = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@ratingT = common dso_local global i32 0, align 4
@jump_log_ts = common dso_local global i32 0, align 4
@jump_log_pos = common dso_local global i32 0, align 4
@jump_log_crc32 = common dso_local global i32 0, align 4
@index_users = common dso_local global i32 0, align 4
@estimate_users = common dso_local global i32 0, align 4
@write_only = common dso_local global i64 0, align 8
@users = common dso_local global %struct.TYPE_7__* null, align 8
@LRU_head = common dso_local global %struct.TYPE_7__* null, align 8
@i_buff = common dso_local global i8* null, align 8
@intersect_buff = common dso_local global i8* null, align 8
@new_h = common dso_local global i8* null, align 8
@object_buf = common dso_local global i8* null, align 8
@object_indexes = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_all(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @verbosity, align 4
  %8 = icmp sgt i32 %7, 3
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @stderr, align 4
  %11 = call i32 @fprintf(i32 %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 4)
  br label %12

12:                                               ; preds = %9, %1
  store i32 1, i32* @log_ts_exact_interval, align 4
  %13 = load i32, i32* @MAX_CNT, align 4
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = trunc i64 %16 to i32
  %18 = call i8* @dl_malloc(i32 %17)
  store i8* %18, i8** @buff, align 8
  %19 = load i64, i64* @index_mode, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %58

21:                                               ; preds = %12
  %22 = load i32, i32* @MAX_CNT, align 4
  %23 = sext i32 %22 to i64
  %24 = mul nsw i64 200, %23
  %25 = icmp slt i64 %24, 2000000000
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @MAX_CNT, align 4
  %28 = mul nsw i32 200, %27
  store i32 %28, i32* @MAX_USR_SIZE, align 4
  br label %30

29:                                               ; preds = %21
  store i32 2000000000, i32* @MAX_USR_SIZE, align 4
  br label %30

30:                                               ; preds = %29, %26
  %31 = load i32, i32* @MAX_USR_SIZE, align 4
  %32 = call i8* @dl_malloc(i32 %31)
  store i8* %32, i8** @buffer, align 8
  %33 = load i32, i32* @MAX_USR_SIZE, align 4
  %34 = call i8* @dl_malloc(i32 %33)
  store i8* %34, i8** @new_obj, align 8
  %35 = load i32, i32* @MAX_CNT, align 4
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 8
  %39 = trunc i64 %38 to i32
  %40 = call i8* @dl_malloc(i32 %39)
  store i8* %40, i8** @type_ids, align 8
  %41 = load i32, i32* @MAX_CNT, align 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 4
  %45 = load i32, i32* @MAX_RATING_NUM, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %44, %46
  %48 = trunc i64 %47 to i32
  %49 = call i8* @dl_malloc(i32 %48)
  store i8* %49, i8** @object_ratings, align 8
  %50 = load i32, i32* @MAX_CNT, align 4
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = trunc i64 %53 to i32
  %55 = call i8* @dl_malloc(i32 %54)
  store i8* %55, i8** @object_ratings_to_sort, align 8
  %56 = load i32, i32* @MAX_USR_SIZE, align 4
  %57 = call i8* @dl_malloc(i32 %56)
  store i8* %57, i8** @h_buff, align 8
  br label %111

58:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %74, %58
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @MAX_K, align 4
  %62 = icmp sle i32 %60, %61
  br i1 %62, label %63, label %77

63:                                               ; preds = %59
  %64 = load i32, i32* @MAX_CNT, align 4
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = mul i64 %66, 4
  %68 = trunc i64 %67 to i32
  %69 = call i8* @dl_malloc(i32 %68)
  %70 = load i8**, i8*** @dp, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  store i8* %69, i8** %73, align 8
  br label %74

74:                                               ; preds = %63
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %4, align 4
  br label %59

77:                                               ; preds = %59
  %78 = load i32, i32* @MAX_CNT, align 4
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = mul i64 %80, 4
  %82 = trunc i64 %81 to i32
  %83 = call i8* @dl_malloc(i32 %82)
  store i8* %83, i8** @d, align 8
  %84 = load i32, i32* @MAX_CNT, align 4
  %85 = sext i32 %84 to i64
  %86 = mul i64 %85, 4
  %87 = trunc i64 %86 to i32
  %88 = call i8* @dl_malloc(i32 %87)
  store i8* %88, i8** @weight, align 8
  %89 = load i32, i32* @MAX_CNT, align 4
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = mul i64 %91, 4
  %93 = trunc i64 %92 to i32
  %94 = call i8* @dl_malloc(i32 %93)
  store i8* %94, i8** @heap, align 8
  %95 = load i32, i32* @MAX_CNT, align 4
  %96 = sext i32 %95 to i64
  %97 = mul i64 %96, 8
  %98 = trunc i64 %97 to i32
  %99 = call i8* @dl_malloc(i32 %98)
  store i8* %99, i8** @objects_typeids_to_sort, align 8
  %100 = load i32, i32* @MAX_CNT, align 4
  %101 = sext i32 %100 to i64
  %102 = mul i64 %101, 4
  %103 = trunc i64 %102 to i32
  %104 = call i8* @dl_malloc(i32 %103)
  store i8* %104, i8** @objects_to_sort, align 8
  %105 = load i32, i32* @MAX_CNT, align 4
  %106 = add nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = mul i64 %107, 4
  %109 = trunc i64 %108 to i32
  %110 = call i32 @dl_malloc0(i32 %109)
  store i32 %110, i32* @exc, align 4
  br label %111

111:                                              ; preds = %77, %30
  %112 = call i32 @chg_list_init(i32* @global_changes_st, i32* @global_changes_en)
  %113 = call i32 @ltbl_init(i32* @user_table)
  %114 = load i32, i32* %2, align 4
  %115 = call i32 @load_header(i32 %114)
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @header, i32 0, i32 5), align 4
  store i32 %116, i32* @ratingT, align 4
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @header, i32 0, i32 4), align 8
  store i32 %117, i32* @jump_log_ts, align 4
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @header, i32 0, i32 3), align 4
  store i32 %118, i32* @jump_log_pos, align 4
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @header, i32 0, i32 2), align 8
  store i32 %119, i32* @jump_log_crc32, align 4
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @header, i32 0, i32 0), align 8
  store i32 %120, i32* @index_users, align 4
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @estimate_users, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %111
  %125 = load i32, i32* @estimate_users, align 4
  store i32 %125, i32* %6, align 4
  br label %126

126:                                              ; preds = %124, %111
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* @estimate_users, align 4
  %129 = icmp sge i32 %127, %128
  %130 = zext i1 %129 to i32
  %131 = call i32 @assert(i32 %130)
  %132 = load i32, i32* %6, align 4
  %133 = sitofp i32 %132 to double
  %134 = fmul double %133, 1.100000e+00
  %135 = fptosi double %134 to i32
  store i32 %135, i32* %6, align 4
  br label %136

136:                                              ; preds = %146, %126
  %137 = load i32, i32* %6, align 4
  %138 = srem i32 %137, 2
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %136
  %141 = load i32, i32* %6, align 4
  %142 = srem i32 %141, 5
  %143 = icmp eq i32 %142, 0
  br label %144

144:                                              ; preds = %140, %136
  %145 = phi i1 [ true, %136 ], [ %143, %140 ]
  br i1 %145, label %146, label %149

146:                                              ; preds = %144
  %147 = load i32, i32* %6, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %6, align 4
  br label %136

149:                                              ; preds = %144
  %150 = load i64, i64* @write_only, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  store i32 3, i32* %6, align 4
  br label %153

153:                                              ; preds = %152, %149
  %154 = load i32, i32* %6, align 4
  %155 = call i32 @ltbl_set_size(i32* @user_table, i32 %154)
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = mul i64 4, %157
  %159 = trunc i64 %158 to i32
  %160 = call i8* @dl_malloc(i32 %159)
  %161 = bitcast i8* %160 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %161, %struct.TYPE_7__** @users, align 8
  store i32 0, i32* %3, align 4
  br label %162

162:                                              ; preds = %172, %153
  %163 = load i32, i32* %3, align 4
  %164 = load i32, i32* %6, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %175

166:                                              ; preds = %162
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** @users, align 8
  %168 = load i32, i32* %3, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i64 %169
  %171 = call i32 @user_init(%struct.TYPE_7__* %170)
  br label %172

172:                                              ; preds = %166
  %173 = load i32, i32* %3, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %3, align 4
  br label %162

175:                                              ; preds = %162
  store i32 1, i32* %3, align 4
  br label %176

176:                                              ; preds = %219, %175
  %177 = load i32, i32* %3, align 4
  %178 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @header, i32 0, i32 0), align 8
  %179 = icmp sle i32 %177, %178
  br i1 %179, label %180, label %222

180:                                              ; preds = %176
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** @users, align 8
  %182 = load i32, i32* %3, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @header, i32 0, i32 1), align 8
  %188 = load i32, i32* %3, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @GET_USER_INFO(i32 %192)
  %194 = call i32 @SET_USER_INFO(i32 %186, i32 %193)
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** @users, align 8
  %196 = load i32, i32* %3, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 2
  store i32 %194, i32* %199, align 8
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** @users, align 8
  %201 = load i32, i32* %3, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @header, i32 0, i32 1), align 8
  %207 = load i32, i32* %3, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @GET_USER_RATING_STATE(i32 %211)
  %213 = call i32 @SET_USER_RATING_STATE(i32 %205, i32 %212)
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** @users, align 8
  %215 = load i32, i32* %3, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 2
  store i32 %213, i32* %218, align 8
  br label %219

219:                                              ; preds = %180
  %220 = load i32, i32* %3, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %3, align 4
  br label %176

222:                                              ; preds = %176
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** @users, align 8
  store %struct.TYPE_7__* %223, %struct.TYPE_7__** @LRU_head, align 8
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** @LRU_head, align 8
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** @LRU_head, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 0
  store %struct.TYPE_7__* %224, %struct.TYPE_7__** %226, align 8
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** @LRU_head, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 1
  store %struct.TYPE_7__* %224, %struct.TYPE_7__** %228, align 8
  %229 = load i32, i32* %5, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %222
  %232 = call i32 (...) @try_init_local_user_id()
  br label %233

233:                                              ; preds = %231, %222
  %234 = load i32, i32* %5, align 4
  ret i32 %234
}

declare dso_local i32 @fprintf(i32, i8*, i64) #1

declare dso_local i8* @dl_malloc(i32) #1

declare dso_local i32 @dl_malloc0(i32) #1

declare dso_local i32 @chg_list_init(i32*, i32*) #1

declare dso_local i32 @ltbl_init(i32*) #1

declare dso_local i32 @load_header(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ltbl_set_size(i32*, i32) #1

declare dso_local i32 @user_init(%struct.TYPE_7__*) #1

declare dso_local i32 @SET_USER_INFO(i32, i32) #1

declare dso_local i32 @GET_USER_INFO(i32) #1

declare dso_local i32 @SET_USER_RATING_STATE(i32, i32) #1

declare dso_local i32 @GET_USER_RATING_STATE(i32) #1

declare dso_local i32 @try_init_local_user_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
