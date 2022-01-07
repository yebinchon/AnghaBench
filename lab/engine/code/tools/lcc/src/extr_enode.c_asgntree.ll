; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_enode.c_asgntree.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_enode.c_asgntree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_50__ = type { i64, i64, %struct.TYPE_49__, %struct.TYPE_48__** }
%struct.TYPE_49__ = type { %struct.TYPE_42__*, %struct.TYPE_43__*, %struct.TYPE_47__ }
%struct.TYPE_42__ = type { i32, i32, i32 }
%struct.TYPE_43__ = type { %struct.TYPE_41__* }
%struct.TYPE_41__ = type { i32 }
%struct.TYPE_47__ = type { i64 }
%struct.TYPE_48__ = type { %struct.TYPE_50__** }
%struct.TYPE_51__ = type { i64, %struct.TYPE_46__ }
%struct.TYPE_46__ = type { %struct.TYPE_45__* }
%struct.TYPE_45__ = type { %struct.TYPE_44__ }
%struct.TYPE_44__ = type { %struct.TYPE_40__ }
%struct.TYPE_40__ = type { i64 }

@ASGN = common dso_local global i32 0, align 4
@voidtype = common dso_local global i64 0, align 8
@inttype = common dso_local global i64 0, align 8
@FIELD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"assignment to const identifier `%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"assignment to const location\0A\00", align 1
@BAND = common dso_local global i32 0, align 4
@CNST = common dso_local global i64 0, align 8
@I = common dso_local global i64 0, align 8
@RSH = common dso_local global i32 0, align 4
@LSH = common dso_local global i32 0, align 4
@RIGHT = common dso_local global i64 0, align 8
@CALL = common dso_local global i64 0, align 8
@B = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_50__* @asgntree(i32 %0, %struct.TYPE_50__* %1, %struct.TYPE_50__* %2) #0 {
  %4 = alloca %struct.TYPE_50__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_50__*, align 8
  %7 = alloca %struct.TYPE_50__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_50__* %1, %struct.TYPE_50__** %6, align 8
  store %struct.TYPE_50__* %2, %struct.TYPE_50__** %7, align 8
  %11 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %12 = call %struct.TYPE_50__* @pointer(%struct.TYPE_50__* %11)
  store %struct.TYPE_50__* %12, %struct.TYPE_50__** %7, align 8
  %13 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %17 = call i64 @assign(i64 %15, %struct.TYPE_50__* %16)
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call %struct.TYPE_50__* @cast(%struct.TYPE_50__* %21, i64 %22)
  store %struct.TYPE_50__* %23, %struct.TYPE_50__** %7, align 8
  br label %42

24:                                               ; preds = %3
  %25 = load i32, i32* @ASGN, align 4
  %26 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %27 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %28 = call i32 @typeerror(i32 %25, %struct.TYPE_50__* %26, %struct.TYPE_50__* %27)
  %29 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @voidtype, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %36 = load i64, i64* @inttype, align 8
  %37 = call %struct.TYPE_50__* @retype(%struct.TYPE_50__* %35, i64 %36)
  store %struct.TYPE_50__* %37, %struct.TYPE_50__** %7, align 8
  br label %38

38:                                               ; preds = %34, %24
  %39 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %9, align 8
  br label %42

42:                                               ; preds = %38, %20
  %43 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @FIELD, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %50 = call %struct.TYPE_50__* @lvalue(%struct.TYPE_50__* %49)
  store %struct.TYPE_50__* %50, %struct.TYPE_50__** %6, align 8
  br label %51

51:                                               ; preds = %48, %42
  %52 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %8, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i64 @isptr(i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load i64, i64* %8, align 8
  %60 = call %struct.TYPE_51__* @unqual(i64 %59)
  %61 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %8, align 8
  br label %63

63:                                               ; preds = %58, %51
  %64 = load i64, i64* %8, align 8
  %65 = call i64 @isconst(i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %82, label %67

67:                                               ; preds = %63
  %68 = load i64, i64* %8, align 8
  %69 = call i64 @isstruct(i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %115

71:                                               ; preds = %67
  %72 = load i64, i64* %8, align 8
  %73 = call %struct.TYPE_51__* @unqual(i64 %72)
  %74 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_45__*, %struct.TYPE_45__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %115

82:                                               ; preds = %71, %63
  %83 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call i64 @isaddrop(i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %112

88:                                               ; preds = %82
  %89 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_42__*, %struct.TYPE_42__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %112, label %96

96:                                               ; preds = %88
  %97 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_42__*, %struct.TYPE_42__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %112, label %104

104:                                              ; preds = %96
  %105 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_42__*, %struct.TYPE_42__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %110)
  br label %114

112:                                              ; preds = %96, %88, %82
  %113 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %104
  br label %115

115:                                              ; preds = %114, %71, %67
  %116 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @FIELD, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %221

121:                                              ; preds = %115
  %122 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_43__*, %struct.TYPE_43__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_41__*, %struct.TYPE_41__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = mul nsw i32 8, %129
  %131 = sext i32 %130 to i64
  %132 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_43__*, %struct.TYPE_43__** %134, align 8
  %136 = call i64 @fieldsize(%struct.TYPE_43__* %135)
  %137 = sub i64 %131, %136
  store i64 %137, i64* %10, align 8
  %138 = load i64, i64* %10, align 8
  %139 = icmp sgt i64 %138, 0
  br i1 %139, label %140, label %162

140:                                              ; preds = %121
  %141 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_43__*, %struct.TYPE_43__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_41__*, %struct.TYPE_41__** %145, align 8
  %147 = call i64 @isunsigned(%struct.TYPE_41__* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %162

149:                                              ; preds = %140
  %150 = load i32, i32* @BAND, align 4
  %151 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %152 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_43__*, %struct.TYPE_43__** %157, align 8
  %159 = call i64 @fieldmask(%struct.TYPE_43__* %158)
  %160 = call %struct.TYPE_50__* @cnsttree(i64 %154, i64 %159)
  %161 = call %struct.TYPE_50__* @bittree(i32 %150, %struct.TYPE_50__* %151, %struct.TYPE_50__* %160)
  store %struct.TYPE_50__* %161, %struct.TYPE_50__** %7, align 8
  br label %220

162:                                              ; preds = %140, %121
  %163 = load i64, i64* %10, align 8
  %164 = icmp sgt i64 %163, 0
  br i1 %164, label %165, label %219

165:                                              ; preds = %162
  %166 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @CNST, align 8
  %170 = load i64, i64* @I, align 8
  %171 = add nsw i64 %169, %170
  %172 = icmp eq i64 %168, %171
  br i1 %172, label %173, label %206

173:                                              ; preds = %165
  %174 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  store i64 %178, i64* %10, align 8
  %179 = load i64, i64* %10, align 8
  %180 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_43__*, %struct.TYPE_43__** %182, align 8
  %184 = call i64 @fieldsize(%struct.TYPE_43__* %183)
  %185 = sub i64 %184, 1
  %186 = trunc i64 %185 to i32
  %187 = shl i32 1, %186
  %188 = sext i32 %187 to i64
  %189 = and i64 %179, %188
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %200

191:                                              ; preds = %173
  %192 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_43__*, %struct.TYPE_43__** %194, align 8
  %196 = call i64 @fieldsize(%struct.TYPE_43__* %195)
  %197 = shl i64 -1, %196
  %198 = load i64, i64* %10, align 8
  %199 = or i64 %198, %197
  store i64 %199, i64* %10, align 8
  br label %200

200:                                              ; preds = %191, %173
  %201 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* %10, align 8
  %205 = call %struct.TYPE_50__* @cnsttree(i64 %203, i64 %204)
  store %struct.TYPE_50__* %205, %struct.TYPE_50__** %7, align 8
  br label %218

206:                                              ; preds = %165
  %207 = load i32, i32* @RSH, align 4
  %208 = load i32, i32* @LSH, align 4
  %209 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %210 = load i64, i64* @inttype, align 8
  %211 = load i64, i64* %10, align 8
  %212 = call %struct.TYPE_50__* @cnsttree(i64 %210, i64 %211)
  %213 = call %struct.TYPE_50__* @shtree(i32 %208, %struct.TYPE_50__* %209, %struct.TYPE_50__* %212)
  %214 = load i64, i64* @inttype, align 8
  %215 = load i64, i64* %10, align 8
  %216 = call %struct.TYPE_50__* @cnsttree(i64 %214, i64 %215)
  %217 = call %struct.TYPE_50__* @shtree(i32 %207, %struct.TYPE_50__* %213, %struct.TYPE_50__* %216)
  store %struct.TYPE_50__* %217, %struct.TYPE_50__** %7, align 8
  br label %218

218:                                              ; preds = %206, %200
  br label %219

219:                                              ; preds = %218, %162
  br label %220

220:                                              ; preds = %219, %149
  br label %221

221:                                              ; preds = %220, %115
  %222 = load i64, i64* %9, align 8
  %223 = call i64 @isstruct(i64 %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %259

225:                                              ; preds = %221
  %226 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = call i64 @isaddrop(i64 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %259

231:                                              ; preds = %225
  %232 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %233 = call i64 @iscallb(%struct.TYPE_50__* %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %259

235:                                              ; preds = %231
  %236 = load i64, i64* @RIGHT, align 8
  %237 = load i64, i64* %9, align 8
  %238 = load i64, i64* @CALL, align 8
  %239 = load i64, i64* @B, align 8
  %240 = add nsw i64 %238, %239
  %241 = load i64, i64* %9, align 8
  %242 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %242, i32 0, i32 3
  %244 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_48__*, %struct.TYPE_48__** %244, i64 0
  %246 = load %struct.TYPE_48__*, %struct.TYPE_48__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %246, i32 0, i32 0
  %248 = load %struct.TYPE_50__**, %struct.TYPE_50__*** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_50__*, %struct.TYPE_50__** %248, i64 0
  %250 = load %struct.TYPE_50__*, %struct.TYPE_50__** %249, align 8
  %251 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %252 = call %struct.TYPE_50__* @tree(i64 %240, i64 %241, %struct.TYPE_50__* %250, %struct.TYPE_50__* %251)
  %253 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %253, i32 0, i32 2
  %255 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %254, i32 0, i32 0
  %256 = load %struct.TYPE_42__*, %struct.TYPE_42__** %255, align 8
  %257 = call %struct.TYPE_50__* @idtree(%struct.TYPE_42__* %256)
  %258 = call %struct.TYPE_50__* @tree(i64 %236, i64 %237, %struct.TYPE_50__* %252, %struct.TYPE_50__* %257)
  store %struct.TYPE_50__* %258, %struct.TYPE_50__** %4, align 8
  br label %267

259:                                              ; preds = %231, %225, %221
  %260 = load i32, i32* %5, align 4
  %261 = load i64, i64* %9, align 8
  %262 = call i64 @mkop(i32 %260, i64 %261)
  %263 = load i64, i64* %9, align 8
  %264 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %265 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %266 = call %struct.TYPE_50__* @tree(i64 %262, i64 %263, %struct.TYPE_50__* %264, %struct.TYPE_50__* %265)
  store %struct.TYPE_50__* %266, %struct.TYPE_50__** %4, align 8
  br label %267

267:                                              ; preds = %259, %235
  %268 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  ret %struct.TYPE_50__* %268
}

declare dso_local %struct.TYPE_50__* @pointer(%struct.TYPE_50__*) #1

declare dso_local i64 @assign(i64, %struct.TYPE_50__*) #1

declare dso_local %struct.TYPE_50__* @cast(%struct.TYPE_50__*, i64) #1

declare dso_local i32 @typeerror(i32, %struct.TYPE_50__*, %struct.TYPE_50__*) #1

declare dso_local %struct.TYPE_50__* @retype(%struct.TYPE_50__*, i64) #1

declare dso_local %struct.TYPE_50__* @lvalue(%struct.TYPE_50__*) #1

declare dso_local i64 @isptr(i64) #1

declare dso_local %struct.TYPE_51__* @unqual(i64) #1

declare dso_local i64 @isconst(i64) #1

declare dso_local i64 @isstruct(i64) #1

declare dso_local i64 @isaddrop(i64) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i64 @fieldsize(%struct.TYPE_43__*) #1

declare dso_local i64 @isunsigned(%struct.TYPE_41__*) #1

declare dso_local %struct.TYPE_50__* @bittree(i32, %struct.TYPE_50__*, %struct.TYPE_50__*) #1

declare dso_local %struct.TYPE_50__* @cnsttree(i64, i64) #1

declare dso_local i64 @fieldmask(%struct.TYPE_43__*) #1

declare dso_local %struct.TYPE_50__* @shtree(i32, %struct.TYPE_50__*, %struct.TYPE_50__*) #1

declare dso_local i64 @iscallb(%struct.TYPE_50__*) #1

declare dso_local %struct.TYPE_50__* @tree(i64, i64, %struct.TYPE_50__*, %struct.TYPE_50__*) #1

declare dso_local %struct.TYPE_50__* @idtree(%struct.TYPE_42__*) #1

declare dso_local i64 @mkop(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
