; ModuleID = '/home/carl/AnghaBench/libui/test/extr_drawtests.c_drawOriginal.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_drawtests.c_drawOriginal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, double, double, i32 }
%struct.TYPE_8__ = type { i32, i8*, i8*, i8*, i64, i64, i32* }

@uiDrawBrushTypeSolid = common dso_local global i32 0, align 4
@uiDrawFillModeWinding = common dso_local global i32 0, align 4
@uiDrawLineCapFlat = common dso_local global i8* null, align 8
@uiDrawLineJoinMiter = common dso_local global i8* null, align 8
@uiDrawDefaultMiterLimit = common dso_local global i8* null, align 8
@uiDrawLineJoinRound = common dso_local global i8* null, align 8
@uiPi = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @drawOriginal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drawOriginal(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__, align 8
  %5 = alloca %struct.TYPE_8__, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 6
  store i32* null, i32** %6, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 5
  store i64 0, i64* %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 4
  store i64 0, i64* %8, align 8
  %9 = load i32, i32* @uiDrawBrushTypeSolid, align 4
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 4
  store i32 %9, i32* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  store i32 1, i32* %12, align 4
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 2
  store double 0.000000e+00, double* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 3
  store double 0.000000e+00, double* %14, align 8
  %15 = load i32, i32* @uiDrawFillModeWinding, align 4
  %16 = call i32* @uiDrawNewPath(i32 %15)
  store i32* %16, i32** %3, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 5
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 5
  %26 = call i32 @uiDrawPathNewFigure(i32* %17, i32 %21, i32 %25)
  %27 = load i32*, i32** %3, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %30, %33
  %35 = sub nsw i32 %34, 5
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %38, %41
  %43 = sub nsw i32 %42, 5
  %44 = call i32 @uiDrawPathLineTo(i32* %27, i32 %35, i32 %43)
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @uiDrawPathEnd(i32* %45)
  %47 = load i8*, i8** @uiDrawLineCapFlat, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 3
  store i8* %47, i8** %48, align 8
  %49 = load i8*, i8** @uiDrawLineJoinMiter, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  store i8* %49, i8** %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load i8*, i8** @uiDrawDefaultMiterLimit, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  store i8* %52, i8** %53, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @uiDrawStroke(i32 %56, i32* %57, %struct.TYPE_9__* %4, %struct.TYPE_8__* %5)
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @uiDrawFreePath(i32* %59)
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  store i32 0, i32* %61, align 4
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 2
  store double 0.000000e+00, double* %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 3
  store double 7.500000e-01, double* %63, align 8
  %64 = load i32, i32* @uiDrawFillModeWinding, align 4
  %65 = call i32* @uiDrawNewPath(i32 %64)
  store i32* %65, i32** %3, align 8
  %66 = load i32*, i32** %3, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @uiDrawPathNewFigure(i32* %66, i32 %69, i32 %72)
  %74 = load i32*, i32** %3, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %77, %80
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @uiDrawPathLineTo(i32* %74, i32 %81, i32 %84)
  %86 = load i32*, i32** %3, align 8
  %87 = call i32 @uiDrawPathLineTo(i32* %86, i32 50, i32 150)
  %88 = load i32*, i32** %3, align 8
  %89 = call i32 @uiDrawPathLineTo(i32* %88, i32 50, i32 50)
  %90 = load i32*, i32** %3, align 8
  %91 = call i32 @uiDrawPathCloseFigure(i32* %90)
  %92 = load i32*, i32** %3, align 8
  %93 = call i32 @uiDrawPathEnd(i32* %92)
  %94 = load i8*, i8** @uiDrawLineCapFlat, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 3
  store i8* %94, i8** %95, align 8
  %96 = load i8*, i8** @uiDrawLineJoinRound, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  store i8* %96, i8** %97, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store i32 5, i32* %98, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %3, align 8
  %103 = call i32 @uiDrawStroke(i32 %101, i32* %102, %struct.TYPE_9__* %4, %struct.TYPE_8__* %5)
  %104 = load i32*, i32** %3, align 8
  %105 = call i32 @uiDrawFreePath(i32* %104)
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  store i32 0, i32* %106, align 4
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 2
  store double 7.500000e-01, double* %107, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 3
  store double 0.000000e+00, double* %108, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  store i32 0, i32* %109, align 8
  %110 = load i32, i32* @uiDrawFillModeWinding, align 4
  %111 = call i32* @uiDrawNewPath(i32 %110)
  store i32* %111, i32** %3, align 8
  %112 = load i32*, i32** %3, align 8
  %113 = call i32 @uiDrawPathAddRectangle(i32* %112, i32 120, i32 80, i32 50, i32 50)
  %114 = load i32*, i32** %3, align 8
  %115 = call i32 @uiDrawPathEnd(i32* %114)
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %3, align 8
  %120 = call i32 @uiDrawFill(i32 %118, i32* %119, %struct.TYPE_9__* %4)
  %121 = load i32*, i32** %3, align 8
  %122 = call i32 @uiDrawFreePath(i32* %121)
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  store i32 1, i32* %123, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  store i32 0, i32* %124, align 4
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 2
  store double 5.000000e-01, double* %125, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 3
  store double 0.000000e+00, double* %126, align 8
  %127 = load i32, i32* @uiDrawFillModeWinding, align 4
  %128 = call i32* @uiDrawNewPath(i32 %127)
  store i32* %128, i32** %3, align 8
  %129 = load i32*, i32** %3, align 8
  %130 = call i32 @uiDrawPathNewFigure(i32* %129, i32 5, i32 10)
  %131 = load i32*, i32** %3, align 8
  %132 = call i32 @uiDrawPathLineTo(i32* %131, i32 5, i32 50)
  %133 = load i32*, i32** %3, align 8
  %134 = call i32 @uiDrawPathEnd(i32* %133)
  %135 = load i8*, i8** @uiDrawLineCapFlat, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 3
  store i8* %135, i8** %136, align 8
  %137 = load i8*, i8** @uiDrawLineJoinMiter, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  store i8* %137, i8** %138, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store i32 1, i32* %139, align 8
  %140 = load i8*, i8** @uiDrawDefaultMiterLimit, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  store i8* %140, i8** %141, align 8
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = load i32*, i32** %3, align 8
  %146 = call i32 @uiDrawStroke(i32 %144, i32* %145, %struct.TYPE_9__* %4, %struct.TYPE_8__* %5)
  %147 = load i32*, i32** %3, align 8
  %148 = call i32 @uiDrawFreePath(i32* %147)
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  store i32 0, i32* %149, align 4
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 2
  store double 7.500000e-01, double* %150, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 3
  store double 0.000000e+00, double* %151, align 8
  %152 = load i32, i32* @uiDrawFillModeWinding, align 4
  %153 = call i32* @uiDrawNewPath(i32 %152)
  store i32* %153, i32** %3, align 8
  %154 = load i32*, i32** %3, align 8
  %155 = call i32 @uiDrawPathNewFigure(i32* %154, i32 400, i32 100)
  %156 = load i32*, i32** %3, align 8
  %157 = load i32, i32* @uiPi, align 4
  %158 = sitofp i32 %157 to double
  %159 = fdiv double %158, 1.800000e+02
  %160 = fmul double 3.000000e+01, %159
  %161 = fptosi double %160 to i32
  %162 = load i32, i32* @uiPi, align 4
  %163 = sitofp i32 %162 to double
  %164 = fdiv double %163, 1.800000e+02
  %165 = fmul double 3.000000e+02, %164
  %166 = fptosi double %165 to i32
  %167 = call i32 @uiDrawPathArcTo(i32* %156, i32 400, i32 100, i32 50, i32 %161, i32 %166, i32 0)
  %168 = load i32*, i32** %3, align 8
  %169 = call i32 @uiDrawPathLineTo(i32* %168, i32 400, i32 100)
  %170 = load i32*, i32** %3, align 8
  %171 = load i32, i32* @uiPi, align 4
  %172 = sitofp i32 %171 to double
  %173 = fdiv double %172, 1.800000e+02
  %174 = fmul double 3.000000e+01, %173
  %175 = fptosi double %174 to i32
  %176 = load i32, i32* @uiPi, align 4
  %177 = sitofp i32 %176 to double
  %178 = fdiv double %177, 1.800000e+02
  %179 = fmul double 3.000000e+02, %178
  %180 = fptosi double %179 to i32
  %181 = call i32 @uiDrawPathNewFigureWithArc(i32* %170, i32 510, i32 100, i32 50, i32 %175, i32 %180, i32 0)
  %182 = load i32*, i32** %3, align 8
  %183 = call i32 @uiDrawPathCloseFigure(i32* %182)
  %184 = load i32*, i32** %3, align 8
  %185 = call i32 @uiDrawPathNewFigure(i32* %184, i32 400, i32 210)
  %186 = load i32*, i32** %3, align 8
  %187 = load i32, i32* @uiPi, align 4
  %188 = sitofp i32 %187 to double
  %189 = fdiv double %188, 1.800000e+02
  %190 = fmul double 3.000000e+01, %189
  %191 = fptosi double %190 to i32
  %192 = load i32, i32* @uiPi, align 4
  %193 = sitofp i32 %192 to double
  %194 = fdiv double %193, 1.800000e+02
  %195 = fmul double 3.300000e+02, %194
  %196 = fptosi double %195 to i32
  %197 = call i32 @uiDrawPathArcTo(i32* %186, i32 400, i32 210, i32 50, i32 %191, i32 %196, i32 0)
  %198 = load i32*, i32** %3, align 8
  %199 = call i32 @uiDrawPathLineTo(i32* %198, i32 400, i32 210)
  %200 = load i32*, i32** %3, align 8
  %201 = load i32, i32* @uiPi, align 4
  %202 = sitofp i32 %201 to double
  %203 = fdiv double %202, 1.800000e+02
  %204 = fmul double 3.000000e+01, %203
  %205 = fptosi double %204 to i32
  %206 = load i32, i32* @uiPi, align 4
  %207 = sitofp i32 %206 to double
  %208 = fdiv double %207, 1.800000e+02
  %209 = fmul double 3.300000e+02, %208
  %210 = fptosi double %209 to i32
  %211 = call i32 @uiDrawPathNewFigureWithArc(i32* %200, i32 510, i32 210, i32 50, i32 %205, i32 %210, i32 0)
  %212 = load i32*, i32** %3, align 8
  %213 = call i32 @uiDrawPathCloseFigure(i32* %212)
  %214 = load i32*, i32** %3, align 8
  %215 = call i32 @uiDrawPathEnd(i32* %214)
  %216 = load i8*, i8** @uiDrawLineCapFlat, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 3
  store i8* %216, i8** %217, align 8
  %218 = load i8*, i8** @uiDrawLineJoinMiter, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  store i8* %218, i8** %219, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store i32 1, i32* %220, align 8
  %221 = load i8*, i8** @uiDrawDefaultMiterLimit, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  store i8* %221, i8** %222, align 8
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 4
  %226 = load i32*, i32** %3, align 8
  %227 = call i32 @uiDrawStroke(i32 %225, i32* %226, %struct.TYPE_9__* %4, %struct.TYPE_8__* %5)
  %228 = load i32*, i32** %3, align 8
  %229 = call i32 @uiDrawFreePath(i32* %228)
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  store i32 0, i32* %230, align 4
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 2
  store double 5.000000e-01, double* %231, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 3
  store double 7.500000e-01, double* %232, align 8
  %233 = load i32, i32* @uiDrawFillModeWinding, align 4
  %234 = call i32* @uiDrawNewPath(i32 %233)
  store i32* %234, i32** %3, align 8
  %235 = load i32*, i32** %3, align 8
  %236 = call i32 @uiDrawPathNewFigure(i32* %235, i32 300, i32 300)
  %237 = load i32*, i32** %3, align 8
  %238 = call i32 @uiDrawPathBezierTo(i32* %237, i32 350, i32 320, i32 310, i32 390, i32 435, i32 372)
  %239 = load i32*, i32** %3, align 8
  %240 = call i32 @uiDrawPathEnd(i32* %239)
  %241 = load i8*, i8** @uiDrawLineCapFlat, align 8
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 3
  store i8* %241, i8** %242, align 8
  %243 = load i8*, i8** @uiDrawLineJoinMiter, align 8
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  store i8* %243, i8** %244, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store i32 1, i32* %245, align 8
  %246 = load i8*, i8** @uiDrawDefaultMiterLimit, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  store i8* %246, i8** %247, align 8
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 4
  %250 = load i32, i32* %249, align 4
  %251 = load i32*, i32** %3, align 8
  %252 = call i32 @uiDrawStroke(i32 %250, i32* %251, %struct.TYPE_9__* %4, %struct.TYPE_8__* %5)
  %253 = load i32*, i32** %3, align 8
  %254 = call i32 @uiDrawFreePath(i32* %253)
  ret void
}

declare dso_local i32* @uiDrawNewPath(i32) #1

declare dso_local i32 @uiDrawPathNewFigure(i32*, i32, i32) #1

declare dso_local i32 @uiDrawPathLineTo(i32*, i32, i32) #1

declare dso_local i32 @uiDrawPathEnd(i32*) #1

declare dso_local i32 @uiDrawStroke(i32, i32*, %struct.TYPE_9__*, %struct.TYPE_8__*) #1

declare dso_local i32 @uiDrawFreePath(i32*) #1

declare dso_local i32 @uiDrawPathCloseFigure(i32*) #1

declare dso_local i32 @uiDrawPathAddRectangle(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @uiDrawFill(i32, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @uiDrawPathArcTo(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @uiDrawPathNewFigureWithArc(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @uiDrawPathBezierTo(i32*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
