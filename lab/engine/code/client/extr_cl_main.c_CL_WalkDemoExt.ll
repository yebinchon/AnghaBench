; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_WalkDemoExt.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_WalkDemoExt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@MAX_OSPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"demos/%s.%s%d\00", align 1
@DEMOEXT = common dso_local global i32 0, align 4
@com_protocol = common dso_local global %struct.TYPE_3__* null, align 8
@qtrue = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Demo file: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Not found: %s\0A\00", align 1
@demo_protocols = common dso_local global i64* null, align 8
@com_legacyprotocol = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32*)* @CL_WalkDemoExt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CL_WalkDemoExt(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32*, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = load i32, i32* @MAX_OSPATH, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* @DEMOEXT, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @com_protocol, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @Com_sprintf(i8* %10, i32 %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %12, i32 %13, i64 %16)
  %18 = load i8*, i8** %6, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* @qtrue, align 4
  %21 = call i32 @FS_FOpenFileRead(i8* %18, i32* %19, i32 %20)
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %3
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @Com_Printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @com_protocol, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %4, align 4
  br label %87

32:                                               ; preds = %3
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @Com_Printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %83, %52, %32
  %36 = load i64*, i64** @demo_protocols, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %86

42:                                               ; preds = %35
  %43 = load i64*, i64** @demo_protocols, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @com_protocol, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %35

53:                                               ; preds = %42
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* @MAX_OSPATH, align 4
  %56 = load i8*, i8** %5, align 8
  %57 = load i32, i32* @DEMOEXT, align 4
  %58 = load i64*, i64** @demo_protocols, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @Com_sprintf(i8* %54, i32 %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %56, i32 %57, i64 %62)
  %64 = load i8*, i8** %6, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* @qtrue, align 4
  %67 = call i32 @FS_FOpenFileRead(i8* %64, i32* %65, i32 %66)
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %53
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 @Com_Printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %72)
  %74 = load i64*, i64** @demo_protocols, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %4, align 4
  br label %87

80:                                               ; preds = %53
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 @Com_Printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %81)
  br label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %35

86:                                               ; preds = %35
  store i32 -1, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %71, %25
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i8*, i32, i64) #1

declare dso_local i32 @FS_FOpenFileRead(i8*, i32*, i32) #1

declare dso_local i32 @Com_Printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
