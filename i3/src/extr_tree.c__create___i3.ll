; ModuleID = '/home/carl/AnghaBench/i3/src/extr_tree.c__create___i3.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_tree.c__create___i3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i8*, i8*, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@croot = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"__i3\00", align 1
@CT_OUTPUT = common dso_local global i32 0, align 4
@L_OUTPUT = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"[i3 con] pseudo-output __i3\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"adding main content container\0A\00", align 1
@CT_CON = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"content\00", align 1
@L_SPLITH = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"[i3 con] content __i3\00", align 1
@CT_WORKSPACE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"__i3_scratch\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"[i3 con] workspace __i3_scratch\00", align 1
@CF_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* ()* @_create___i3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @_create___i3() #0 {
  %1 = alloca %struct.TYPE_9__*, align 8
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = load i32*, i32** @croot, align 8
  %5 = call %struct.TYPE_9__* @con_new(i32* %4, i32* null)
  store %struct.TYPE_9__* %5, %struct.TYPE_9__** %1, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  %8 = load i8*, i8** %7, align 8
  %9 = call i32 @FREE(i8* %8)
  %10 = call i8* @sstrdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 3
  store i8* %10, i8** %12, align 8
  %13 = load i32, i32* @CT_OUTPUT, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 8
  %16 = load i8*, i8** @L_OUTPUT, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  store i8* %16, i8** %18, align 8
  %19 = load i32*, i32** @croot, align 8
  %20 = call i32 @con_fix_percent(i32* %19)
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %22 = call i32 @x_set_name(%struct.TYPE_9__* %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store i32 1280, i32* %25, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  store i32 1024, i32* %28, align 4
  %29 = call i32 @DLOG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %30 = call %struct.TYPE_9__* @con_new(i32* null, i32* null)
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** %2, align 8
  %31 = load i32, i32* @CT_CON, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 3
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @FREE(i8* %36)
  %38 = call i8* @sstrdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 3
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** @L_SPLITH, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %45 = call i32 @x_set_name(%struct.TYPE_9__* %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %48 = call i32 @con_attach(%struct.TYPE_9__* %46, %struct.TYPE_9__* %47, i32 0)
  %49 = call %struct.TYPE_9__* @con_new(i32* null, i32* null)
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %3, align 8
  %50 = load i32, i32* @CT_WORKSPACE, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  store i32 -1, i32* %54, align 8
  %55 = call i8* @sstrdup(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** @L_SPLITH, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %63 = call i32 @con_attach(%struct.TYPE_9__* %61, %struct.TYPE_9__* %62, i32 0)
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %65 = call i32 @x_set_name(%struct.TYPE_9__* %64, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %66 = load i32, i32* @CF_OUTPUT, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  ret %struct.TYPE_9__* %69
}

declare dso_local %struct.TYPE_9__* @con_new(i32*, i32*) #1

declare dso_local i32 @FREE(i8*) #1

declare dso_local i8* @sstrdup(i8*) #1

declare dso_local i32 @con_fix_percent(i32*) #1

declare dso_local i32 @x_set_name(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @DLOG(i8*) #1

declare dso_local i32 @con_attach(%struct.TYPE_9__*, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
