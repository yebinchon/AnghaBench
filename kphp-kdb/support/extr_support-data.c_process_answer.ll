; ModuleID = '/home/carl/AnghaBench/kphp-kdb/support/extr_support-data.c_process_answer.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/support/extr_support-data.c_process_answer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, %struct.lev_support_add_answer* }
%struct.lev_support_add_answer = type { i32, i32, i8* }

@user_id_to_answer = common dso_local global i32 0, align 4
@answers_cnt = common dso_local global i32 0, align 4
@buf = common dso_local global i32* null, align 8
@q_cnt = common dso_local global i32 0, align 4
@word_to_answers = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_answer(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lev_support_add_answer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load %struct.lev_support_add_answer*, %struct.lev_support_add_answer** %19, align 8
  store %struct.lev_support_add_answer* %20, %struct.lev_support_add_answer** %5, align 8
  %21 = load %struct.lev_support_add_answer*, %struct.lev_support_add_answer** %5, align 8
  %22 = getelementptr inbounds %struct.lev_support_add_answer, %struct.lev_support_add_answer* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, 1
  br label %29

29:                                               ; preds = %26, %2
  %30 = phi i1 [ true, %2 ], [ %28, %26 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call %struct.TYPE_4__** @map_int_vptr_add(i32* @user_id_to_answer, i32 %37)
  store %struct.TYPE_4__* %36, %struct.TYPE_4__** %38, align 8
  br label %42

39:                                               ; preds = %29
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @map_int_vptr_del(i32* @user_id_to_answer, i32 %40)
  br label %42

42:                                               ; preds = %39, %35
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @answers_cnt, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* @answers_cnt, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.lev_support_add_answer*, %struct.lev_support_add_answer** %5, align 8
  %48 = getelementptr inbounds %struct.lev_support_add_answer, %struct.lev_support_add_answer* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 2, %49
  %51 = add nsw i32 %50, 1
  %52 = mul nsw i32 %46, %51
  store i32 %52, i32* %7, align 4
  %53 = load %struct.lev_support_add_answer*, %struct.lev_support_add_answer** %5, align 8
  %54 = getelementptr inbounds %struct.lev_support_add_answer, %struct.lev_support_add_answer* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %42
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %57, %42
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %120

63:                                               ; preds = %59
  %64 = load %struct.lev_support_add_answer*, %struct.lev_support_add_answer** %5, align 8
  %65 = getelementptr inbounds %struct.lev_support_add_answer, %struct.lev_support_add_answer* %64, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %8, align 8
  br label %67

67:                                               ; preds = %72, %63
  %68 = load i8*, i8** %8, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 9
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i8*, i8** %8, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %8, align 8
  br label %67

75:                                               ; preds = %67
  %76 = load i32*, i32** @buf, align 8
  %77 = load %struct.lev_support_add_answer*, %struct.lev_support_add_answer** %5, align 8
  %78 = getelementptr inbounds %struct.lev_support_add_answer, %struct.lev_support_add_answer* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = bitcast i8* %79 to i32*
  %81 = load i8*, i8** %8, align 8
  %82 = load %struct.lev_support_add_answer*, %struct.lev_support_add_answer** %5, align 8
  %83 = getelementptr inbounds %struct.lev_support_add_answer, %struct.lev_support_add_answer* %82, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  %85 = ptrtoint i8* %81 to i64
  %86 = ptrtoint i8* %84 to i64
  %87 = sub i64 %85, %86
  %88 = trunc i64 %87 to i32
  %89 = call i32 @memcpy(i32* %76, i32* %80, i32 %88)
  %90 = load i32*, i32** @buf, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = load %struct.lev_support_add_answer*, %struct.lev_support_add_answer** %5, align 8
  %93 = getelementptr inbounds %struct.lev_support_add_answer, %struct.lev_support_add_answer* %92, i32 0, i32 2
  %94 = load i8*, i8** %93, align 8
  %95 = ptrtoint i8* %91 to i64
  %96 = ptrtoint i8* %94 to i64
  %97 = sub i64 %95, %96
  %98 = getelementptr inbounds i32, i32* %90, i64 %97
  store i32 0, i32* %98, align 4
  %99 = load i32*, i32** @buf, align 8
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = call i32* @split(i32* %99, i32* %101, i32 0)
  store i32* %102, i32** %9, align 8
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = mul i64 4, %107
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = call i32* @dl_malloc(i32 %110)
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  store i32* %111, i32** %113, align 8
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load i32*, i32** %9, align 8
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @memcpy(i32* %116, i32* %117, i32 %118)
  br label %120

120:                                              ; preds = %75, %59
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  store i32* %123, i32** %11, align 8
  store i32 0, i32* %12, align 4
  br label %124

124:                                              ; preds = %227, %120
  %125 = load i32*, i32** %11, align 8
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %230

131:                                              ; preds = %124
  %132 = load i32*, i32** %11, align 8
  %133 = load i32, i32* %12, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call i32* @map_int_int_add(i32* @q_cnt, i32 %136)
  store i32* %137, i32** %13, align 8
  %138 = load i32*, i32** %11, align 8
  %139 = load i32, i32* %12, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = call i32* @map_int_set_int_add(i32* @word_to_answers, i32 %142)
  store i32* %143, i32** %14, align 8
  %144 = load i32*, i32** %13, align 8
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %131
  %148 = load i32*, i32** %14, align 8
  %149 = call i32 @set_int_init(i32* %148)
  br label %150

150:                                              ; preds = %147, %131
  %151 = load i32, i32* %4, align 4
  %152 = icmp eq i32 %151, -1
  br i1 %152, label %153, label %173

153:                                              ; preds = %150
  %154 = load i32*, i32** %14, align 8
  %155 = call i64 @set_int_used(i32* %154)
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %15, align 4
  %157 = load i32*, i32** %14, align 8
  %158 = load i32, i32* %6, align 4
  %159 = call i32 @set_int_del(i32* %157, i32 %158)
  %160 = load i32*, i32** %14, align 8
  %161 = call i64 @set_int_used(i32* %160)
  %162 = load i32, i32* %15, align 4
  %163 = sub nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = icmp eq i64 %161, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %153
  %167 = load i32, i32* %15, align 4
  %168 = icmp sgt i32 %167, 0
  br label %169

169:                                              ; preds = %166, %153
  %170 = phi i1 [ false, %153 ], [ %168, %166 ]
  %171 = zext i1 %170 to i32
  %172 = call i32 @assert(i32 %171)
  br label %188

173:                                              ; preds = %150
  %174 = load i32*, i32** %14, align 8
  %175 = call i64 @set_int_used(i32* %174)
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %16, align 4
  %177 = load i32*, i32** %14, align 8
  %178 = load i32, i32* %6, align 4
  %179 = call i32 @set_int_add(i32* %177, i32 %178)
  %180 = load i32*, i32** %14, align 8
  %181 = call i64 @set_int_used(i32* %180)
  %182 = load i32, i32* %16, align 4
  %183 = add nsw i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = icmp eq i64 %181, %184
  %186 = zext i1 %185 to i32
  %187 = call i32 @assert(i32 %186)
  br label %188

188:                                              ; preds = %173, %169
  %189 = load i32, i32* %7, align 4
  %190 = load i32*, i32** %13, align 8
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %191, %189
  store i32 %192, i32* %190, align 4
  %193 = load i32*, i32** %13, align 8
  %194 = load i32, i32* %193, align 4
  %195 = icmp sge i32 %194, 0
  %196 = zext i1 %195 to i32
  %197 = call i32 @assert(i32 %196)
  %198 = load i32*, i32** %13, align 8
  %199 = load i32, i32* %198, align 4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %215

201:                                              ; preds = %188
  %202 = load i32*, i32** %14, align 8
  %203 = call i64 @set_int_used(i32* %202)
  %204 = icmp eq i64 %203, 0
  %205 = zext i1 %204 to i32
  %206 = call i32 @assert(i32 %205)
  %207 = load i32*, i32** %14, align 8
  %208 = call i32 @set_int_free(i32* %207)
  %209 = load i32*, i32** %11, align 8
  %210 = load i32, i32* %12, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @map_int_set_int_del(i32* @word_to_answers, i32 %213)
  br label %215

215:                                              ; preds = %201, %188
  %216 = load i32*, i32** %13, align 8
  %217 = load i32, i32* %216, align 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %226

219:                                              ; preds = %215
  %220 = load i32*, i32** %11, align 8
  %221 = load i32, i32* %12, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @map_int_int_del(i32* @q_cnt, i32 %224)
  br label %226

226:                                              ; preds = %219, %215
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %12, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %12, align 4
  br label %124

230:                                              ; preds = %124
  %231 = load i32, i32* %4, align 4
  %232 = icmp eq i32 %231, -1
  br i1 %232, label %233, label %246

233:                                              ; preds = %230
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = add nsw i32 %236, 1
  %238 = sext i32 %237 to i64
  %239 = mul i64 4, %238
  %240 = trunc i64 %239 to i32
  store i32 %240, i32* %17, align 4
  %241 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 1
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* %17, align 4
  %245 = call i32 @dl_free(i32* %243, i32 %244)
  br label %246

246:                                              ; preds = %233, %230
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_4__** @map_int_vptr_add(i32*, i32) #1

declare dso_local i32 @map_int_vptr_del(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32* @split(i32*, i32*, i32) #1

declare dso_local i32* @dl_malloc(i32) #1

declare dso_local i32* @map_int_int_add(i32*, i32) #1

declare dso_local i32* @map_int_set_int_add(i32*, i32) #1

declare dso_local i32 @set_int_init(i32*) #1

declare dso_local i64 @set_int_used(i32*) #1

declare dso_local i32 @set_int_del(i32*, i32) #1

declare dso_local i32 @set_int_add(i32*, i32) #1

declare dso_local i32 @set_int_free(i32*) #1

declare dso_local i32 @map_int_set_int_del(i32*, i32) #1

declare dso_local i32 @map_int_int_del(i32*, i32) #1

declare dso_local i32 @dl_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
