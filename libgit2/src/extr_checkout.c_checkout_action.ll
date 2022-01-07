; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_checkout.c_checkout_action.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_checkout.c_checkout_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32 (i8*, i8*)*, i32 (i8*, i8*)* }
%struct.TYPE_33__ = type { i64, %struct.TYPE_31__, %struct.TYPE_30__ }
%struct.TYPE_31__ = type { i8*, i64 }
%struct.TYPE_30__ = type { i64 }
%struct.TYPE_32__ = type { i8*, i64 }

@GIT_FILEMODE_TREE = common dso_local global i64 0, align 8
@GIT_ITEROVER = common dso_local global i32 0, align 4
@GIT_DELTA_TYPECHANGE = common dso_local global i64 0, align 8
@GIT_FILEMODE_COMMIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_34__*, %struct.TYPE_33__*, i32*, %struct.TYPE_32__**, i32*)* @checkout_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkout_action(i32* %0, %struct.TYPE_34__* %1, %struct.TYPE_33__* %2, i32* %3, %struct.TYPE_32__** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_34__*, align 8
  %10 = alloca %struct.TYPE_33__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_32__**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32 (i8*, i8*)*, align 8
  %17 = alloca i32 (i8*, i8*)*, align 8
  %18 = alloca i32 (%struct.TYPE_32__**, i32*)*, align 8
  %19 = alloca %struct.TYPE_32__*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_34__* %1, %struct.TYPE_34__** %9, align 8
  store %struct.TYPE_33__* %2, %struct.TYPE_33__** %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.TYPE_32__** %4, %struct.TYPE_32__*** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 -1, i32* %14, align 4
  %20 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %22, i32 0, i32 0
  %24 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %23, align 8
  store i32 (i8*, i8*)* %24, i32 (i8*, i8*)** %16, align 8
  %25 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_29__*, %struct.TYPE_29__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %27, i32 0, i32 1
  %29 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %28, align 8
  store i32 (i8*, i8*)* %29, i32 (i8*, i8*)** %17, align 8
  store i32 (%struct.TYPE_32__**, i32*)* null, i32 (%struct.TYPE_32__**, i32*)** %18, align 8
  br label %30

30:                                               ; preds = %6, %81, %115
  %31 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %12, align 8
  %32 = load %struct.TYPE_32__*, %struct.TYPE_32__** %31, align 8
  store %struct.TYPE_32__* %32, %struct.TYPE_32__** %19, align 8
  %33 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %34 = icmp ne %struct.TYPE_32__* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load i32*, i32** %8, align 8
  %37 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %38 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %39 = call i32 @checkout_action_no_wd(i32* %36, %struct.TYPE_34__* %37, %struct.TYPE_33__* %38)
  store i32 %39, i32* %7, align 4
  br label %252

40:                                               ; preds = %30
  %41 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %16, align 8
  %42 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %43 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 %41(i8* %44, i8* %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %116

52:                                               ; preds = %40
  %53 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %17, align 8
  %54 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %59 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 %53(i8* %57, i8* %60)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %102

64:                                               ; preds = %52
  %65 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %66 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @GIT_FILEMODE_TREE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %64
  %71 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %12, align 8
  %72 = load i32*, i32** %11, align 8
  %73 = call i32 @git_iterator_advance_into(%struct.TYPE_32__** %71, i32* %72)
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* @GIT_ITEROVER, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %231

81:                                               ; preds = %76, %70
  br label %30

82:                                               ; preds = %64
  %83 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %88 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i64 @strlen(i8* %89)
  %91 = getelementptr inbounds i8, i8* %86, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 47
  br i1 %94, label %95, label %101

95:                                               ; preds = %82
  %96 = load i32*, i32** %8, align 8
  %97 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %98 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %99 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %100 = call i32 @checkout_action_with_wd_blocker(i32* %96, %struct.TYPE_34__* %97, %struct.TYPE_33__* %98, %struct.TYPE_32__* %99)
  store i32 %100, i32* %15, align 4
  store i32 (%struct.TYPE_32__**, i32*)* @git_iterator_advance, i32 (%struct.TYPE_32__**, i32*)** %18, align 8
  br label %231

101:                                              ; preds = %82
  br label %102

102:                                              ; preds = %101, %52
  %103 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %104 = load i32*, i32** %11, align 8
  %105 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %12, align 8
  %106 = load i32*, i32** %13, align 8
  %107 = call i32 @checkout_action_wd_only(%struct.TYPE_34__* %103, i32* %104, %struct.TYPE_32__** %105, i32* %106)
  store i32 %107, i32* %15, align 4
  %108 = load i32, i32* %15, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %102
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* @GIT_ITEROVER, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  br label %231

115:                                              ; preds = %110, %102
  br label %30

116:                                              ; preds = %40
  %117 = load i32, i32* %14, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %116
  %120 = load i32*, i32** %8, align 8
  %121 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %122 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %123 = load i32*, i32** %11, align 8
  %124 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %125 = call i32 @checkout_action_with_wd(i32* %120, %struct.TYPE_34__* %121, %struct.TYPE_33__* %122, i32* %123, %struct.TYPE_32__* %124)
  store i32 %125, i32* %15, align 4
  store i32 (%struct.TYPE_32__**, i32*)* @git_iterator_advance, i32 (%struct.TYPE_32__**, i32*)** %18, align 8
  br label %231

126:                                              ; preds = %116
  %127 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %17, align 8
  %128 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %129 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 %127(i8* %130, i8* %134)
  store i32 %135, i32* %14, align 4
  %136 = load i32, i32* %14, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %226

138:                                              ; preds = %126
  %139 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %140 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = call i64 @strlen(i8* %145)
  %147 = getelementptr inbounds i8, i8* %141, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp ne i32 %149, 47
  br i1 %150, label %151, label %156

151:                                              ; preds = %138
  %152 = load i32*, i32** %8, align 8
  %153 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %154 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %155 = call i32 @checkout_action_no_wd(i32* %152, %struct.TYPE_34__* %153, %struct.TYPE_33__* %154)
  store i32 %155, i32* %7, align 4
  br label %252

156:                                              ; preds = %138
  %157 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @GIT_DELTA_TYPECHANGE, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %205

162:                                              ; preds = %156
  %163 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @GIT_FILEMODE_TREE, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %176

169:                                              ; preds = %162
  %170 = load i32*, i32** %8, align 8
  %171 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %172 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %173 = load i32*, i32** %11, align 8
  %174 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %175 = call i32 @checkout_action_with_wd(i32* %170, %struct.TYPE_34__* %171, %struct.TYPE_33__* %172, i32* %173, %struct.TYPE_32__* %174)
  store i32 %175, i32* %15, align 4
  store i32 (%struct.TYPE_32__**, i32*)* @git_iterator_advance_into, i32 (%struct.TYPE_32__**, i32*)** %18, align 8
  br label %231

176:                                              ; preds = %162
  %177 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @GIT_FILEMODE_TREE, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %197, label %183

183:                                              ; preds = %176
  %184 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @GIT_FILEMODE_COMMIT, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %197, label %190

190:                                              ; preds = %183
  %191 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @GIT_FILEMODE_COMMIT, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %204

197:                                              ; preds = %190, %183, %176
  %198 = load i32*, i32** %8, align 8
  %199 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %200 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %201 = load i32*, i32** %11, align 8
  %202 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %203 = call i32 @checkout_action_with_wd(i32* %198, %struct.TYPE_34__* %199, %struct.TYPE_33__* %200, i32* %201, %struct.TYPE_32__* %202)
  store i32 %203, i32* %15, align 4
  store i32 (%struct.TYPE_32__**, i32*)* @git_iterator_advance, i32 (%struct.TYPE_32__**, i32*)** %18, align 8
  br label %231

204:                                              ; preds = %190
  br label %205

205:                                              ; preds = %204, %156
  %206 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %207 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %208 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %207, i32 0, i32 0
  %209 = load i8*, i8** %208, align 8
  %210 = call i64 @checkout_is_empty_dir(%struct.TYPE_34__* %206, i8* %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %217

212:                                              ; preds = %205
  %213 = load i32*, i32** %8, align 8
  %214 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %215 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %216 = call i32 @checkout_action_with_wd_dir_empty(i32* %213, %struct.TYPE_34__* %214, %struct.TYPE_33__* %215)
  br label %224

217:                                              ; preds = %205
  %218 = load i32*, i32** %8, align 8
  %219 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %220 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %221 = load i32*, i32** %11, align 8
  %222 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %223 = call i32 @checkout_action_with_wd_dir(i32* %218, %struct.TYPE_34__* %219, %struct.TYPE_33__* %220, i32* %221, %struct.TYPE_32__* %222)
  br label %224

224:                                              ; preds = %217, %212
  %225 = phi i32 [ %216, %212 ], [ %223, %217 ]
  store i32 %225, i32* %7, align 4
  br label %252

226:                                              ; preds = %126
  %227 = load i32*, i32** %8, align 8
  %228 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %229 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %230 = call i32 @checkout_action_no_wd(i32* %227, %struct.TYPE_34__* %228, %struct.TYPE_33__* %229)
  store i32 %230, i32* %7, align 4
  br label %252

231:                                              ; preds = %197, %169, %119, %114, %95, %80
  %232 = load i32, i32* %15, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %250, label %234

234:                                              ; preds = %231
  %235 = load i32 (%struct.TYPE_32__**, i32*)*, i32 (%struct.TYPE_32__**, i32*)** %18, align 8
  %236 = icmp ne i32 (%struct.TYPE_32__**, i32*)* %235, null
  br i1 %236, label %237, label %250

237:                                              ; preds = %234
  %238 = load i32 (%struct.TYPE_32__**, i32*)*, i32 (%struct.TYPE_32__**, i32*)** %18, align 8
  %239 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %12, align 8
  %240 = load i32*, i32** %11, align 8
  %241 = call i32 %238(%struct.TYPE_32__** %239, i32* %240)
  store i32 %241, i32* %15, align 4
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %243, label %250

243:                                              ; preds = %237
  %244 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %12, align 8
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %244, align 8
  %245 = load i32, i32* %15, align 4
  %246 = load i32, i32* @GIT_ITEROVER, align 4
  %247 = icmp eq i32 %245, %246
  br i1 %247, label %248, label %249

248:                                              ; preds = %243
  store i32 0, i32* %15, align 4
  br label %249

249:                                              ; preds = %248, %243
  br label %250

250:                                              ; preds = %249, %237, %234, %231
  %251 = load i32, i32* %15, align 4
  store i32 %251, i32* %7, align 4
  br label %252

252:                                              ; preds = %250, %226, %224, %151, %35
  %253 = load i32, i32* %7, align 4
  ret i32 %253
}

declare dso_local i32 @checkout_action_no_wd(i32*, %struct.TYPE_34__*, %struct.TYPE_33__*) #1

declare dso_local i32 @git_iterator_advance_into(%struct.TYPE_32__**, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @checkout_action_with_wd_blocker(i32*, %struct.TYPE_34__*, %struct.TYPE_33__*, %struct.TYPE_32__*) #1

declare dso_local i32 @git_iterator_advance(%struct.TYPE_32__**, i32*) #1

declare dso_local i32 @checkout_action_wd_only(%struct.TYPE_34__*, i32*, %struct.TYPE_32__**, i32*) #1

declare dso_local i32 @checkout_action_with_wd(i32*, %struct.TYPE_34__*, %struct.TYPE_33__*, i32*, %struct.TYPE_32__*) #1

declare dso_local i64 @checkout_is_empty_dir(%struct.TYPE_34__*, i8*) #1

declare dso_local i32 @checkout_action_with_wd_dir_empty(i32*, %struct.TYPE_34__*, %struct.TYPE_33__*) #1

declare dso_local i32 @checkout_action_with_wd_dir(i32*, %struct.TYPE_34__*, %struct.TYPE_33__*, i32*, %struct.TYPE_32__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
