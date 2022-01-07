; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_cin.c_CIN_DrawCinematic.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_cin.c_CIN_DrawCinematic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, float, float, float, float, i32, i32, i32, i32, i8*, i32* }
%struct.TYPE_3__ = type { i32 (float, float, float, float, i32, i32, i32*, i32, i8*)* }

@MAX_VIDEO_HANDLES = common dso_local global i32 0, align 4
@cinTable = common dso_local global %struct.TYPE_4__* null, align 8
@FMV_EOF = common dso_local global i64 0, align 8
@re = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@qtrue = common dso_local global i8* null, align 8
@qfalse = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CIN_DrawCinematic(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @MAX_VIDEO_HANDLES, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @FMV_EOF, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %15, %11, %1
  br label %156

25:                                               ; preds = %15
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 10
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  br label %156

34:                                               ; preds = %25
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %36 = load i32, i32* %2, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load float, float* %39, align 8
  store float %40, float* %3, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %42 = load i32, i32* %2, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load float, float* %45, align 4
  store float %46, float* %4, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %48 = load i32, i32* %2, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  %52 = load float, float* %51, align 8
  store float %52, float* %5, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %54 = load i32, i32* %2, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 4
  %58 = load float, float* %57, align 4
  store float %58, float* %6, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %60 = load i32, i32* %2, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 10
  %64 = load i32*, i32** %63, align 8
  store i32* %64, i32** %7, align 8
  %65 = call i32 @SCR_AdjustFrom640(float* %3, float* %4, float* %5, float* %6)
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %67 = load i32, i32* %2, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 9
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %123

73:                                               ; preds = %34
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %75 = load i32, i32* %2, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %81 = load i32, i32* %2, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %79, %85
  br i1 %86, label %101, label %87

87:                                               ; preds = %73
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %89 = load i32, i32* %2, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %95 = load i32, i32* %2, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 8
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %93, %99
  br i1 %100, label %101, label %123

101:                                              ; preds = %87, %73
  %102 = call i32* @Hunk_AllocateTempMemory(i32 262144)
  store i32* %102, i32** %8, align 8
  %103 = load i32, i32* %2, align 4
  %104 = load i32*, i32** %8, align 8
  %105 = call i32 @CIN_ResampleCinematic(i32 %103, i32* %104)
  %106 = load i32 (float, float, float, float, i32, i32, i32*, i32, i8*)*, i32 (float, float, float, float, i32, i32, i32*, i32, i8*)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @re, i32 0, i32 0), align 8
  %107 = load float, float* %3, align 4
  %108 = load float, float* %4, align 4
  %109 = load float, float* %5, align 4
  %110 = load float, float* %6, align 4
  %111 = load i32*, i32** %8, align 8
  %112 = load i32, i32* %2, align 4
  %113 = load i8*, i8** @qtrue, align 8
  %114 = call i32 %106(float %107, float %108, float %109, float %110, i32 256, i32 256, i32* %111, i32 %112, i8* %113)
  %115 = load i8*, i8** @qfalse, align 8
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %117 = load i32, i32* %2, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 9
  store i8* %115, i8** %120, align 8
  %121 = load i32*, i32** %8, align 8
  %122 = call i32 @Hunk_FreeTempMemory(i32* %121)
  br label %156

123:                                              ; preds = %87, %34
  %124 = load i32 (float, float, float, float, i32, i32, i32*, i32, i8*)*, i32 (float, float, float, float, i32, i32, i32*, i32, i8*)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @re, i32 0, i32 0), align 8
  %125 = load float, float* %3, align 4
  %126 = load float, float* %4, align 4
  %127 = load float, float* %5, align 4
  %128 = load float, float* %6, align 4
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %130 = load i32, i32* %2, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %136 = load i32, i32* %2, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 8
  %140 = load i32, i32* %139, align 4
  %141 = load i32*, i32** %7, align 8
  %142 = load i32, i32* %2, align 4
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %144 = load i32, i32* %2, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 9
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 %124(float %125, float %126, float %127, float %128, i32 %134, i32 %140, i32* %141, i32 %142, i8* %148)
  %150 = load i8*, i8** @qfalse, align 8
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %152 = load i32, i32* %2, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 9
  store i8* %150, i8** %155, align 8
  br label %156

156:                                              ; preds = %123, %101, %33, %24
  ret void
}

declare dso_local i32 @SCR_AdjustFrom640(float*, float*, float*, float*) #1

declare dso_local i32* @Hunk_AllocateTempMemory(i32) #1

declare dso_local i32 @CIN_ResampleCinematic(i32, i32*) #1

declare dso_local i32 @Hunk_FreeTempMemory(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
