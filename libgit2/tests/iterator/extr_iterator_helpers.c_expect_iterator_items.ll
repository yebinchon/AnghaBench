; ModuleID = '/home/carl/AnghaBench/libgit2/tests/iterator/extr_iterator_helpers.c_expect_iterator_items.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/iterator/extr_iterator_helpers.c_expect_iterator_items.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64 }

@GIT_ITERATOR_INCLUDE_TREES = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"== %s ==\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"notrees\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"trees\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"  %s %07o\0A\00", align 1
@GIT_FILEMODE_TREE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"-- %s --\0A\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@GIT_ITEROVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @expect_iterator_items(i32* %0, i64 %1, i8** %2, i64 %3, i8** %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8** %4, i8*** %10, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @git_iterator_flags(i32* %20)
  %22 = load i32, i32* @GIT_ITERATOR_INCLUDE_TREES, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %5
  %30 = load i32, i32* @stderr, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %35 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %29, %5
  store i64 0, i64* %12, align 8
  br label %37

37:                                               ; preds = %103, %36
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @git_iterator_advance(%struct.TYPE_5__** %11, i32* %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br i1 %41, label %42, label %110

42:                                               ; preds = %37
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load i32, i32* @stderr, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %49, i32 %53)
  br label %55

55:                                               ; preds = %45, %42
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @GIT_FILEMODE_TREE, align 8
  %63 = icmp ne i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @cl_assert(i32 %64)
  br label %66

66:                                               ; preds = %58, %55
  %67 = load i8**, i8*** %8, align 8
  %68 = icmp ne i8** %67, null
  br i1 %68, label %69, label %103

69:                                               ; preds = %66
  %70 = load i8**, i8*** %8, align 8
  %71 = load i64, i64* %12, align 8
  %72 = getelementptr inbounds i8*, i8** %70, i64 %71
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** %16, align 8
  %74 = load i8*, i8** %16, align 8
  %75 = call i64 @strlen(i8* %74)
  store i64 %75, i64* %17, align 8
  %76 = load i8*, i8** %16, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @cl_assert_equal_s(i8* %76, i8* %79)
  %81 = load i8*, i8** %16, align 8
  %82 = load i64, i64* %17, align 8
  %83 = sub i64 %82, 1
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 47
  br i1 %87, label %88, label %94

88:                                               ; preds = %69
  %89 = load i64, i64* @GIT_FILEMODE_TREE, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @cl_assert_equal_i(i64 %89, i64 %92)
  br label %102

94:                                               ; preds = %69
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @GIT_FILEMODE_TREE, align 8
  %99 = icmp ne i64 %97, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 @cl_assert(i32 %100)
  br label %102

102:                                              ; preds = %94, %88
  br label %103

103:                                              ; preds = %102, %66
  %104 = load i64, i64* %12, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %12, align 8
  %106 = load i64, i64* %7, align 8
  %107 = icmp ule i64 %105, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @cl_assert(i32 %108)
  br label %37

110:                                              ; preds = %37
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* %14, align 4
  %113 = call i32 @assert_at_end(i32* %111, i32 %112)
  %114 = load i64, i64* %7, align 8
  %115 = load i64, i64* %12, align 8
  %116 = call i32 @cl_assert_equal_i(i64 %114, i64 %115)
  %117 = load i32*, i32** %6, align 8
  %118 = call i32 @git_iterator_reset(i32* %117)
  %119 = call i32 @cl_git_pass(i32 %118)
  store i64 0, i64* %12, align 8
  %120 = load i32*, i32** %6, align 8
  %121 = call i32 @git_iterator_current(%struct.TYPE_5__** %11, i32* %120)
  %122 = call i32 @cl_git_pass(i32 %121)
  %123 = load i32, i32* %14, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %110
  %126 = load i32, i32* @stderr, align 4
  %127 = load i32, i32* %13, align 4
  %128 = icmp ne i32 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %131 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %126, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %130)
  br label %132

132:                                              ; preds = %125, %110
  br label %133

133:                                              ; preds = %252, %132
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %135 = icmp ne %struct.TYPE_5__* %134, null
  br i1 %135, label %136, label %253

136:                                              ; preds = %133
  %137 = load i32, i32* %14, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %136
  %140 = load i32, i32* @stderr, align 4
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = trunc i64 %146 to i32
  %148 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %140, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %143, i32 %147)
  br label %149

149:                                              ; preds = %139, %136
  %150 = load i32, i32* %13, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %149
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @GIT_FILEMODE_TREE, align 8
  %157 = icmp ne i64 %155, %156
  %158 = zext i1 %157 to i32
  %159 = call i32 @cl_assert(i32 %158)
  br label %160

160:                                              ; preds = %152, %149
  %161 = load i8**, i8*** %10, align 8
  %162 = icmp ne i8** %161, null
  br i1 %162, label %163, label %197

163:                                              ; preds = %160
  %164 = load i8**, i8*** %10, align 8
  %165 = load i64, i64* %12, align 8
  %166 = getelementptr inbounds i8*, i8** %164, i64 %165
  %167 = load i8*, i8** %166, align 8
  store i8* %167, i8** %18, align 8
  %168 = load i8*, i8** %18, align 8
  %169 = call i64 @strlen(i8* %168)
  store i64 %169, i64* %19, align 8
  %170 = load i8*, i8** %18, align 8
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  %173 = load i8*, i8** %172, align 8
  %174 = call i32 @cl_assert_equal_s(i8* %170, i8* %173)
  %175 = load i8*, i8** %18, align 8
  %176 = load i64, i64* %19, align 8
  %177 = sub i64 %176, 1
  %178 = getelementptr inbounds i8, i8* %175, i64 %177
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp eq i32 %180, 47
  br i1 %181, label %182, label %188

182:                                              ; preds = %163
  %183 = load i64, i64* @GIT_FILEMODE_TREE, align 8
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = call i32 @cl_assert_equal_i(i64 %183, i64 %186)
  br label %196

188:                                              ; preds = %163
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @GIT_FILEMODE_TREE, align 8
  %193 = icmp ne i64 %191, %192
  %194 = zext i1 %193 to i32
  %195 = call i32 @cl_assert(i32 %194)
  br label %196

196:                                              ; preds = %188, %182
  br label %197

197:                                              ; preds = %196, %160
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @GIT_FILEMODE_TREE, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %233

203:                                              ; preds = %197
  %204 = load i32*, i32** %6, align 8
  %205 = call i32 @git_iterator_advance_into(%struct.TYPE_5__** %11, i32* %204)
  store i32 %205, i32* %15, align 4
  %206 = load i32, i32* %15, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %203
  %209 = load i32, i32* %15, align 4
  %210 = load i32, i32* @GIT_ENOTFOUND, align 4
  %211 = icmp eq i32 %209, %210
  br label %212

212:                                              ; preds = %208, %203
  %213 = phi i1 [ true, %203 ], [ %211, %208 ]
  %214 = zext i1 %213 to i32
  %215 = call i32 @cl_assert(i32 %214)
  %216 = load i32, i32* %15, align 4
  %217 = load i32, i32* @GIT_ENOTFOUND, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %232

219:                                              ; preds = %212
  %220 = load i32*, i32** %6, align 8
  %221 = call i32 @git_iterator_advance(%struct.TYPE_5__** %11, i32* %220)
  store i32 %221, i32* %15, align 4
  %222 = load i32, i32* %15, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %219
  %225 = load i32, i32* %15, align 4
  %226 = load i32, i32* @GIT_ITEROVER, align 4
  %227 = icmp eq i32 %225, %226
  br label %228

228:                                              ; preds = %224, %219
  %229 = phi i1 [ true, %219 ], [ %227, %224 ]
  %230 = zext i1 %229 to i32
  %231 = call i32 @cl_assert(i32 %230)
  br label %232

232:                                              ; preds = %228, %212
  br label %246

233:                                              ; preds = %197
  %234 = load i32*, i32** %6, align 8
  %235 = call i32 @git_iterator_advance(%struct.TYPE_5__** %11, i32* %234)
  store i32 %235, i32* %15, align 4
  %236 = load i32, i32* %15, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %233
  %239 = load i32, i32* %15, align 4
  %240 = load i32, i32* @GIT_ITEROVER, align 4
  %241 = icmp eq i32 %239, %240
  br label %242

242:                                              ; preds = %238, %233
  %243 = phi i1 [ true, %233 ], [ %241, %238 ]
  %244 = zext i1 %243 to i32
  %245 = call i32 @cl_assert(i32 %244)
  br label %246

246:                                              ; preds = %242, %232
  %247 = load i64, i64* %12, align 8
  %248 = add i64 %247, 1
  store i64 %248, i64* %12, align 8
  %249 = load i64, i64* %9, align 8
  %250 = icmp uge i64 %248, %249
  br i1 %250, label %251, label %252

251:                                              ; preds = %246
  br label %253

252:                                              ; preds = %246
  br label %133

253:                                              ; preds = %251, %133
  %254 = load i32*, i32** %6, align 8
  %255 = load i32, i32* %14, align 4
  %256 = call i32 @assert_at_end(i32* %254, i32 %255)
  %257 = load i64, i64* %9, align 8
  %258 = load i64, i64* %12, align 8
  %259 = call i32 @cl_assert_equal_i(i64 %257, i64 %258)
  ret void
}

declare dso_local i32 @git_iterator_flags(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @git_iterator_advance(%struct.TYPE_5__**, i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i8*) #1

declare dso_local i32 @cl_assert_equal_i(i64, i64) #1

declare dso_local i32 @assert_at_end(i32*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_iterator_reset(i32*) #1

declare dso_local i32 @git_iterator_current(%struct.TYPE_5__**, i32*) #1

declare dso_local i32 @git_iterator_advance_into(%struct.TYPE_5__**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
