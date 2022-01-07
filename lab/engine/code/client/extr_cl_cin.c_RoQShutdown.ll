; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_cin.c_RoQShutdown.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_cin.c_RoQShutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64*, i64, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@cinTable = common dso_local global %struct.TYPE_4__* null, align 8
@currentHandle = common dso_local global i64 0, align 8
@FMV_IDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"finished cinematic\0A\00", align 1
@CA_DISCONNECTED = common dso_local global i32 0, align 4
@clc = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"nextmap\00", align 1
@EXEC_APPEND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CL_handle = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @RoQShutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RoQShutdown() #0 {
  %1 = alloca i8*, align 8
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %3 = load i64, i64* @currentHandle, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i64 %3
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  br label %70

9:                                                ; preds = %0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %11 = load i64, i64* @currentHandle, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @FMV_IDLE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  br label %70

18:                                               ; preds = %9
  %19 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %20 = load i64, i64* @FMV_IDLE, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %22 = load i64, i64* @currentHandle, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i64 %20, i64* %24, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %26 = load i64, i64* @currentHandle, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %18
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %33 = load i64, i64* @currentHandle, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @FS_FCloseFile(i64 %36)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %39 = load i64, i64* @currentHandle, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %31, %18
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %44 = load i64, i64* @currentHandle, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %42
  %50 = load i32, i32* @CA_DISCONNECTED, align 4
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @clc, i32 0, i32 0), align 4
  %51 = call i8* @Cvar_VariableString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i8* %51, i8** %1, align 8
  %52 = load i8*, i8** %1, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load i32, i32* @EXEC_APPEND, align 4
  %58 = load i8*, i8** %1, align 8
  %59 = call i32 @va(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %58)
  %60 = call i32 @Cbuf_ExecuteText(i32 %57, i32 %59)
  %61 = call i32 @Cvar_Set(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  br label %62

62:                                               ; preds = %56, %49
  store i32 -1, i32* @CL_handle, align 4
  br label %63

63:                                               ; preds = %62, %42
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %65 = load i64, i64* @currentHandle, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 0
  store i64 0, i64* %69, align 8
  store i64 -1, i64* @currentHandle, align 8
  br label %70

70:                                               ; preds = %63, %17, %8
  ret void
}

declare dso_local i32 @Com_DPrintf(i8*) #1

declare dso_local i32 @FS_FCloseFile(i64) #1

declare dso_local i8* @Cvar_VariableString(i8*) #1

declare dso_local i32 @Cbuf_ExecuteText(i32, i32) #1

declare dso_local i32 @va(i8*, i8*) #1

declare dso_local i32 @Cvar_Set(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
