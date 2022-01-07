; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_process_parents.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_process_parents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i64, i64, i64, i64, i64, i32, i32 (%struct.commit*, i32)* }
%struct.commit = type opaque
%struct.commit.0 = type { %struct.TYPE_2__, %struct.commit_list* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.commit_list = type { %struct.commit.0*, %struct.commit_list* }
%struct.prio_queue = type { i32 }

@ADDED = common dso_local global i32 0, align 4
@UNINTERESTING = common dso_local global i32 0, align 4
@SEEN = common dso_local global i32 0, align 4
@SYMMETRIC_LEFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rev_info*, %struct.commit.0*, %struct.commit_list**, %struct.prio_queue*)* @process_parents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_parents(%struct.rev_info* %0, %struct.commit.0* %1, %struct.commit_list** %2, %struct.prio_queue* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rev_info*, align 8
  %7 = alloca %struct.commit.0*, align 8
  %8 = alloca %struct.commit_list**, align 8
  %9 = alloca %struct.prio_queue*, align 8
  %10 = alloca %struct.commit_list*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.commit.0*, align 8
  %13 = alloca %struct.commit.0*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  store %struct.rev_info* %0, %struct.rev_info** %6, align 8
  store %struct.commit.0* %1, %struct.commit.0** %7, align 8
  store %struct.commit_list** %2, %struct.commit_list*** %8, align 8
  store %struct.prio_queue* %3, %struct.prio_queue** %9, align 8
  %16 = load %struct.commit.0*, %struct.commit.0** %7, align 8
  %17 = getelementptr inbounds %struct.commit.0, %struct.commit.0* %16, i32 0, i32 1
  %18 = load %struct.commit_list*, %struct.commit_list** %17, align 8
  store %struct.commit_list* %18, %struct.commit_list** %10, align 8
  %19 = load %struct.commit.0*, %struct.commit.0** %7, align 8
  %20 = getelementptr inbounds %struct.commit.0, %struct.commit.0* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @ADDED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %253

27:                                               ; preds = %4
  %28 = load i32, i32* @ADDED, align 4
  %29 = load %struct.commit.0*, %struct.commit.0** %7, align 8
  %30 = getelementptr inbounds %struct.commit.0, %struct.commit.0* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %28
  store i32 %33, i32* %31, align 8
  %34 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %35 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %34, i32 0, i32 6
  %36 = load i32 (%struct.commit*, i32)*, i32 (%struct.commit*, i32)** %35, align 8
  %37 = icmp ne i32 (%struct.commit*, i32)* %36, null
  br i1 %37, label %38, label %50

38:                                               ; preds = %27
  %39 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %40 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %39, i32 0, i32 6
  %41 = load i32 (%struct.commit*, i32)*, i32 (%struct.commit*, i32)** %40, align 8
  %42 = load %struct.commit.0*, %struct.commit.0** %7, align 8
  %43 = bitcast %struct.commit.0* %42 to %struct.commit*
  %44 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %45 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = call i32 %41(%struct.commit* %43, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %253

50:                                               ; preds = %38, %27
  %51 = load %struct.commit.0*, %struct.commit.0** %7, align 8
  %52 = getelementptr inbounds %struct.commit.0, %struct.commit.0* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @UNINTERESTING, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %122

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %120, %99, %82, %58
  %60 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %61 = icmp ne %struct.commit_list* %60, null
  br i1 %61, label %62, label %121

62:                                               ; preds = %59
  %63 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %64 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %63, i32 0, i32 0
  %65 = load %struct.commit.0*, %struct.commit.0** %64, align 8
  store %struct.commit.0* %65, %struct.commit.0** %12, align 8
  %66 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %67 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %66, i32 0, i32 1
  %68 = load %struct.commit_list*, %struct.commit_list** %67, align 8
  store %struct.commit_list* %68, %struct.commit_list** %10, align 8
  %69 = load %struct.commit.0*, %struct.commit.0** %12, align 8
  %70 = icmp ne %struct.commit.0* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %62
  %72 = load i32, i32* @UNINTERESTING, align 4
  %73 = load %struct.commit.0*, %struct.commit.0** %12, align 8
  %74 = getelementptr inbounds %struct.commit.0, %struct.commit.0* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %72
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %71, %62
  %79 = load %struct.commit.0*, %struct.commit.0** %12, align 8
  %80 = call i64 @parse_commit_gently(%struct.commit.0* %79, i32 1)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  br label %59

83:                                               ; preds = %78
  %84 = load %struct.commit.0*, %struct.commit.0** %12, align 8
  %85 = getelementptr inbounds %struct.commit.0, %struct.commit.0* %84, i32 0, i32 1
  %86 = load %struct.commit_list*, %struct.commit_list** %85, align 8
  %87 = icmp ne %struct.commit_list* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load %struct.commit.0*, %struct.commit.0** %12, align 8
  %90 = call i32 @mark_parents_uninteresting(%struct.commit.0* %89)
  br label %91

91:                                               ; preds = %88, %83
  %92 = load %struct.commit.0*, %struct.commit.0** %12, align 8
  %93 = getelementptr inbounds %struct.commit.0, %struct.commit.0* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @SEEN, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  br label %59

100:                                              ; preds = %91
  %101 = load i32, i32* @SEEN, align 4
  %102 = load %struct.commit.0*, %struct.commit.0** %12, align 8
  %103 = getelementptr inbounds %struct.commit.0, %struct.commit.0* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %101
  store i32 %106, i32* %104, align 8
  %107 = load %struct.commit_list**, %struct.commit_list*** %8, align 8
  %108 = icmp ne %struct.commit_list** %107, null
  br i1 %108, label %109, label %113

109:                                              ; preds = %100
  %110 = load %struct.commit.0*, %struct.commit.0** %12, align 8
  %111 = load %struct.commit_list**, %struct.commit_list*** %8, align 8
  %112 = call i32 @commit_list_insert_by_date(%struct.commit.0* %110, %struct.commit_list** %111)
  br label %113

113:                                              ; preds = %109, %100
  %114 = load %struct.prio_queue*, %struct.prio_queue** %9, align 8
  %115 = icmp ne %struct.prio_queue* %114, null
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load %struct.prio_queue*, %struct.prio_queue** %9, align 8
  %118 = load %struct.commit.0*, %struct.commit.0** %12, align 8
  %119 = call i32 @prio_queue_put(%struct.prio_queue* %117, %struct.commit.0* %118)
  br label %120

120:                                              ; preds = %116, %113
  br label %59

121:                                              ; preds = %59
  store i32 0, i32* %5, align 4
  br label %253

122:                                              ; preds = %50
  %123 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %124 = load %struct.commit.0*, %struct.commit.0** %7, align 8
  %125 = call i32 @try_to_simplify_commit(%struct.rev_info* %123, %struct.commit.0* %124)
  %126 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %127 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %122
  store i32 0, i32* %5, align 4
  br label %253

131:                                              ; preds = %122
  %132 = load %struct.commit.0*, %struct.commit.0** %7, align 8
  %133 = getelementptr inbounds %struct.commit.0, %struct.commit.0* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @SYMMETRIC_LEFT, align 4
  %137 = and i32 %135, %136
  store i32 %137, i32* %11, align 4
  %138 = load %struct.commit.0*, %struct.commit.0** %7, align 8
  %139 = getelementptr inbounds %struct.commit.0, %struct.commit.0* %138, i32 0, i32 1
  %140 = load %struct.commit_list*, %struct.commit_list** %139, align 8
  store %struct.commit_list* %140, %struct.commit_list** %10, align 8
  br label %141

141:                                              ; preds = %248, %131
  %142 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %143 = icmp ne %struct.commit_list* %142, null
  br i1 %143, label %144, label %252

144:                                              ; preds = %141
  %145 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %146 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %145, i32 0, i32 0
  %147 = load %struct.commit.0*, %struct.commit.0** %146, align 8
  store %struct.commit.0* %147, %struct.commit.0** %13, align 8
  %148 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %149 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %144
  %153 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %154 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br label %157

157:                                              ; preds = %152, %144
  %158 = phi i1 [ true, %144 ], [ %156, %152 ]
  %159 = zext i1 %158 to i32
  store i32 %159, i32* %14, align 4
  %160 = load %struct.commit.0*, %struct.commit.0** %13, align 8
  %161 = load i32, i32* %14, align 4
  %162 = call i64 @parse_commit_gently(%struct.commit.0* %160, i32 %161)
  %163 = icmp slt i64 %162, 0
  br i1 %163, label %164, label %183

164:                                              ; preds = %157
  %165 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %166 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %182

169:                                              ; preds = %164
  %170 = load %struct.commit.0*, %struct.commit.0** %13, align 8
  %171 = getelementptr inbounds %struct.commit.0, %struct.commit.0* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 1
  %173 = call i64 @is_promisor_object(i32* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %169
  %176 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %177 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %175
  br label %252

181:                                              ; preds = %175
  br label %248

182:                                              ; preds = %169, %164
  store i32 -1, i32* %5, align 4
  br label %253

183:                                              ; preds = %157
  %184 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %185 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %206

188:                                              ; preds = %183
  %189 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %190 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.commit.0*, %struct.commit.0** %13, align 8
  %193 = call i8** @revision_sources_at(i64 %191, %struct.commit.0* %192)
  store i8** %193, i8*** %15, align 8
  %194 = load i8**, i8*** %15, align 8
  %195 = load i8*, i8** %194, align 8
  %196 = icmp ne i8* %195, null
  br i1 %196, label %205, label %197

197:                                              ; preds = %188
  %198 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %199 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.commit.0*, %struct.commit.0** %7, align 8
  %202 = call i8** @revision_sources_at(i64 %200, %struct.commit.0* %201)
  %203 = load i8*, i8** %202, align 8
  %204 = load i8**, i8*** %15, align 8
  store i8* %203, i8** %204, align 8
  br label %205

205:                                              ; preds = %197, %188
  br label %206

206:                                              ; preds = %205, %183
  %207 = load i32, i32* %11, align 4
  %208 = load %struct.commit.0*, %struct.commit.0** %13, align 8
  %209 = getelementptr inbounds %struct.commit.0, %struct.commit.0* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = or i32 %211, %207
  store i32 %212, i32* %210, align 8
  %213 = load %struct.commit.0*, %struct.commit.0** %13, align 8
  %214 = getelementptr inbounds %struct.commit.0, %struct.commit.0* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @SEEN, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %241, label %220

220:                                              ; preds = %206
  %221 = load i32, i32* @SEEN, align 4
  %222 = load %struct.commit.0*, %struct.commit.0** %13, align 8
  %223 = getelementptr inbounds %struct.commit.0, %struct.commit.0* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = or i32 %225, %221
  store i32 %226, i32* %224, align 8
  %227 = load %struct.commit_list**, %struct.commit_list*** %8, align 8
  %228 = icmp ne %struct.commit_list** %227, null
  br i1 %228, label %229, label %233

229:                                              ; preds = %220
  %230 = load %struct.commit.0*, %struct.commit.0** %13, align 8
  %231 = load %struct.commit_list**, %struct.commit_list*** %8, align 8
  %232 = call i32 @commit_list_insert_by_date(%struct.commit.0* %230, %struct.commit_list** %231)
  br label %233

233:                                              ; preds = %229, %220
  %234 = load %struct.prio_queue*, %struct.prio_queue** %9, align 8
  %235 = icmp ne %struct.prio_queue* %234, null
  br i1 %235, label %236, label %240

236:                                              ; preds = %233
  %237 = load %struct.prio_queue*, %struct.prio_queue** %9, align 8
  %238 = load %struct.commit.0*, %struct.commit.0** %13, align 8
  %239 = call i32 @prio_queue_put(%struct.prio_queue* %237, %struct.commit.0* %238)
  br label %240

240:                                              ; preds = %236, %233
  br label %241

241:                                              ; preds = %240, %206
  %242 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %243 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %241
  br label %252

247:                                              ; preds = %241
  br label %248

248:                                              ; preds = %247, %181
  %249 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %250 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %249, i32 0, i32 1
  %251 = load %struct.commit_list*, %struct.commit_list** %250, align 8
  store %struct.commit_list* %251, %struct.commit_list** %10, align 8
  br label %141

252:                                              ; preds = %246, %180, %141
  store i32 0, i32* %5, align 4
  br label %253

253:                                              ; preds = %252, %182, %130, %121, %49, %26
  %254 = load i32, i32* %5, align 4
  ret i32 %254
}

declare dso_local i64 @parse_commit_gently(%struct.commit.0*, i32) #1

declare dso_local i32 @mark_parents_uninteresting(%struct.commit.0*) #1

declare dso_local i32 @commit_list_insert_by_date(%struct.commit.0*, %struct.commit_list**) #1

declare dso_local i32 @prio_queue_put(%struct.prio_queue*, %struct.commit.0*) #1

declare dso_local i32 @try_to_simplify_commit(%struct.rev_info*, %struct.commit.0*) #1

declare dso_local i64 @is_promisor_object(i32*) #1

declare dso_local i8** @revision_sources_at(i64, %struct.commit.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
