; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-file.c_loose_object_info.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-file.c_loose_object_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i64 }
%struct.repository = type { i32 }
%struct.object_id = type { i32 }
%struct.object_info = type { i32*, i64*, i64*, i32, i32*, i32, i64 }
%struct.stat = type { i64 }

@MAX_HEADER_LEN = common dso_local global i32 0, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@OBJECT_INFO_QUICK = common dso_local global i32 0, align 4
@OBJECT_INFO_ALLOW_UNKNOWN_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"unable to unpack %s header with --allow-unknown-type\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"unable to unpack %s header\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"unable to parse %s header with --allow-unknown-type\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"unable to parse %s header\00", align 1
@OI_LOOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, %struct.object_id*, %struct.object_info*, i32)* @loose_object_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loose_object_info(%struct.repository* %0, %struct.object_id* %1, %struct.object_info* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.repository*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca %struct.object_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.strbuf, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.stat, align 8
  %20 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %6, align 8
  store %struct.object_id* %1, %struct.object_id** %7, align 8
  store %struct.object_info* %2, %struct.object_info** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %21 = load i32, i32* @MAX_HEADER_LEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %14, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %15, align 8
  %25 = bitcast %struct.strbuf* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %26 = load %struct.object_info*, %struct.object_info** %8, align 8
  %27 = getelementptr inbounds %struct.object_info, %struct.object_info* %26, i32 0, i32 6
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %4
  %31 = load %struct.object_info*, %struct.object_info** %8, align 8
  %32 = getelementptr inbounds %struct.object_info, %struct.object_info* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @hashclr(i64 %33)
  br label %35

35:                                               ; preds = %30, %4
  %36 = load %struct.object_info*, %struct.object_info** %8, align 8
  %37 = getelementptr inbounds %struct.object_info, %struct.object_info* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %90, label %40

40:                                               ; preds = %35
  %41 = load %struct.object_info*, %struct.object_info** %8, align 8
  %42 = getelementptr inbounds %struct.object_info, %struct.object_info* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %90, label %45

45:                                               ; preds = %40
  %46 = load %struct.object_info*, %struct.object_info** %8, align 8
  %47 = getelementptr inbounds %struct.object_info, %struct.object_info* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = icmp ne i64* %48, null
  br i1 %49, label %90, label %50

50:                                               ; preds = %45
  %51 = load %struct.object_info*, %struct.object_info** %8, align 8
  %52 = getelementptr inbounds %struct.object_info, %struct.object_info* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %90, label %55

55:                                               ; preds = %50
  %56 = load %struct.object_info*, %struct.object_info** %8, align 8
  %57 = getelementptr inbounds %struct.object_info, %struct.object_info* %56, i32 0, i32 2
  %58 = load i64*, i64** %57, align 8
  %59 = icmp ne i64* %58, null
  br i1 %59, label %72, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @OBJECT_INFO_QUICK, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load %struct.repository*, %struct.repository** %6, align 8
  %67 = load %struct.object_id*, %struct.object_id** %7, align 8
  %68 = call i64 @quick_has_loose(%struct.repository* %66, %struct.object_id* %67)
  %69 = icmp ne i64 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 0, i32 -1
  store i32 %71, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %241

72:                                               ; preds = %60, %55
  %73 = load %struct.repository*, %struct.repository** %6, align 8
  %74 = load %struct.object_id*, %struct.object_id** %7, align 8
  %75 = call i64 @stat_loose_object(%struct.repository* %73, %struct.object_id* %74, %struct.stat* %19, i8** %18)
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %241

78:                                               ; preds = %72
  %79 = load %struct.object_info*, %struct.object_info** %8, align 8
  %80 = getelementptr inbounds %struct.object_info, %struct.object_info* %79, i32 0, i32 2
  %81 = load i64*, i64** %80, align 8
  %82 = icmp ne i64* %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.stat, %struct.stat* %19, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.object_info*, %struct.object_info** %8, align 8
  %87 = getelementptr inbounds %struct.object_info, %struct.object_info* %86, i32 0, i32 2
  %88 = load i64*, i64** %87, align 8
  store i64 %85, i64* %88, align 8
  br label %89

89:                                               ; preds = %83, %78
  store i32 0, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %241

90:                                               ; preds = %50, %45, %40, %35
  %91 = load %struct.repository*, %struct.repository** %6, align 8
  %92 = load %struct.object_id*, %struct.object_id** %7, align 8
  %93 = call i8* @map_loose_object(%struct.repository* %91, %struct.object_id* %92, i64* %11)
  store i8* %93, i8** %12, align 8
  %94 = load i8*, i8** %12, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %90
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %241

97:                                               ; preds = %90
  %98 = load %struct.object_info*, %struct.object_info** %8, align 8
  %99 = getelementptr inbounds %struct.object_info, %struct.object_info* %98, i32 0, i32 1
  %100 = load i64*, i64** %99, align 8
  %101 = icmp ne i64* %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %97
  %103 = load %struct.object_info*, %struct.object_info** %8, align 8
  %104 = getelementptr inbounds %struct.object_info, %struct.object_info* %103, i32 0, i32 1
  store i64* %17, i64** %104, align 8
  br label %105

105:                                              ; preds = %102, %97
  %106 = load %struct.object_info*, %struct.object_info** %8, align 8
  %107 = getelementptr inbounds %struct.object_info, %struct.object_info* %106, i32 0, i32 2
  %108 = load i64*, i64** %107, align 8
  %109 = icmp ne i64* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load i64, i64* %11, align 8
  %112 = load %struct.object_info*, %struct.object_info** %8, align 8
  %113 = getelementptr inbounds %struct.object_info, %struct.object_info* %112, i32 0, i32 2
  %114 = load i64*, i64** %113, align 8
  store i64 %111, i64* %114, align 8
  br label %115

115:                                              ; preds = %110, %105
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @OBJECT_INFO_ALLOW_UNKNOWN_TYPE, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %132

120:                                              ; preds = %115
  %121 = load i8*, i8** %12, align 8
  %122 = load i64, i64* %11, align 8
  %123 = trunc i64 %22 to i32
  %124 = call i64 @unpack_loose_header_to_strbuf(i32* %13, i8* %121, i64 %122, i8* %24, i32 %123, %struct.strbuf* %16)
  %125 = icmp slt i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %120
  %127 = call i32 @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %128 = load %struct.object_id*, %struct.object_id** %7, align 8
  %129 = call i32 @oid_to_hex(%struct.object_id* %128)
  %130 = call i32 @error(i32 %127, i32 %129)
  store i32 %130, i32* %10, align 4
  br label %131

131:                                              ; preds = %126, %120
  br label %144

132:                                              ; preds = %115
  %133 = load i8*, i8** %12, align 8
  %134 = load i64, i64* %11, align 8
  %135 = trunc i64 %22 to i32
  %136 = call i64 @unpack_loose_header(i32* %13, i8* %133, i64 %134, i8* %24, i32 %135)
  %137 = icmp slt i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %132
  %139 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %140 = load %struct.object_id*, %struct.object_id** %7, align 8
  %141 = call i32 @oid_to_hex(%struct.object_id* %140)
  %142 = call i32 @error(i32 %139, i32 %141)
  store i32 %142, i32* %10, align 4
  br label %143

143:                                              ; preds = %138, %132
  br label %144

144:                                              ; preds = %143, %131
  %145 = load i32, i32* %10, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  br label %177

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %16, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %165

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %16, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = load %struct.object_info*, %struct.object_info** %8, align 8
  %156 = load i32, i32* %9, align 4
  %157 = call i32 @parse_loose_header_extended(i8* %154, %struct.object_info* %155, i32 %156)
  store i32 %157, i32* %10, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %152
  %160 = call i32 @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %161 = load %struct.object_id*, %struct.object_id** %7, align 8
  %162 = call i32 @oid_to_hex(%struct.object_id* %161)
  %163 = call i32 @error(i32 %160, i32 %162)
  store i32 %163, i32* %10, align 4
  br label %164

164:                                              ; preds = %159, %152
  br label %176

165:                                              ; preds = %148
  %166 = load %struct.object_info*, %struct.object_info** %8, align 8
  %167 = load i32, i32* %9, align 4
  %168 = call i32 @parse_loose_header_extended(i8* %24, %struct.object_info* %166, i32 %167)
  store i32 %168, i32* %10, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %165
  %171 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %172 = load %struct.object_id*, %struct.object_id** %7, align 8
  %173 = call i32 @oid_to_hex(%struct.object_id* %172)
  %174 = call i32 @error(i32 %171, i32 %173)
  store i32 %174, i32* %10, align 4
  br label %175

175:                                              ; preds = %170, %165
  br label %176

176:                                              ; preds = %175, %164
  br label %177

177:                                              ; preds = %176, %147
  %178 = load i32, i32* %10, align 4
  %179 = icmp sge i32 %178, 0
  br i1 %179, label %180, label %203

180:                                              ; preds = %177
  %181 = load %struct.object_info*, %struct.object_info** %8, align 8
  %182 = getelementptr inbounds %struct.object_info, %struct.object_info* %181, i32 0, i32 4
  %183 = load i32*, i32** %182, align 8
  %184 = icmp ne i32* %183, null
  br i1 %184, label %185, label %203

185:                                              ; preds = %180
  %186 = load %struct.object_info*, %struct.object_info** %8, align 8
  %187 = getelementptr inbounds %struct.object_info, %struct.object_info* %186, i32 0, i32 1
  %188 = load i64*, i64** %187, align 8
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.object_id*, %struct.object_id** %7, align 8
  %191 = call i32 @unpack_loose_rest(i32* %13, i8* %24, i64 %189, %struct.object_id* %190)
  %192 = load %struct.object_info*, %struct.object_info** %8, align 8
  %193 = getelementptr inbounds %struct.object_info, %struct.object_info* %192, i32 0, i32 4
  %194 = load i32*, i32** %193, align 8
  store i32 %191, i32* %194, align 4
  %195 = load %struct.object_info*, %struct.object_info** %8, align 8
  %196 = getelementptr inbounds %struct.object_info, %struct.object_info* %195, i32 0, i32 4
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %202, label %200

200:                                              ; preds = %185
  %201 = call i32 @git_inflate_end(i32* %13)
  store i32 -1, i32* %10, align 4
  br label %202

202:                                              ; preds = %200, %185
  br label %205

203:                                              ; preds = %180, %177
  %204 = call i32 @git_inflate_end(i32* %13)
  br label %205

205:                                              ; preds = %203, %202
  %206 = load i8*, i8** %12, align 8
  %207 = load i64, i64* %11, align 8
  %208 = call i32 @munmap(i8* %206, i64 %207)
  %209 = load i32, i32* %10, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %221

211:                                              ; preds = %205
  %212 = load %struct.object_info*, %struct.object_info** %8, align 8
  %213 = getelementptr inbounds %struct.object_info, %struct.object_info* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = icmp ne i32* %214, null
  br i1 %215, label %216, label %221

216:                                              ; preds = %211
  %217 = load i32, i32* %10, align 4
  %218 = load %struct.object_info*, %struct.object_info** %8, align 8
  %219 = getelementptr inbounds %struct.object_info, %struct.object_info* %218, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  store i32 %217, i32* %220, align 4
  br label %221

221:                                              ; preds = %216, %211, %205
  %222 = load %struct.object_info*, %struct.object_info** %8, align 8
  %223 = getelementptr inbounds %struct.object_info, %struct.object_info* %222, i32 0, i32 1
  %224 = load i64*, i64** %223, align 8
  %225 = icmp eq i64* %224, %17
  br i1 %225, label %226, label %229

226:                                              ; preds = %221
  %227 = load %struct.object_info*, %struct.object_info** %8, align 8
  %228 = getelementptr inbounds %struct.object_info, %struct.object_info* %227, i32 0, i32 1
  store i64* null, i64** %228, align 8
  br label %229

229:                                              ; preds = %226, %221
  %230 = call i32 @strbuf_release(%struct.strbuf* %16)
  %231 = load i32, i32* @OI_LOOSE, align 4
  %232 = load %struct.object_info*, %struct.object_info** %8, align 8
  %233 = getelementptr inbounds %struct.object_info, %struct.object_info* %232, i32 0, i32 3
  store i32 %231, i32* %233, align 8
  %234 = load i32, i32* %10, align 4
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %229
  %237 = load i32, i32* %10, align 4
  br label %239

238:                                              ; preds = %229
  br label %239

239:                                              ; preds = %238, %236
  %240 = phi i32 [ %237, %236 ], [ 0, %238 ]
  store i32 %240, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %241

241:                                              ; preds = %239, %96, %89, %77, %65
  %242 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %242)
  %243 = load i32, i32* %5, align 4
  ret i32 %243
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @hashclr(i64) #3

declare dso_local i64 @quick_has_loose(%struct.repository*, %struct.object_id*) #3

declare dso_local i64 @stat_loose_object(%struct.repository*, %struct.object_id*, %struct.stat*, i8**) #3

declare dso_local i8* @map_loose_object(%struct.repository*, %struct.object_id*, i64*) #3

declare dso_local i64 @unpack_loose_header_to_strbuf(i32*, i8*, i64, i8*, i32, %struct.strbuf*) #3

declare dso_local i32 @error(i32, i32) #3

declare dso_local i32 @_(i8*) #3

declare dso_local i32 @oid_to_hex(%struct.object_id*) #3

declare dso_local i64 @unpack_loose_header(i32*, i8*, i64, i8*, i32) #3

declare dso_local i32 @parse_loose_header_extended(i8*, %struct.object_info*, i32) #3

declare dso_local i32 @unpack_loose_rest(i32*, i8*, i64, %struct.object_id*) #3

declare dso_local i32 @git_inflate_end(i32*) #3

declare dso_local i32 @munmap(i8*, i64) #3

declare dso_local i32 @strbuf_release(%struct.strbuf*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
