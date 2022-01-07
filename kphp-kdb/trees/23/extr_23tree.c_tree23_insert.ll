; ModuleID = '/home/carl/AnghaBench/kphp-kdb/trees/23/extr_23tree.c_tree23_insert.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/trees/23/extr_23tree.c_tree23_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__**, i32)* @tree23_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tree23_insert(%struct.TYPE_7__** %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__**, align 8
  %4 = alloca i32, align 4
  %5 = alloca [100 x %struct.TYPE_7__*], align 16
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = icmp ne %struct.TYPE_7__* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.TYPE_7__* @new_leaf(i32 %14)
  %16 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %16, align 8
  br label %266

17:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  %18 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %6, align 8
  br label %20

20:                                               ; preds = %57, %17
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, 1
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br i1 %26, label %27, label %58

27:                                               ; preds = %20
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %9, align 4
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds [100 x %struct.TYPE_7__*], [100 x %struct.TYPE_7__*]* %5, i64 0, i64 %31
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %32, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %27
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %6, align 8
  br label %57

42:                                               ; preds = %27
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %43, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  store %struct.TYPE_7__* %51, %struct.TYPE_7__** %6, align 8
  br label %56

52:                                               ; preds = %42
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  store %struct.TYPE_7__* %55, %struct.TYPE_7__** %6, align 8
  br label %56

56:                                               ; preds = %52, %48
  br label %57

57:                                               ; preds = %56, %38
  br label %20

58:                                               ; preds = %20
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 1
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %115, label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %84

70:                                               ; preds = %64
  %71 = load i32, i32* %4, align 4
  %72 = call %struct.TYPE_7__* @new_leaf(i32 %71)
  store %struct.TYPE_7__* %72, %struct.TYPE_7__** %7, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, -2
  store i32 %76, i32* %4, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %83, %struct.TYPE_7__** %8, align 8
  br label %114

84:                                               ; preds = %64
  %85 = load i32, i32* %4, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp sgt i32 %85, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %84
  %91 = load i32, i32* %4, align 4
  %92 = call %struct.TYPE_7__* @new_leaf(i32 %91)
  store %struct.TYPE_7__* %92, %struct.TYPE_7__** %8, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %4, align 4
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %101, %struct.TYPE_7__** %7, align 8
  br label %113

102:                                              ; preds = %84
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call %struct.TYPE_7__* @new_leaf(i32 %105)
  store %struct.TYPE_7__* %106, %struct.TYPE_7__** %8, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %112, %struct.TYPE_7__** %7, align 8
  br label %113

113:                                              ; preds = %102, %90
  br label %114

114:                                              ; preds = %113, %70
  br label %137

115:                                              ; preds = %58
  %116 = load i32, i32* %4, align 4
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp slt i32 %116, %119
  br i1 %120, label %121, label %132

121:                                              ; preds = %115
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = and i32 %124, -2
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* %4, align 4
  %129 = or i32 %128, 1
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  br label %136

132:                                              ; preds = %115
  %133 = load i32, i32* %4, align 4
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  br label %136

136:                                              ; preds = %132, %121
  br label %266

137:                                              ; preds = %114
  br label %138

138:                                              ; preds = %259, %137
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %260

141:                                              ; preds = %138
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, -1
  store i32 %143, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [100 x %struct.TYPE_7__*], [100 x %struct.TYPE_7__*]* %5, i64 0, i64 %144
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %145, align 8
  store %struct.TYPE_7__* %146, %struct.TYPE_7__** %6, align 8
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = and i32 %149, 1
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %228, label %152

152:                                              ; preds = %141
  %153 = load i32, i32* %4, align 4
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp slt i32 %153, %156
  br i1 %157, label %158, label %181

158:                                              ; preds = %152
  %159 = load i32, i32* %4, align 4
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %162 = call %struct.TYPE_7__* @new_node2(i32 %159, %struct.TYPE_7__* %160, %struct.TYPE_7__* %161)
  store %struct.TYPE_7__* %162, %struct.TYPE_7__** %7, align 8
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  store i32 %165, i32* %4, align 4
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 8
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = or i32 %173, 1
  store i32 %174, i32* %172, align 4
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 3
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %176, align 8
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 4
  store %struct.TYPE_7__* %177, %struct.TYPE_7__** %179, align 8
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %180, %struct.TYPE_7__** %8, align 8
  br label %227

181:                                              ; preds = %152
  %182 = load i32, i32* %4, align 4
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = icmp sgt i32 %182, %185
  br i1 %186, label %187, label %207

187:                                              ; preds = %181
  %188 = load i32, i32* %4, align 4
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %191 = call %struct.TYPE_7__* @new_node2(i32 %188, %struct.TYPE_7__* %189, %struct.TYPE_7__* %190)
  store %struct.TYPE_7__* %191, %struct.TYPE_7__** %8, align 8
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  store i32 %194, i32* %4, align 4
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 3
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %196, align 8
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 2
  store %struct.TYPE_7__* %197, %struct.TYPE_7__** %199, align 8
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = or i32 %202, 1
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 1
  store i32 %203, i32* %205, align 4
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %206, %struct.TYPE_7__** %7, align 8
  br label %226

207:                                              ; preds = %181
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 2
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %213, align 8
  %215 = call %struct.TYPE_7__* @new_node2(i32 %210, %struct.TYPE_7__* %211, %struct.TYPE_7__* %214)
  store %struct.TYPE_7__* %215, %struct.TYPE_7__** %8, align 8
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 2
  store %struct.TYPE_7__* %216, %struct.TYPE_7__** %218, align 8
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = or i32 %221, 1
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 1
  store i32 %222, i32* %224, align 4
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %225, %struct.TYPE_7__** %7, align 8
  br label %226

226:                                              ; preds = %207, %187
  br label %227

227:                                              ; preds = %226, %158
  br label %259

228:                                              ; preds = %141
  %229 = load i32, i32* %4, align 4
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = icmp slt i32 %229, %232
  br i1 %233, label %234, label %248

234:                                              ; preds = %228
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 4
  store %struct.TYPE_7__* %235, %struct.TYPE_7__** %237, align 8
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 3
  store %struct.TYPE_7__* %238, %struct.TYPE_7__** %240, align 8
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = and i32 %243, -2
  store i32 %244, i32* %242, align 4
  %245 = load i32, i32* %4, align 4
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 0
  store i32 %245, i32* %247, align 8
  br label %258

248:                                              ; preds = %228
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %250 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 3
  store %struct.TYPE_7__* %249, %struct.TYPE_7__** %251, align 8
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %253 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 2
  store %struct.TYPE_7__* %252, %struct.TYPE_7__** %254, align 8
  %255 = load i32, i32* %4, align 4
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 1
  store i32 %255, i32* %257, align 4
  br label %258

258:                                              ; preds = %248, %234
  br label %266

259:                                              ; preds = %227
  br label %138

260:                                              ; preds = %138
  %261 = load i32, i32* %4, align 4
  %262 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %263 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %264 = call %struct.TYPE_7__* @new_node2(i32 %261, %struct.TYPE_7__* %262, %struct.TYPE_7__* %263)
  %265 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  store %struct.TYPE_7__* %264, %struct.TYPE_7__** %265, align 8
  br label %266

266:                                              ; preds = %136, %258, %260, %13
  ret void
}

declare dso_local %struct.TYPE_7__* @new_leaf(i32) #1

declare dso_local %struct.TYPE_7__* @new_node2(i32, %struct.TYPE_7__*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
