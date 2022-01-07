; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_decl.c_dclparam.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_decl.c_dclparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i8, i32, i8*, i32 }

@AUTO = common dso_local global i32 0, align 4
@REGISTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"invalid storage class `%k' for `%t%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" %s'\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"' parameter\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"register declaration ignored for `%t%s\0A\00", align 1
@identifiers = common dso_local global i32 0, align 4
@level = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [58 x i8] c"duplicate declaration for `%s' previously declared at %w\0A\00", align 1
@FUNC = common dso_local global i32 0, align 4
@t = common dso_local global i8 0, align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"illegal initialization for parameter `%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i32, i8*, i8*, i8*)* @dclparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @dclparam(i32 %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call i64 @isfunc(i8* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load i8*, i8** %7, align 8
  %15 = call i8* @ptr(i8* %14)
  store i8* %15, i8** %7, align 8
  br label %24

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = call i64 @isarray(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i8*, i8** %7, align 8
  %22 = call i8* @atop(i8* %21)
  store i8* %22, i8** %7, align 8
  br label %23

23:                                               ; preds = %20, %16
  br label %24

24:                                               ; preds = %23, %13
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @AUTO, align 4
  store i32 %28, i32* %5, align 4
  br label %64

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @REGISTER, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = icmp ne i8* %36, null
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @stringf(i8* %39, i8* %40)
  %42 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %34, i8* %35, i32 %41)
  %43 = load i32, i32* @AUTO, align 4
  store i32 %43, i32* %5, align 4
  br label %63

44:                                               ; preds = %29
  %45 = load i8*, i8** %7, align 8
  %46 = call i64 @isvolatile(i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i8*, i8** %7, align 8
  %50 = call i64 @isstruct(i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %48, %44
  %53 = load i8*, i8** %7, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = icmp ne i8* %54, null
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @stringf(i8* %57, i8* %58)
  %60 = call i32 @warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* %53, i32 %59)
  %61 = load i32, i32* @AUTO, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %52, %48
  br label %63

63:                                               ; preds = %62, %33
  br label %64

64:                                               ; preds = %63, %27
  %65 = load i8*, i8** %6, align 8
  %66 = load i32, i32* @identifiers, align 4
  %67 = call %struct.TYPE_5__* @lookup(i8* %65, i32 %66)
  store %struct.TYPE_5__* %67, %struct.TYPE_5__** %9, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %69 = icmp ne %struct.TYPE_5__* %68, null
  br i1 %69, label %70, label %81

70:                                               ; preds = %64
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @level, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load i8*, i8** %6, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i8* %77, i8* %79)
  br label %86

81:                                               ; preds = %70, %64
  %82 = load i8*, i8** %6, align 8
  %83 = load i64, i64* @level, align 8
  %84 = load i32, i32* @FUNC, align 4
  %85 = call %struct.TYPE_5__* @install(i8* %82, i32* @identifiers, i64 %83, i32 %84)
  store %struct.TYPE_5__* %85, %struct.TYPE_5__** %9, align 8
  br label %86

86:                                               ; preds = %81, %76
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = load i8*, i8** %8, align 8
  %91 = load i8, i8* %90, align 1
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  store i8 %91, i8* %93, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 3
  store i8* %94, i8** %96, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 4
  store i32 1, i32* %98, align 8
  %99 = load i8, i8* @t, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 61
  br i1 %101, label %102, label %107

102:                                              ; preds = %86
  %103 = load i8*, i8** %6, align 8
  %104 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i8* %103)
  %105 = call signext i8 (...) @gettok()
  store i8 %105, i8* @t, align 1
  %106 = call i32 @expr1(i32 0)
  br label %107

107:                                              ; preds = %102, %86
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  ret %struct.TYPE_5__* %108
}

declare dso_local i64 @isfunc(i8*) #1

declare dso_local i8* @ptr(i8*) #1

declare dso_local i64 @isarray(i8*) #1

declare dso_local i8* @atop(i8*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @stringf(i8*, i8*) #1

declare dso_local i64 @isvolatile(i8*) #1

declare dso_local i64 @isstruct(i8*) #1

declare dso_local i32 @warning(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_5__* @lookup(i8*, i32) #1

declare dso_local %struct.TYPE_5__* @install(i8*, i32*, i64, i32) #1

declare dso_local signext i8 @gettok(...) #1

declare dso_local i32 @expr1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
