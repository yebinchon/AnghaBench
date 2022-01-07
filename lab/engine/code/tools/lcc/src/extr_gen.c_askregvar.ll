; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_gen.c_askregvar.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_gen.c_askregvar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_10__, i64, i32 }
%struct.TYPE_10__ = type { i8*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }

@REGISTER = common dso_local global i64 0, align 8
@AUTO = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"?\00", align 1
@vmask = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"(allocating %s to symbol %s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @askregvar(%struct.TYPE_11__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %8 = call i32 @assert(%struct.TYPE_11__* %7)
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @REGISTER, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %75

15:                                               ; preds = %2
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @isscalar(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  %22 = load i8*, i8** @AUTO, align 8
  %23 = ptrtoint i8* %22 to i64
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  store i32 0, i32* %3, align 4
  br label %75

26:                                               ; preds = %15
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %34, align 8
  store i32 1, i32* %3, align 4
  br label %75

35:                                               ; preds = %26
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %37 = load i32, i32* @vmask, align 4
  %38 = call %struct.TYPE_11__* @askreg(%struct.TYPE_11__* %36, i32 %37)
  store %struct.TYPE_11__* %38, %struct.TYPE_11__** %6, align 8
  %39 = icmp ne %struct.TYPE_11__* %38, null
  br i1 %39, label %40, label %70

40:                                               ; preds = %35
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  store %struct.TYPE_9__* %44, %struct.TYPE_9__** %47, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  store %struct.TYPE_11__* %48, %struct.TYPE_11__** %53, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  store i8* %57, i8** %60, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dumpregs(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %64, i32 %67)
  %69 = call i32 @debug(i32 %68)
  store i32 1, i32* %3, align 4
  br label %75

70:                                               ; preds = %35
  %71 = load i8*, i8** @AUTO, align 8
  %72 = ptrtoint i8* %71 to i64
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %70, %40, %31, %21, %14
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @assert(%struct.TYPE_11__*) #1

declare dso_local i32 @isscalar(i32) #1

declare dso_local %struct.TYPE_11__* @askreg(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @debug(i32) #1

declare dso_local i32 @dumpregs(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
