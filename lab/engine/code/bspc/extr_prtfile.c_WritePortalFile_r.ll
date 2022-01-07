; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_prtfile.c_WritePortalFile_r.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_prtfile.c_WritePortalFile_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i32, %struct.TYPE_10__*, %struct.TYPE_11__**, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__**, %struct.TYPE_8__, %struct.TYPE_9__*, %struct.TYPE_10__** }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32** }

@PLANENUM_LEAF = common dso_local global i64 0, align 8
@CONTENTS_SOLID = common dso_local global i32 0, align 4
@pf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%i %i %i \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WritePortalFile_r(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PLANENUM_LEAF, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %1
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %14
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 4
  %22 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %22, i64 0
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  call void @WritePortalFile_r(%struct.TYPE_11__* %24)
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 4
  %27 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %27, i64 1
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  call void @WritePortalFile_r(%struct.TYPE_11__* %29)
  br label %183

30:                                               ; preds = %14, %1
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @CONTENTS_SOLID, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %183

38:                                               ; preds = %30
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  store %struct.TYPE_10__* %41, %struct.TYPE_10__** %5, align 8
  br label %42

42:                                               ; preds = %175, %38
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = icmp ne %struct.TYPE_10__* %43, null
  br i1 %44, label %45, label %183

45:                                               ; preds = %42
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  store %struct.TYPE_9__* %48, %struct.TYPE_9__** %6, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %51, i64 1
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %55 = icmp eq %struct.TYPE_11__* %53, %54
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %4, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %58 = icmp ne %struct.TYPE_9__* %57, null
  br i1 %58, label %59, label %174

59:                                               ; preds = %45
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %62, i64 0
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %66 = icmp eq %struct.TYPE_11__* %64, %65
  br i1 %66, label %67, label %174

67:                                               ; preds = %59
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %69 = call i32 @Portal_VisFlood(%struct.TYPE_10__* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  br label %175

72:                                               ; preds = %67
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @WindingPlane(%struct.TYPE_9__* %73, i32 %74, i32* %8)
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call double @DotProduct(i32 %79, i32 %80)
  %82 = fcmp olt double %81, 0x3FEFAE147AE147AE
  br i1 %82, label %83, label %103

83:                                               ; preds = %72
  %84 = load i32, i32* @pf, align 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %90, i64 1
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %97, i64 0
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i32, i8*, ...) @fprintf(i32 %84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %87, i32 %94, i32 %101)
  br label %123

103:                                              ; preds = %72
  %104 = load i32, i32* @pf, align 4
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %110, i64 0
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %117, i64 1
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (i32, i8*, ...) @fprintf(i32 %104, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %107, i32 %114, i32 %121)
  br label %123

123:                                              ; preds = %103, %83
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %168, %123
  %125 = load i32, i32* %3, align 4
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %171

130:                                              ; preds = %124
  %131 = load i32, i32* @pf, align 4
  %132 = call i32 (i32, i8*, ...) @fprintf(i32 %131, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %133 = load i32, i32* @pf, align 4
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = load i32**, i32*** %135, align 8
  %137 = load i32, i32* %3, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32*, i32** %136, i64 %138
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @WriteFloat2(i32 %133, i32 %142)
  %144 = load i32, i32* @pf, align 4
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 1
  %147 = load i32**, i32*** %146, align 8
  %148 = load i32, i32* %3, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32*, i32** %147, i64 %149
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @WriteFloat2(i32 %144, i32 %153)
  %155 = load i32, i32* @pf, align 4
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 1
  %158 = load i32**, i32*** %157, align 8
  %159 = load i32, i32* %3, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32*, i32** %158, i64 %160
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 2
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @WriteFloat2(i32 %155, i32 %164)
  %166 = load i32, i32* @pf, align 4
  %167 = call i32 (i32, i8*, ...) @fprintf(i32 %166, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %168

168:                                              ; preds = %130
  %169 = load i32, i32* %3, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %3, align 4
  br label %124

171:                                              ; preds = %124
  %172 = load i32, i32* @pf, align 4
  %173 = call i32 (i32, i8*, ...) @fprintf(i32 %172, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %174

174:                                              ; preds = %171, %59, %45
  br label %175

175:                                              ; preds = %174, %71
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 3
  %178 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %177, align 8
  %179 = load i32, i32* %4, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %178, i64 %180
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %181, align 8
  store %struct.TYPE_10__* %182, %struct.TYPE_10__** %5, align 8
  br label %42

183:                                              ; preds = %19, %37, %42
  ret void
}

declare dso_local i32 @Portal_VisFlood(%struct.TYPE_10__*) #1

declare dso_local i32 @WindingPlane(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local double @DotProduct(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @WriteFloat2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
