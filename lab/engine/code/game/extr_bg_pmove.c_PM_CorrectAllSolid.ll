; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_bg_pmove.c_PM_CorrectAllSolid.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_bg_pmove.c_PM_CorrectAllSolid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__*, i32, i32, i32, i32 (%struct.TYPE_9__*, i64*, i32, i32, i64*, i32, i32)*, i64 }
%struct.TYPE_8__ = type { i32, i32, i64* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__ }

@pm = common dso_local global %struct.TYPE_11__* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"%i:allsolid\0A\00", align 1
@c_pmove = common dso_local global i32 0, align 4
@pml = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@qtrue = common dso_local global i32 0, align 4
@ENTITYNUM_NONE = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @PM_CorrectAllSolid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PM_CorrectAllSolid(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pm, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @c_pmove, align 4
  %14 = call i32 @Com_Printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %12, %1
  store i32 -1, i32* %4, align 4
  br label %16

16:                                               ; preds = %152, %15
  %17 = load i32, i32* %4, align 4
  %18 = icmp sle i32 %17, 1
  br i1 %18, label %19, label %155

19:                                               ; preds = %16
  store i32 -1, i32* %5, align 4
  br label %20

20:                                               ; preds = %148, %19
  %21 = load i32, i32* %5, align 4
  %22 = icmp sle i32 %21, 1
  br i1 %22, label %23, label %151

23:                                               ; preds = %20
  store i32 -1, i32* %6, align 4
  br label %24

24:                                               ; preds = %144, %23
  %25 = load i32, i32* %6, align 4
  %26 = icmp sle i32 %25, 1
  br i1 %26, label %27, label %147

27:                                               ; preds = %24
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pm, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = load i64*, i64** %31, align 8
  %33 = load i64*, i64** %7, align 8
  %34 = call i32 @VectorCopy(i64* %32, i64* %33)
  %35 = load i32, i32* %4, align 4
  %36 = sitofp i32 %35 to float
  %37 = load i64*, i64** %7, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = load i64, i64* %38, align 8
  %40 = sitofp i64 %39 to float
  %41 = fadd float %40, %36
  %42 = fptosi float %41 to i64
  store i64 %42, i64* %38, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sitofp i32 %43 to float
  %45 = load i64*, i64** %7, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 1
  %47 = load i64, i64* %46, align 8
  %48 = sitofp i64 %47 to float
  %49 = fadd float %48, %44
  %50 = fptosi float %49 to i64
  store i64 %50, i64* %46, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sitofp i32 %51 to float
  %53 = load i64*, i64** %7, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 2
  %55 = load i64, i64* %54, align 8
  %56 = sitofp i64 %55 to float
  %57 = fadd float %56, %52
  %58 = fptosi float %57 to i64
  store i64 %58, i64* %54, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pm, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 4
  %61 = load i32 (%struct.TYPE_9__*, i64*, i32, i32, i64*, i32, i32)*, i32 (%struct.TYPE_9__*, i64*, i32, i32, i64*, i32, i32)** %60, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %63 = load i64*, i64** %7, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pm, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pm, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i64*, i64** %7, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pm, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pm, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 %61(%struct.TYPE_9__* %62, i64* %63, i32 %66, i32 %69, i64* %70, i32 %75, i32 %78)
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %143, label %84

84:                                               ; preds = %27
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pm, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 2
  %89 = load i64*, i64** %88, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64*, i64** %7, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 0
  store i64 %91, i64* %93, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pm, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 2
  %98 = load i64*, i64** %97, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64*, i64** %7, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 1
  store i64 %100, i64* %102, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pm, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 2
  %107 = load i64*, i64** %106, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 2
  %109 = load i64, i64* %108, align 8
  %110 = sitofp i64 %109 to double
  %111 = fsub double %110, 2.500000e-01
  %112 = fptosi double %111 to i64
  %113 = load i64*, i64** %7, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 2
  store i64 %112, i64* %114, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pm, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 4
  %117 = load i32 (%struct.TYPE_9__*, i64*, i32, i32, i64*, i32, i32)*, i32 (%struct.TYPE_9__*, i64*, i32, i32, i64*, i32, i32)** %116, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pm, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 2
  %123 = load i64*, i64** %122, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pm, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pm, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load i64*, i64** %7, align 8
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pm, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pm, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = call i32 %117(%struct.TYPE_9__* %118, i64* %123, i32 %126, i32 %129, i64* %130, i32 %135, i32 %138)
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %141 = bitcast %struct.TYPE_9__* %140 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_9__* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pml, i32 0, i32 2) to i8*), i8* align 4 %141, i64 4, i1 false)
  %142 = load i32, i32* @qtrue, align 4
  store i32 %142, i32* %2, align 4
  br label %164

143:                                              ; preds = %27
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %6, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %6, align 4
  br label %24

147:                                              ; preds = %24
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %5, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %5, align 4
  br label %20

151:                                              ; preds = %20
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %4, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %4, align 4
  br label %16

155:                                              ; preds = %16
  %156 = load i32, i32* @ENTITYNUM_NONE, align 4
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pm, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  store i32 %156, i32* %160, align 8
  %161 = load i32, i32* @qfalse, align 4
  store i32 %161, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pml, i32 0, i32 0), align 4
  %162 = load i32, i32* @qfalse, align 4
  store i32 %162, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pml, i32 0, i32 1), align 4
  %163 = load i32, i32* @qfalse, align 4
  store i32 %163, i32* %2, align 4
  br label %164

164:                                              ; preds = %155, %84
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local i32 @Com_Printf(i8*, i32) #1

declare dso_local i32 @VectorCopy(i64*, i64*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
