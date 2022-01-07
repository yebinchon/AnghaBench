; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_refdb_fs.c_packed_reload.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_refdb_fs.c_packed_reload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.packref = type { i8*, i32, i32, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@PEELING_NONE = common dso_local global i64 0, align 8
@packed_reload.traits_header = internal global i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [19 x i8] c"# pack-refs with: \00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c" fully-peeled \00", align 1
@PEELING_FULL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c" peeled \00", align 1
@PEELING_STANDARD = common dso_local global i64 0, align 8
@GIT_OID_HEXSZ = common dso_local global i64 0, align 8
@PACKREF_HAS_PEEL = common dso_local global i32 0, align 4
@GIT_REFS_TAGS_DIR = common dso_local global i8* null, align 8
@PACKREF_CANNOT_PEEL = common dso_local global i32 0, align 4
@GIT_ERROR_REFERENCE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"corrupted packed references file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @packed_reload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packed_reload(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.packref*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %11 = bitcast %struct.TYPE_8__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.TYPE_8__* @GIT_BUF_INIT to i8*), i64 16, i1 false)
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %244

17:                                               ; preds = %1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @git_sortedcache_lockandload(i32 %20, %struct.TYPE_8__* %5)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %17
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @GIT_ENOTFOUND, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @git_sortedcache_clear(i32 %31, i32 1)
  %33 = call i32 (...) @git_error_clear()
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %28, %24
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %244

36:                                               ; preds = %17
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @git_sortedcache_clear(i32 %39, i32 0)
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i8*
  store i8* %43, i8** %6, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  store i8* %48, i8** %7, align 8
  %49 = load i64, i64* @PEELING_NONE, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 35
  br i1 %55, label %56, label %94

56:                                               ; preds = %36
  %57 = load i8*, i8** %6, align 8
  %58 = load i8*, i8** @packed_reload.traits_header, align 8
  %59 = call i64 @git__prefixcmp(i8* %57, i8* %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %93

61:                                               ; preds = %56
  %62 = load i8*, i8** @packed_reload.traits_header, align 8
  %63 = call i32 @strlen(i8* %62)
  %64 = load i8*, i8** %6, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8* %66, i8** %6, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = call i8* @strchr(i8* %67, i8 signext 10)
  store i8* %68, i8** %8, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %61
  br label %232

72:                                               ; preds = %61
  %73 = load i8*, i8** %8, align 8
  store i8 0, i8* %73, align 1
  %74 = load i8*, i8** %6, align 8
  %75 = call i32* @strstr(i8* %74, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i64, i64* @PEELING_FULL, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  br label %90

81:                                               ; preds = %72
  %82 = load i8*, i8** %6, align 8
  %83 = call i32* @strstr(i8* %82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load i64, i64* @PEELING_STANDARD, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  br label %89

89:                                               ; preds = %85, %81
  br label %90

90:                                               ; preds = %89, %77
  %91 = load i8*, i8** %8, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  store i8* %92, i8** %6, align 8
  br label %93

93:                                               ; preds = %90, %56
  br label %94

94:                                               ; preds = %93, %36
  br label %95

95:                                               ; preds = %111, %94
  %96 = load i8*, i8** %6, align 8
  %97 = load i8*, i8** %7, align 8
  %98 = icmp ult i8* %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load i8*, i8** %6, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 35
  br label %104

104:                                              ; preds = %99, %95
  %105 = phi i1 [ false, %95 ], [ %103, %99 ]
  br i1 %105, label %106, label %114

106:                                              ; preds = %104
  %107 = load i8*, i8** %6, align 8
  %108 = call i8* @strchr(i8* %107, i8 signext 10)
  store i8* %108, i8** %8, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %106
  br label %232

111:                                              ; preds = %106
  %112 = load i8*, i8** %8, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 1
  store i8* %113, i8** %6, align 8
  br label %95

114:                                              ; preds = %104
  br label %115

115:                                              ; preds = %225, %114
  %116 = load i8*, i8** %6, align 8
  %117 = load i8*, i8** %7, align 8
  %118 = icmp ult i8* %116, %117
  br i1 %118, label %119, label %226

119:                                              ; preds = %115
  %120 = load i8*, i8** %6, align 8
  %121 = call i64 @git_oid_fromstr(i32* %10, i8* %120)
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  br label %232

124:                                              ; preds = %119
  %125 = load i64, i64* @GIT_OID_HEXSZ, align 8
  %126 = load i8*, i8** %6, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 %125
  store i8* %127, i8** %6, align 8
  %128 = load i8*, i8** %6, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %6, align 8
  %130 = load i8, i8* %128, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp ne i32 %131, 32
  br i1 %132, label %133, label %134

133:                                              ; preds = %124
  br label %232

134:                                              ; preds = %124
  %135 = load i8*, i8** %6, align 8
  %136 = call i8* @strchr(i8* %135, i8 signext 10)
  store i8* %136, i8** %8, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %139, label %138

138:                                              ; preds = %134
  br label %232

139:                                              ; preds = %134
  %140 = load i8*, i8** %8, align 8
  store i8 0, i8* %140, align 1
  %141 = load i8*, i8** %8, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 -1
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 13
  br i1 %145, label %146, label %149

146:                                              ; preds = %139
  %147 = load i8*, i8** %8, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 -1
  store i8 0, i8* %148, align 1
  br label %149

149:                                              ; preds = %146, %139
  %150 = bitcast %struct.packref** %9 to i8**
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load i8*, i8** %6, align 8
  %155 = call i64 @git_sortedcache_upsert(i8** %150, i32 %153, i8* %154)
  %156 = icmp slt i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %149
  br label %232

158:                                              ; preds = %149
  %159 = load i8*, i8** %8, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 1
  store i8* %160, i8** %6, align 8
  %161 = load %struct.packref*, %struct.packref** %9, align 8
  %162 = getelementptr inbounds %struct.packref, %struct.packref* %161, i32 0, i32 3
  %163 = call i32 @git_oid_cpy(i32* %162, i32* %10)
  %164 = load i8*, i8** %6, align 8
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp eq i32 %166, 94
  br i1 %167, label %168, label %199

168:                                              ; preds = %158
  %169 = load i8*, i8** %6, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 1
  %171 = call i64 @git_oid_fromstr(i32* %10, i8* %170)
  %172 = icmp slt i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %168
  br label %232

174:                                              ; preds = %168
  %175 = load i64, i64* @GIT_OID_HEXSZ, align 8
  %176 = add nsw i64 %175, 1
  %177 = load i8*, i8** %6, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 %176
  store i8* %178, i8** %6, align 8
  %179 = load i8*, i8** %6, align 8
  %180 = load i8*, i8** %7, align 8
  %181 = icmp ult i8* %179, %180
  br i1 %181, label %182, label %190

182:                                              ; preds = %174
  %183 = load i8*, i8** %6, align 8
  %184 = call i8* @strchr(i8* %183, i8 signext 10)
  store i8* %184, i8** %8, align 8
  %185 = icmp ne i8* %184, null
  br i1 %185, label %187, label %186

186:                                              ; preds = %182
  br label %232

187:                                              ; preds = %182
  %188 = load i8*, i8** %8, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 1
  store i8* %189, i8** %6, align 8
  br label %190

190:                                              ; preds = %187, %174
  %191 = load %struct.packref*, %struct.packref** %9, align 8
  %192 = getelementptr inbounds %struct.packref, %struct.packref* %191, i32 0, i32 2
  %193 = call i32 @git_oid_cpy(i32* %192, i32* %10)
  %194 = load i32, i32* @PACKREF_HAS_PEEL, align 4
  %195 = load %struct.packref*, %struct.packref** %9, align 8
  %196 = getelementptr inbounds %struct.packref, %struct.packref* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = or i32 %197, %194
  store i32 %198, i32* %196, align 8
  br label %225

199:                                              ; preds = %158
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @PEELING_FULL, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %218, label %205

205:                                              ; preds = %199
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @PEELING_STANDARD, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %224

211:                                              ; preds = %205
  %212 = load %struct.packref*, %struct.packref** %9, align 8
  %213 = getelementptr inbounds %struct.packref, %struct.packref* %212, i32 0, i32 0
  %214 = load i8*, i8** %213, align 8
  %215 = load i8*, i8** @GIT_REFS_TAGS_DIR, align 8
  %216 = call i64 @git__prefixcmp(i8* %214, i8* %215)
  %217 = icmp eq i64 %216, 0
  br i1 %217, label %218, label %224

218:                                              ; preds = %211, %199
  %219 = load i32, i32* @PACKREF_CANNOT_PEEL, align 4
  %220 = load %struct.packref*, %struct.packref** %9, align 8
  %221 = getelementptr inbounds %struct.packref, %struct.packref* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = or i32 %222, %219
  store i32 %223, i32* %221, align 8
  br label %224

224:                                              ; preds = %218, %211, %205
  br label %225

225:                                              ; preds = %224, %190
  br label %115

226:                                              ; preds = %115
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @git_sortedcache_wunlock(i32 %229)
  %231 = call i32 @git_buf_dispose(%struct.TYPE_8__* %5)
  store i32 0, i32* %2, align 4
  br label %244

232:                                              ; preds = %186, %173, %157, %138, %133, %123, %110, %71
  %233 = load i32, i32* @GIT_ERROR_REFERENCE, align 4
  %234 = call i32 @git_error_set(i32 %233, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @git_sortedcache_clear(i32 %237, i32 0)
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @git_sortedcache_wunlock(i32 %241)
  %243 = call i32 @git_buf_dispose(%struct.TYPE_8__* %5)
  store i32 -1, i32* %2, align 4
  br label %244

244:                                              ; preds = %232, %226, %34, %16
  %245 = load i32, i32* %2, align 4
  ret i32 %245
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_sortedcache_lockandload(i32, %struct.TYPE_8__*) #2

declare dso_local i32 @git_sortedcache_clear(i32, i32) #2

declare dso_local i32 @git_error_clear(...) #2

declare dso_local i64 @git__prefixcmp(i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32* @strstr(i8*, i8*) #2

declare dso_local i64 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i64 @git_sortedcache_upsert(i8**, i32, i8*) #2

declare dso_local i32 @git_oid_cpy(i32*, i32*) #2

declare dso_local i32 @git_sortedcache_wunlock(i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_8__*) #2

declare dso_local i32 @git_error_set(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
