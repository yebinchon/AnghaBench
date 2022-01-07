; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_vbo.c_VaoCache_Commit.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_vbo.c_VaoCache_Commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32*, i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32, i32, i32 }
%struct.TYPE_10__ = type { i32*, i32, i32, i32, i32, %struct.TYPE_12__*, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@vcq = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@vc = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@tess = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@GL_ARRAY_BUFFER = common dso_local global i32 0, align 4
@GL_ELEMENT_ARRAY_BUFFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VaoCache_Commit() #0 {
  %1 = alloca %struct.TYPE_8__*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @vcq, i32 0, i32 5), align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @vcq, i32 0, i32 0), align 8
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i64 %15
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %4, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vc, i32 0, i32 5), align 8
  %18 = call i32 @R_BindVao(%struct.TYPE_12__* %17)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vc, i32 0, i32 6), align 8
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %1, align 8
  %20 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vc, i32 0, i32 0), align 8
  store i32* %20, i32** %2, align 8
  br label %21

21:                                               ; preds = %78, %0
  %22 = load i32*, i32** %2, align 8
  %23 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vc, i32 0, i32 0), align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vc, i32 0, i32 1), align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = icmp ult i32* %22, %26
  br i1 %27, label %28, label %81

28:                                               ; preds = %21
  %29 = load i32*, i32** %2, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @vcq, i32 0, i32 0), align 8
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %72

33:                                               ; preds = %28
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %5, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @vcq, i32 0, i32 5), align 8
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %3, align 8
  br label %36

36:                                               ; preds = %61, %33
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = icmp ult %struct.TYPE_7__* %37, %38
  br i1 %39, label %40, label %66

40:                                               ; preds = %36
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %43, %46
  br i1 %47, label %59, label %48

48:                                               ; preds = %40
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = icmp ne i64 %53, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %48, %40
  br label %66

60:                                               ; preds = %48
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 1
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %3, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 1
  store %struct.TYPE_8__* %65, %struct.TYPE_8__** %5, align 8
  br label %36

66:                                               ; preds = %59, %36
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %69 = icmp eq %struct.TYPE_7__* %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %81

71:                                               ; preds = %66
  br label %72

72:                                               ; preds = %71, %28
  %73 = load i32*, i32** %2, align 8
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i64 %76
  store %struct.TYPE_8__* %77, %struct.TYPE_8__** %1, align 8
  br label %78

78:                                               ; preds = %72
  %79 = load i32*, i32** %2, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %2, align 8
  br label %21

81:                                               ; preds = %70, %21
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vc, i32 0, i32 6), align 8
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vc, i32 0, i32 2), align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i64 %85
  %87 = icmp ult %struct.TYPE_8__* %82, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %81
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = udiv i64 %92, 4
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tess, i32 0, i32 0), align 4
  br label %231

95:                                               ; preds = %81
  %96 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @vcq, i32 0, i32 4), align 8
  store i32* %96, i32** %6, align 8
  %97 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @vcq, i32 0, i32 3), align 8
  store i32* %97, i32** %7, align 8
  %98 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vc, i32 0, i32 0), align 8
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vc, i32 0, i32 1), align 8
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32* %101, i32** %2, align 8
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @vcq, i32 0, i32 0), align 8
  %103 = load i32*, i32** %2, align 8
  store i32 %102, i32* %103, align 4
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vc, i32 0, i32 1), align 8
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vc, i32 0, i32 1), align 8
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vc, i32 0, i32 3), align 8
  %107 = sext i32 %106 to i64
  %108 = udiv i64 %107, 4
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tess, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @vcq, i32 0, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @vcq, i32 0, i32 2), align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @vcq, i32 0, i32 5), align 8
  store %struct.TYPE_7__* %110, %struct.TYPE_7__** %3, align 8
  br label %111

111:                                              ; preds = %193, %95
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %114 = icmp ult %struct.TYPE_7__* %112, %113
  br i1 %114, label %115, label %196

115:                                              ; preds = %111
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = inttoptr i64 %118 to i32*
  store i32* %119, i32** %8, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = mul i64 %123, 4
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %9, align 4
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = mul i64 %129, 4
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vc, i32 0, i32 4), align 4
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @vcq, i32 0, i32 1), align 4
  %134 = add nsw i32 %132, %133
  %135 = sext i32 %134 to i64
  %136 = udiv i64 %135, 4
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %12, align 4
  %138 = load i32*, i32** %6, align 8
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @Com_Memcpy(i32* %138, i32 %141, i32 %142)
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load i32*, i32** %6, align 8
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  store i32* %149, i32** %6, align 8
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @vcq, i32 0, i32 1), align 4
  %152 = add nsw i32 %151, %150
  store i32 %152, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @vcq, i32 0, i32 1), align 4
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vc, i32 0, i32 6), align 8
  %154 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vc, i32 0, i32 2), align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i64 %155
  store %struct.TYPE_8__* %156, %struct.TYPE_8__** %1, align 8
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  store i64 %159, i64* %161, align 8
  %162 = load i32, i32* %10, align 4
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 8
  %165 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vc, i32 0, i32 3), align 8
  %166 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @vcq, i32 0, i32 2), align 8
  %167 = add nsw i32 %165, %166
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 2
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vc, i32 0, i32 2), align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vc, i32 0, i32 2), align 4
  store i32 0, i32* %11, align 4
  br label %172

172:                                              ; preds = %186, %115
  %173 = load i32, i32* %11, align 4
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = icmp slt i32 %173, %176
  br i1 %177, label %178, label %189

178:                                              ; preds = %172
  %179 = load i32*, i32** %8, align 8
  %180 = getelementptr inbounds i32, i32* %179, i32 1
  store i32* %180, i32** %8, align 8
  %181 = load i32, i32* %179, align 4
  %182 = load i32, i32* %12, align 4
  %183 = add nsw i32 %181, %182
  %184 = load i32*, i32** %7, align 8
  %185 = getelementptr inbounds i32, i32* %184, i32 1
  store i32* %185, i32** %7, align 8
  store i32 %183, i32* %184, align 4
  br label %186

186:                                              ; preds = %178
  %187 = load i32, i32* %11, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %11, align 4
  br label %172

189:                                              ; preds = %172
  %190 = load i32, i32* %10, align 4
  %191 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @vcq, i32 0, i32 2), align 8
  %192 = add nsw i32 %191, %190
  store i32 %192, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @vcq, i32 0, i32 2), align 8
  br label %193

193:                                              ; preds = %189
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 1
  store %struct.TYPE_7__* %195, %struct.TYPE_7__** %3, align 8
  br label %111

196:                                              ; preds = %111
  %197 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @vcq, i32 0, i32 1), align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %213

199:                                              ; preds = %196
  %200 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vc, i32 0, i32 5), align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @qglBindBuffer(i32 %200, i32 %203)
  %205 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %206 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vc, i32 0, i32 4), align 4
  %207 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @vcq, i32 0, i32 1), align 4
  %208 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @vcq, i32 0, i32 4), align 8
  %209 = call i32 @qglBufferSubData(i32 %205, i32 %206, i32 %207, i32* %208)
  %210 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @vcq, i32 0, i32 1), align 4
  %211 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vc, i32 0, i32 4), align 4
  %212 = add nsw i32 %211, %210
  store i32 %212, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vc, i32 0, i32 4), align 4
  br label %213

213:                                              ; preds = %199, %196
  %214 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @vcq, i32 0, i32 2), align 8
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %230

216:                                              ; preds = %213
  %217 = load i32, i32* @GL_ELEMENT_ARRAY_BUFFER, align 4
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vc, i32 0, i32 5), align 8
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @qglBindBuffer(i32 %217, i32 %220)
  %222 = load i32, i32* @GL_ELEMENT_ARRAY_BUFFER, align 4
  %223 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vc, i32 0, i32 3), align 8
  %224 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @vcq, i32 0, i32 2), align 8
  %225 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @vcq, i32 0, i32 3), align 8
  %226 = call i32 @qglBufferSubData(i32 %222, i32 %223, i32 %224, i32* %225)
  %227 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @vcq, i32 0, i32 2), align 8
  %228 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vc, i32 0, i32 3), align 8
  %229 = add nsw i32 %228, %227
  store i32 %229, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vc, i32 0, i32 3), align 8
  br label %230

230:                                              ; preds = %216, %213
  br label %231

231:                                              ; preds = %230, %88
  ret void
}

declare dso_local i32 @R_BindVao(%struct.TYPE_12__*) #1

declare dso_local i32 @Com_Memcpy(i32*, i32, i32) #1

declare dso_local i32 @qglBindBuffer(i32, i32) #1

declare dso_local i32 @qglBufferSubData(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
