; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff_tform.c_similarity_measure.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff_tform.c_similarity_measure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (i32*, i8*, i8*, i32)*, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32 }

@GIT_DIFF_FIND_EXACT_MATCH_ONLY = common dso_local global i32 0, align 4
@GIT_ITERATOR_TYPE_WORKDIR = common dso_local global i64 0, align 8
@GIT_DIFF_FLAG_VALID_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_16__*, %struct.TYPE_14__*, i8**, i64, i64)* @similarity_measure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @similarity_measure(i32* %0, %struct.TYPE_16__* %1, %struct.TYPE_14__* %2, i8** %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %9, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %10, align 8
  store i8** %3, i8*** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %21 = load i64, i64* %12, align 8
  %22 = call %struct.TYPE_15__* @similarity_get_file(%struct.TYPE_16__* %20, i64 %21)
  store %struct.TYPE_15__* %22, %struct.TYPE_15__** %14, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %24 = load i64, i64* %13, align 8
  %25 = call %struct.TYPE_15__* @similarity_get_file(%struct.TYPE_16__* %23, i64 %24)
  store %struct.TYPE_15__* %25, %struct.TYPE_15__** %15, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %27 = load i32, i32* @GIT_DIFF_FIND_EXACT_MATCH_ONLY, align 4
  %28 = call i32 @FLAG_SET(%struct.TYPE_14__* %26, i32 %27)
  store i32 %28, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %29 = load i32*, i32** %8, align 8
  store i32 -1, i32* %29, align 4
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @GIT_MODE_ISBLOB(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %6
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @GIT_MODE_ISBLOB(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35, %6
  store i32 0, i32* %7, align 4
  br label %244

42:                                               ; preds = %35
  %43 = load i32, i32* %16, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %110

45:                                               ; preds = %42
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 1
  %48 = call i64 @git_oid_is_zero(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %77

50:                                               ; preds = %45
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @GIT_ITERATOR_TYPE_WORKDIR, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %77

56:                                               ; preds = %50
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @git_diff__oid_for_file(i32* %58, %struct.TYPE_16__* %59, i32 %62, i32 %65, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %56
  %72 = load i32, i32* @GIT_DIFF_FLAG_VALID_ID, align 4
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %71, %56, %50, %45
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 1
  %80 = call i64 @git_oid_is_zero(i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %109

82:                                               ; preds = %77
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @GIT_ITERATOR_TYPE_WORKDIR, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %109

88:                                               ; preds = %82
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @git_diff__oid_for_file(i32* %90, %struct.TYPE_16__* %91, i32 %94, i32 %97, i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %88
  %104 = load i32, i32* @GIT_DIFF_FLAG_VALID_ID, align 4
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %103, %88, %82, %77
  br label %110

110:                                              ; preds = %109, %42
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 1
  %115 = call i64 @git_oid__cmp(i32* %112, i32* %114)
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %110
  %118 = load i32*, i32** %8, align 8
  store i32 100, i32* %118, align 4
  store i32 0, i32* %7, align 4
  br label %244

119:                                              ; preds = %110
  %120 = load i32, i32* %16, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = load i32*, i32** %8, align 8
  store i32 0, i32* %123, align 4
  store i32 0, i32* %7, align 4
  br label %244

124:                                              ; preds = %119
  %125 = call i32 @memset(i32* %18, i32 0, i32 4)
  %126 = call i32 @memset(i32* %19, i32 0, i32 4)
  %127 = load i8**, i8*** %11, align 8
  %128 = load i64, i64* %12, align 8
  %129 = getelementptr inbounds i8*, i8** %127, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %139, label %132

132:                                              ; preds = %124
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %134 = load i64, i64* %12, align 8
  %135 = call i32 @similarity_init(i32* %18, %struct.TYPE_16__* %133, i64 %134)
  store i32 %135, i32* %17, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %132
  %138 = load i32, i32* %17, align 4
  store i32 %138, i32* %7, align 4
  br label %244

139:                                              ; preds = %132, %124
  %140 = load i8**, i8*** %11, align 8
  %141 = load i64, i64* %13, align 8
  %142 = getelementptr inbounds i8*, i8** %140, i64 %141
  %143 = load i8*, i8** %142, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %151, label %145

145:                                              ; preds = %139
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %147 = load i64, i64* %13, align 8
  %148 = call i32 @similarity_init(i32* %19, %struct.TYPE_16__* %146, i64 %147)
  store i32 %148, i32* %17, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  br label %240

151:                                              ; preds = %145, %139
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp sgt i32 %154, 127
  br i1 %155, label %156, label %180

156:                                              ; preds = %151
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = icmp sgt i32 %159, 127
  br i1 %160, label %161, label %180

161:                                              ; preds = %156
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = shl i32 %167, 3
  %169 = icmp sgt i32 %164, %168
  br i1 %169, label %179, label %170

170:                                              ; preds = %161
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = shl i32 %176, 3
  %178 = icmp sgt i32 %173, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %170, %161
  br label %240

180:                                              ; preds = %170, %156, %151
  %181 = load i8**, i8*** %11, align 8
  %182 = load i64, i64* %12, align 8
  %183 = getelementptr inbounds i8*, i8** %181, i64 %182
  %184 = load i8*, i8** %183, align 8
  %185 = icmp ne i8* %184, null
  br i1 %185, label %193, label %186

186:                                              ; preds = %180
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %188 = load i8**, i8*** %11, align 8
  %189 = call i32 @similarity_sig(i32* %18, %struct.TYPE_14__* %187, i8** %188)
  store i32 %189, i32* %17, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %186
  br label %240

192:                                              ; preds = %186
  br label %193

193:                                              ; preds = %192, %180
  %194 = load i8**, i8*** %11, align 8
  %195 = load i64, i64* %13, align 8
  %196 = getelementptr inbounds i8*, i8** %194, i64 %195
  %197 = load i8*, i8** %196, align 8
  %198 = icmp ne i8* %197, null
  br i1 %198, label %206, label %199

199:                                              ; preds = %193
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %201 = load i8**, i8*** %11, align 8
  %202 = call i32 @similarity_sig(i32* %19, %struct.TYPE_14__* %200, i8** %201)
  store i32 %202, i32* %17, align 4
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %199
  br label %240

205:                                              ; preds = %199
  br label %206

206:                                              ; preds = %205, %193
  %207 = load i8**, i8*** %11, align 8
  %208 = load i64, i64* %12, align 8
  %209 = getelementptr inbounds i8*, i8** %207, i64 %208
  %210 = load i8*, i8** %209, align 8
  %211 = icmp ne i8* %210, null
  br i1 %211, label %212, label %239

212:                                              ; preds = %206
  %213 = load i8**, i8*** %11, align 8
  %214 = load i64, i64* %13, align 8
  %215 = getelementptr inbounds i8*, i8** %213, i64 %214
  %216 = load i8*, i8** %215, align 8
  %217 = icmp ne i8* %216, null
  br i1 %217, label %218, label %239

218:                                              ; preds = %212
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 0
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 0
  %223 = load i32 (i32*, i8*, i8*, i32)*, i32 (i32*, i8*, i8*, i32)** %222, align 8
  %224 = load i32*, i32** %8, align 8
  %225 = load i8**, i8*** %11, align 8
  %226 = load i64, i64* %12, align 8
  %227 = getelementptr inbounds i8*, i8** %225, i64 %226
  %228 = load i8*, i8** %227, align 8
  %229 = load i8**, i8*** %11, align 8
  %230 = load i64, i64* %13, align 8
  %231 = getelementptr inbounds i8*, i8** %229, i64 %230
  %232 = load i8*, i8** %231, align 8
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = call i32 %223(i32* %224, i8* %228, i8* %232, i32 %237)
  store i32 %238, i32* %17, align 4
  br label %239

239:                                              ; preds = %218, %212, %206
  br label %240

240:                                              ; preds = %239, %204, %191, %179, %150
  %241 = call i32 @similarity_unload(i32* %18)
  %242 = call i32 @similarity_unload(i32* %19)
  %243 = load i32, i32* %17, align 4
  store i32 %243, i32* %7, align 4
  br label %244

244:                                              ; preds = %240, %137, %122, %117, %41
  %245 = load i32, i32* %7, align 4
  ret i32 %245
}

declare dso_local %struct.TYPE_15__* @similarity_get_file(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @FLAG_SET(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @GIT_MODE_ISBLOB(i32) #1

declare dso_local i64 @git_oid_is_zero(i32*) #1

declare dso_local i32 @git_diff__oid_for_file(i32*, %struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i64 @git_oid__cmp(i32*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @similarity_init(i32*, %struct.TYPE_16__*, i64) #1

declare dso_local i32 @similarity_sig(i32*, %struct.TYPE_14__*, i8**) #1

declare dso_local i32 @similarity_unload(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
