; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_bg_pmove.c_PM_CheckDuck.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_bg_pmove.c_PM_CheckDuck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32*, %struct.TYPE_7__*, i32, i32 (%struct.TYPE_8__*, i32, i32*, i32*, i32, i32, i32)*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i64, i8*, i32, i32, i64* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@pm = common dso_local global %struct.TYPE_9__* null, align 8
@PW_INVULNERABILITY = common dso_local global i64 0, align 8
@PMF_INVULEXPAND = common dso_local global i32 0, align 4
@MINS_Z = common dso_local global i32 0, align 4
@PMF_DUCKED = common dso_local global i32 0, align 4
@CROUCH_VIEWHEIGHT = common dso_local global i8* null, align 8
@PM_DEAD = common dso_local global i64 0, align 8
@DEAD_VIEWHEIGHT = common dso_local global i8* null, align 8
@DEFAULT_VIEWHEIGHT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @PM_CheckDuck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PM_CheckDuck() #0 {
  %1 = alloca %struct.TYPE_8__, align 4
  %2 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %3 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 2
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 5
  %6 = load i64*, i64** %5, align 8
  %7 = load i64, i64* @PW_INVULNERABILITY, align 8
  %8 = getelementptr inbounds i64, i64* %6, i64 %7
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %52

11:                                               ; preds = %0
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PMF_INVULEXPAND, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %11
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @VectorSet(i32* %23, i32 -42, i32 -42, i32 -42)
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @VectorSet(i32* %27, i32 42, i32 42, i32 42)
  br label %39

29:                                               ; preds = %11
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* @MINS_Z, align 4
  %34 = call i32 @VectorSet(i32* %32, i32 -15, i32 -15, i32 %33)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @VectorSet(i32* %37, i32 15, i32 15, i32 16)
  br label %39

39:                                               ; preds = %29, %20
  %40 = load i32, i32* @PMF_DUCKED, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %40
  store i32 %46, i32* %44, align 8
  %47 = load i8*, i8** @CROUCH_VIEWHEIGHT, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  store i8* %47, i8** %51, align 8
  br label %198

52:                                               ; preds = %0
  %53 = load i32, i32* @PMF_INVULEXPAND, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, %54
  store i32 %60, i32* %58, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 -15, i32* %64, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  store i32 -15, i32* %68, align 4
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  store i32 15, i32* %72, align 4
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  store i32 15, i32* %76, align 4
  %77 = load i32, i32* @MINS_Z, align 4
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  store i32 %77, i32* %81, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @PM_DEAD, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %52
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  store i32 -8, i32* %93, align 4
  %94 = load i8*, i8** @DEAD_VIEWHEIGHT, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 2
  store i8* %94, i8** %98, align 8
  br label %198

99:                                               ; preds = %52
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 5
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %99
  %106 = load i32, i32* @PMF_DUCKED, align 4
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %106
  store i32 %112, i32* %110, align 8
  br label %169

113:                                              ; preds = %99
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @PMF_DUCKED, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %168

122:                                              ; preds = %113
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 2
  store i32 32, i32* %126, align 4
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 4
  %129 = load i32 (%struct.TYPE_8__*, i32, i32*, i32*, i32, i32, i32)*, i32 (%struct.TYPE_8__*, i32, i32*, i32*, i32, i32, i32)** %128, align 8
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = call i32 %129(%struct.TYPE_8__* %1, i32 %134, i32* %137, i32* %140, i32 %145, i32 %150, i32 %153)
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %167, label %158

158:                                              ; preds = %122
  %159 = load i32, i32* @PMF_DUCKED, align 4
  %160 = xor i32 %159, -1
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = and i32 %165, %160
  store i32 %166, i32* %164, align 8
  br label %167

167:                                              ; preds = %158, %122
  br label %168

168:                                              ; preds = %167, %113
  br label %169

169:                                              ; preds = %168, %105
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 2
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @PMF_DUCKED, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %188

178:                                              ; preds = %169
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 2
  store i32 16, i32* %182, align 4
  %183 = load i8*, i8** @CROUCH_VIEWHEIGHT, align 8
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 2
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 2
  store i8* %183, i8** %187, align 8
  br label %198

188:                                              ; preds = %169
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 2
  store i32 32, i32* %192, align 4
  %193 = load i8*, i8** @DEFAULT_VIEWHEIGHT, align 8
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 2
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 2
  store i8* %193, i8** %197, align 8
  br label %198

198:                                              ; preds = %39, %89, %188, %178
  ret void
}

declare dso_local i32 @VectorSet(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
