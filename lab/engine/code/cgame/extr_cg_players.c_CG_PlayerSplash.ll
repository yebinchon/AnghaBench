; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_players.c_CG_PlayerSplash.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_players.c_CG_PlayerSplash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { double, i32 }
%struct.TYPE_12__ = type { i32*, i32*, i32* }

@cg_shadows = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@CONTENTS_WATER = common dso_local global i32 0, align 4
@CONTENTS_SLIME = common dso_local global i32 0, align 4
@CONTENTS_LAVA = common dso_local global i32 0, align 4
@CONTENTS_SOLID = common dso_local global i32 0, align 4
@cgs = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @CG_PlayerSplash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_PlayerSplash(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4 x %struct.TYPE_12__], align 16
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg_shadows, i32 0, i32 0), align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %240

11:                                               ; preds = %1
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @VectorCopy(i32 %14, i32* %15)
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %19, 24
  store i32 %20, i32* %18, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @CG_PointContents(i32* %21, i32 0)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @CONTENTS_WATER, align 4
  %25 = load i32, i32* @CONTENTS_SLIME, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @CONTENTS_LAVA, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %23, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %11
  br label %240

32:                                               ; preds = %11
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @VectorCopy(i32 %35, i32* %36)
  %38 = load i32*, i32** %3, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 32
  store i32 %41, i32* %39, align 4
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @CG_PointContents(i32* %42, i32 0)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @CONTENTS_SOLID, align 4
  %46 = load i32, i32* @CONTENTS_WATER, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @CONTENTS_SLIME, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @CONTENTS_LAVA, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %44, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %32
  br label %240

55:                                               ; preds = %32
  %56 = load i32*, i32** %3, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* @CONTENTS_WATER, align 4
  %59 = load i32, i32* @CONTENTS_SLIME, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @CONTENTS_LAVA, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @trap_CM_BoxTrace(%struct.TYPE_11__* %5, i32* %56, i32* %57, i32* null, i32* null, i32 0, i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %65 = load double, double* %64, align 8
  %66 = fcmp oeq double %65, 1.000000e+00
  br i1 %66, label %67, label %68

67:                                               ; preds = %55
  br label %240

68:                                               ; preds = %55
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %7, i64 0, i64 0
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 16
  %74 = call i32 @VectorCopy(i32 %70, i32* %73)
  %75 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %7, i64 0, i64 0
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 16
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %79, 32
  store i32 %80, i32* %78, align 4
  %81 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %7, i64 0, i64 0
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 16
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %85, 32
  store i32 %86, i32* %84, align 4
  %87 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %7, i64 0, i64 0
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  store i32 0, i32* %90, align 4
  %91 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %7, i64 0, i64 0
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  store i32 0, i32* %94, align 4
  %95 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %7, i64 0, i64 0
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 16
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  store i32 255, i32* %98, align 4
  %99 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %7, i64 0, i64 0
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 16
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  store i32 255, i32* %102, align 4
  %103 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %7, i64 0, i64 0
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 16
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  store i32 255, i32* %106, align 4
  %107 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %7, i64 0, i64 0
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 16
  %110 = getelementptr inbounds i32, i32* %109, i64 3
  store i32 255, i32* %110, align 4
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %7, i64 0, i64 1
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @VectorCopy(i32 %112, i32* %115)
  %117 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %7, i64 0, i64 1
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = sub nsw i32 %121, 32
  store i32 %122, i32* %120, align 4
  %123 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %7, i64 0, i64 1
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 32
  store i32 %128, i32* %126, align 4
  %129 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %7, i64 0, i64 1
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  store i32 0, i32* %132, align 4
  %133 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %7, i64 0, i64 1
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  store i32 1, i32* %136, align 4
  %137 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %7, i64 0, i64 1
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  store i32 255, i32* %140, align 4
  %141 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %7, i64 0, i64 1
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 2
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 1
  store i32 255, i32* %144, align 4
  %145 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %7, i64 0, i64 1
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 2
  store i32 255, i32* %148, align 4
  %149 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %7, i64 0, i64 1
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 3
  store i32 255, i32* %152, align 4
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %7, i64 0, i64 2
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 16
  %158 = call i32 @VectorCopy(i32 %154, i32* %157)
  %159 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %7, i64 0, i64 2
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 16
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %163, 32
  store i32 %164, i32* %162, align 4
  %165 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %7, i64 0, i64 2
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 16
  %168 = getelementptr inbounds i32, i32* %167, i64 1
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, 32
  store i32 %170, i32* %168, align 4
  %171 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %7, i64 0, i64 2
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  store i32 1, i32* %174, align 4
  %175 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %7, i64 0, i64 2
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 1
  store i32 1, i32* %178, align 4
  %179 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %7, i64 0, i64 2
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 2
  %181 = load i32*, i32** %180, align 16
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  store i32 255, i32* %182, align 4
  %183 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %7, i64 0, i64 2
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 2
  %185 = load i32*, i32** %184, align 16
  %186 = getelementptr inbounds i32, i32* %185, i64 1
  store i32 255, i32* %186, align 4
  %187 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %7, i64 0, i64 2
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 2
  %189 = load i32*, i32** %188, align 16
  %190 = getelementptr inbounds i32, i32* %189, i64 2
  store i32 255, i32* %190, align 4
  %191 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %7, i64 0, i64 2
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 2
  %193 = load i32*, i32** %192, align 16
  %194 = getelementptr inbounds i32, i32* %193, i64 3
  store i32 255, i32* %194, align 4
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %7, i64 0, i64 3
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = call i32 @VectorCopy(i32 %196, i32* %199)
  %201 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %7, i64 0, i64 3
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %205, 32
  store i32 %206, i32* %204, align 4
  %207 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %7, i64 0, i64 3
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 1
  %211 = load i32, i32* %210, align 4
  %212 = sub nsw i32 %211, 32
  store i32 %212, i32* %210, align 4
  %213 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %7, i64 0, i64 3
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 1
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 0
  store i32 1, i32* %216, align 4
  %217 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %7, i64 0, i64 3
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 1
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 1
  store i32 0, i32* %220, align 4
  %221 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %7, i64 0, i64 3
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 2
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 0
  store i32 255, i32* %224, align 4
  %225 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %7, i64 0, i64 3
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 2
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 1
  store i32 255, i32* %228, align 4
  %229 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %7, i64 0, i64 3
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 2
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 2
  store i32 255, i32* %232, align 4
  %233 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %7, i64 0, i64 3
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 2
  %235 = load i32*, i32** %234, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 3
  store i32 255, i32* %236, align 4
  %237 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cgs, i32 0, i32 0, i32 0), align 4
  %238 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %7, i64 0, i64 0
  %239 = call i32 @trap_R_AddPolyToScene(i32 %237, i32 4, %struct.TYPE_12__* %238)
  br label %240

240:                                              ; preds = %68, %67, %54, %31, %10
  ret void
}

declare dso_local i32 @VectorCopy(i32, i32*) #1

declare dso_local i32 @CG_PointContents(i32*, i32) #1

declare dso_local i32 @trap_CM_BoxTrace(%struct.TYPE_11__*, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @trap_R_AddPolyToScene(i32, i32, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
