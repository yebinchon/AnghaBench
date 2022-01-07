; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_model.c_R_RegisterIQM.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_model.c_R_RegisterIQM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (i8*, i8**)*, i32 (i32, i8*, i8*)*, i32 (i8*)* }
%struct.TYPE_5__ = type { i32, i8* }
%union.anon = type { i32* }

@qfalse = common dso_local global i32 0, align 4
@ri = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@MOD_BAD = common dso_local global i8* null, align 8
@PRINT_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"R_RegisterIQM: couldn't load iqm file %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @R_RegisterIQM(i8* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %union.anon, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %9 = load i32, i32* @qfalse, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i32 (i8*, i8**)*, i32 (i8*, i8**)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ri, i32 0, i32 0), align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast %union.anon* %6 to i8**
  %13 = call i32 %10(i8* %11, i8** %12)
  store i32 %13, i32* %8, align 4
  %14 = bitcast %union.anon* %6 to i32**
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i8*, i8** @MOD_BAD, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  store i32 0, i32* %3, align 4
  br label %46

21:                                               ; preds = %2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = bitcast %union.anon* %6 to i32**
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @R_LoadIQM(%struct.TYPE_5__* %22, i32* %24, i32 %25, i8* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ri, i32 0, i32 2), align 8
  %29 = bitcast %union.anon* %6 to i8**
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 %28(i8* %30)
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %21
  %35 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ri, i32 0, i32 1), align 8
  %36 = load i32, i32* @PRINT_WARNING, align 4
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 %35(i32 %36, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %37)
  %39 = load i8*, i8** @MOD_BAD, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  store i32 0, i32* %3, align 4
  br label %46

42:                                               ; preds = %21
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %34, %17
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @R_LoadIQM(%struct.TYPE_5__*, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
