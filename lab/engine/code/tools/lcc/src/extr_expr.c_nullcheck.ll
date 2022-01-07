; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_expr.c_nullcheck.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_expr.c_nullcheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }

@needconst = common dso_local global i32 0, align 4
@YYnull = common dso_local global %struct.TYPE_22__* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"_YYnull\00", align 1
@REGISTER = common dso_local global i32 0, align 4
@voidptype = common dso_local global i32 0, align 4
@RIGHT = common dso_local global i32 0, align 4
@OR = common dso_local global i32 0, align 4
@voidtype = common dso_local global i32 0, align 4
@file = common dso_local global i64* null, align 8
@inttype = common dso_local global i32 0, align 4
@lineno = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_21__* (%struct.TYPE_21__*)* @nullcheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_21__* @nullcheck(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %4 = load i32, i32* @needconst, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %79, label %6

6:                                                ; preds = %1
  %7 = load %struct.TYPE_22__*, %struct.TYPE_22__** @YYnull, align 8
  %8 = icmp ne %struct.TYPE_22__* %7, null
  br i1 %8, label %9, label %79

9:                                                ; preds = %6
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @isptr(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %79

15:                                               ; preds = %9
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %17 = call %struct.TYPE_21__* @value(%struct.TYPE_21__* %16)
  store %struct.TYPE_21__* %17, %struct.TYPE_21__** %2, align 8
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** @YYnull, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @strcmp(i32 %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %69

23:                                               ; preds = %15
  %24 = load i32, i32* @REGISTER, align 4
  %25 = load i32, i32* @voidptype, align 4
  %26 = call i32 @temporary(i32 %24, i32 %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* @RIGHT, align 4
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @OR, align 4
  %32 = load i32, i32* @voidtype, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %35 = load i32, i32* @voidptype, align 4
  %36 = call i32 @cast(%struct.TYPE_21__* %34, i32 %35)
  %37 = call i32 @asgn(i32 %33, i32 %36)
  %38 = call %struct.TYPE_21__* @cond(i32 %37)
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** @YYnull, align 8
  %40 = load i32, i32* @voidtype, align 4
  %41 = load i64*, i64** @file, align 8
  %42 = icmp ne i64* %41, null
  br i1 %42, label %43, label %56

43:                                               ; preds = %23
  %44 = load i64*, i64** @file, align 8
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load i64*, i64** @file, align 8
  %49 = call %struct.TYPE_18__* @mkstr(i64* %48)
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @idtree(i32 %53)
  %55 = call i32 @pointer(i32 %54)
  br label %59

56:                                               ; preds = %43, %23
  %57 = load i32, i32* @voidptype, align 4
  %58 = call i32 @cnsttree(i32 %57, i64 0)
  br label %59

59:                                               ; preds = %56, %47
  %60 = phi i32 [ %55, %47 ], [ %58, %56 ]
  %61 = load i32, i32* @inttype, align 4
  %62 = load i64, i64* @lineno, align 8
  %63 = call i32 @cnsttree(i32 %61, i64 %62)
  %64 = call i32 @vcall(%struct.TYPE_22__* %39, i32 %40, i32 %60, i32 %63, i32* null)
  %65 = call %struct.TYPE_21__* @tree(i32 %31, i32 %32, %struct.TYPE_21__* %38, i32 %64)
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @idtree(i32 %66)
  %68 = call %struct.TYPE_21__* @tree(i32 %27, i32 %30, %struct.TYPE_21__* %65, i32 %67)
  store %struct.TYPE_21__* %68, %struct.TYPE_21__** %2, align 8
  br label %78

69:                                               ; preds = %15
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** @YYnull, align 8
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %75 = load i32, i32* @inttype, align 4
  %76 = call i32 @cnsttree(i32 %75, i64 0)
  %77 = call %struct.TYPE_21__* @nullcall(i32 %72, %struct.TYPE_22__* %73, %struct.TYPE_21__* %74, i32 %76)
  store %struct.TYPE_21__* %77, %struct.TYPE_21__** %2, align 8
  br label %78

78:                                               ; preds = %69, %59
  br label %79

79:                                               ; preds = %78, %9, %6, %1
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  ret %struct.TYPE_21__* %80
}

declare dso_local i64 @isptr(i32) #1

declare dso_local %struct.TYPE_21__* @value(%struct.TYPE_21__*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @temporary(i32, i32) #1

declare dso_local %struct.TYPE_21__* @tree(i32, i32, %struct.TYPE_21__*, i32) #1

declare dso_local %struct.TYPE_21__* @cond(i32) #1

declare dso_local i32 @asgn(i32, i32) #1

declare dso_local i32 @cast(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @vcall(%struct.TYPE_22__*, i32, i32, i32, i32*) #1

declare dso_local i32 @pointer(i32) #1

declare dso_local i32 @idtree(i32) #1

declare dso_local %struct.TYPE_18__* @mkstr(i64*) #1

declare dso_local i32 @cnsttree(i32, i64) #1

declare dso_local %struct.TYPE_21__* @nullcall(i32, %struct.TYPE_22__*, %struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
