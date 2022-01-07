; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_InitDownloads.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_InitDownloads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i8*, i64*, i64*, i32 }

@cl_allowDownload = common dso_local global %struct.TYPE_4__* null, align 8
@DLF_ENABLE = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [180 x i8] c"\0AWARNING: You are missing some files referenced by the server:\0A%sYou might not be able to join the game\0AGo to the setting menu to turn on autodownload, or get the file elsewhere\0A\0A\00", align 1
@clc = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@qtrue = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Need paks: %s\0A\00", align 1
@CA_CONNECTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"cl_downloadName\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_InitDownloads() #0 {
  %1 = alloca [1024 x i8], align 16
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cl_allowDownload, align 8
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @DLF_ENABLE, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %0
  %9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %10 = load i32, i32* @qfalse, align 4
  %11 = call i64 @FS_ComparePaks(i8* %9, i32 1024, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %15 = call i32 @Com_Printf(i8* getelementptr inbounds ([180 x i8], [180 x i8]* @.str, i64 0, i64 0), i8* %14)
  br label %16

16:                                               ; preds = %13, %8
  br label %36

17:                                               ; preds = %0
  %18 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @clc, i32 0, i32 0), align 8
  %19 = load i32, i32* @qtrue, align 4
  %20 = call i64 @FS_ComparePaks(i8* %18, i32 8, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %17
  %23 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @clc, i32 0, i32 0), align 8
  %24 = call i32 @Com_Printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @clc, i32 0, i32 0), align 8
  %26 = load i8, i8* %25, align 1
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load i32, i32* @CA_CONNECTED, align 4
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @clc, i32 0, i32 3), align 8
  %30 = load i64*, i64** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @clc, i32 0, i32 1), align 8
  store i64 0, i64* %30, align 8
  %31 = load i64*, i64** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @clc, i32 0, i32 2), align 8
  store i64 0, i64* %31, align 8
  %32 = call i32 @Cvar_Set(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %33 = call i32 (...) @CL_NextDownload()
  br label %38

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %34, %17
  br label %36

36:                                               ; preds = %35, %16
  %37 = call i32 (...) @CL_DownloadsComplete()
  br label %38

38:                                               ; preds = %36, %28
  ret void
}

declare dso_local i64 @FS_ComparePaks(i8*, i32, i32) #1

declare dso_local i32 @Com_Printf(i8*, i8*) #1

declare dso_local i32 @Cvar_Set(i8*, i8*) #1

declare dso_local i32 @CL_NextDownload(...) #1

declare dso_local i32 @CL_DownloadsComplete(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
