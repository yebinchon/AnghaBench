; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_SetServerInfo.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_SetServerInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32, i32, i8* }

@.str = private unnamed_addr constant [8 x i8] c"clients\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"hostname\00", align 1
@MAX_NAME_LENGTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"mapname\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"sv_maxclients\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"game\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"gametype\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"nettype\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"minping\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"maxping\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"punkbuster\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"g_humanplayers\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"g_needpass\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i32)* @CL_SetServerInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CL_SetServerInfo(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = icmp ne %struct.TYPE_3__* %7, null
  br i1 %8, label %9, label %83

9:                                                ; preds = %3
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %79

12:                                               ; preds = %9
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @Info_ValueForKey(i8* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %15 = call i8* @atoi(i32 %14)
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 12
  store i8* %15, i8** %17, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 11
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @Info_ValueForKey(i8* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @MAX_NAME_LENGTH, align 4
  %24 = call i32 @Q_strncpyz(i32 %20, i32 %22, i32 %23)
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 10
  %27 = load i32, i32* %26, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @Info_ValueForKey(i8* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* @MAX_NAME_LENGTH, align 4
  %31 = call i32 @Q_strncpyz(i32 %27, i32 %29, i32 %30)
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @Info_ValueForKey(i8* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %34 = call i8* @atoi(i32 %33)
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 9
  store i8* %34, i8** %36, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @Info_ValueForKey(i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %42 = load i32, i32* @MAX_NAME_LENGTH, align 4
  %43 = call i32 @Q_strncpyz(i32 %39, i32 %41, i32 %42)
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @Info_ValueForKey(i8* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %46 = call i8* @atoi(i32 %45)
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 7
  store i8* %46, i8** %48, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @Info_ValueForKey(i8* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %51 = call i8* @atoi(i32 %50)
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 6
  store i8* %51, i8** %53, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @Info_ValueForKey(i8* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %56 = call i8* @atoi(i32 %55)
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 5
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @Info_ValueForKey(i8* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %61 = call i8* @atoi(i32 %60)
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 4
  store i8* %61, i8** %63, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 @Info_ValueForKey(i8* %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %66 = call i8* @atoi(i32 %65)
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 3
  store i8* %66, i8** %68, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = call i32 @Info_ValueForKey(i8* %69, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %71 = call i8* @atoi(i32 %70)
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  store i8* %71, i8** %73, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = call i32 @Info_ValueForKey(i8* %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %76 = call i8* @atoi(i32 %75)
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  br label %79

79:                                               ; preds = %12, %9
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %79, %3
  ret void
}

declare dso_local i8* @atoi(i32) #1

declare dso_local i32 @Info_ValueForKey(i8*, i8*) #1

declare dso_local i32 @Q_strncpyz(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
