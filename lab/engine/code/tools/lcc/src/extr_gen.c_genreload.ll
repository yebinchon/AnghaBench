; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_gen.c_genreload.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_gen.c_genreload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_21__, i32*, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_23__** }
%struct.TYPE_22__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"(replacing %x with a reload from %s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"(genreload: \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@ADDRL = common dso_local global i64 0, align 8
@P = common dso_local global i64 0, align 8
@IR = common dso_local global %struct.TYPE_18__* null, align 8
@INDIR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, %struct.TYPE_22__*, i32)* @genreload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @genreload(%struct.TYPE_23__* %0, %struct.TYPE_22__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @stderr, align 4
  %10 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %13, i64 %15
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i32, i8*, ...) @fprint(i32 %9, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.TYPE_23__* %17, i32 %21)
  %23 = call i32 @debug(i32 %22)
  %24 = load i32, i32* @stderr, align 4
  %25 = call i32 (i32, i8*, ...) @fprint(i32 %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %26 = call i32 @debug(i32 %25)
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %30, i64 %32
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %33, align 8
  %35 = call i32 @dumptree(%struct.TYPE_23__* %34)
  %36 = call i32 @debug(i32 %35)
  %37 = load i32, i32* @stderr, align 4
  %38 = call i32 (i32, i8*, ...) @fprint(i32 %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %39 = call i32 @debug(i32 %38)
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %43, i64 %45
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @opkind(i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i64, i64* @ADDRL, align 8
  %52 = load i64, i64* @P, align 8
  %53 = add nsw i64 %51, %52
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** @IR, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @sizeop(i32 %57)
  %59 = add nsw i64 %53, %58
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %61 = call i8* @newnode(i64 %59, %struct.TYPE_23__* null, i32* null, %struct.TYPE_22__* %60)
  %62 = bitcast i8* %61 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %62, %struct.TYPE_23__** %7, align 8
  %63 = load i64, i64* @INDIR, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %63, %65
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %68 = call i8* @newnode(i64 %66, %struct.TYPE_23__* %67, i32* null, %struct.TYPE_22__* null)
  %69 = bitcast i8* %68 to %struct.TYPE_23__*
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %73, i64 %75
  store %struct.TYPE_23__* %69, %struct.TYPE_23__** %76, align 8
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %80, i64 %82
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %83, align 8
  %85 = call i32 @rewrite(%struct.TYPE_23__* %84)
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %89, i64 %91
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %92, align 8
  %94 = call i32 @prune(%struct.TYPE_23__* %93, %struct.TYPE_23__** %7)
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %6, align 4
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %105 = call i32 @reprune(i32* %102, i32 0, i32 %103, %struct.TYPE_23__* %104)
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %108 = call i32 @reprune(i32* %98, i32 %105, i32 %106, %struct.TYPE_23__* %107)
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %110 = call i32 @prune(%struct.TYPE_23__* %109, %struct.TYPE_23__** %7)
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %114, i64 %116
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %117, align 8
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %120 = call i32 @linearize(%struct.TYPE_23__* %118, %struct.TYPE_23__* %119)
  ret void
}

declare dso_local i32 @debug(i32) #1

declare dso_local i32 @fprint(i32, i8*, ...) #1

declare dso_local i32 @dumptree(%struct.TYPE_23__*) #1

declare dso_local i32 @opkind(i32) #1

declare dso_local i8* @newnode(i64, %struct.TYPE_23__*, i32*, %struct.TYPE_22__*) #1

declare dso_local i64 @sizeop(i32) #1

declare dso_local i32 @rewrite(%struct.TYPE_23__*) #1

declare dso_local i32 @prune(%struct.TYPE_23__*, %struct.TYPE_23__**) #1

declare dso_local i32 @reprune(i32*, i32, i32, %struct.TYPE_23__*) #1

declare dso_local i32 @linearize(%struct.TYPE_23__*, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
