; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_cin.c_CIN_StopCinematic.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_cin.c_CIN_StopCinematic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@MAX_VIDEO_HANDLES = common dso_local global i32 0, align 4
@cinTable = common dso_local global %struct.TYPE_4__* null, align 8
@FMV_EOF = common dso_local global i64 0, align 8
@currentHandle = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"trFMV::stop(), closing %s\0A\00", align 1
@clc = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@CA_CINEMATIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CIN_StopCinematic(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @MAX_VIDEO_HANDLES, align 4
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @FMV_EOF, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %10, %6, %1
  %20 = load i64, i64* @FMV_EOF, align 8
  store i64 %20, i64* %2, align 8
  br label %64

21:                                               ; preds = %10
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  store i64 %23, i64* @currentHandle, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %25 = load i64, i64* @currentHandle, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %31 = load i64, i64* @currentHandle, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %21
  %37 = load i64, i64* @FMV_EOF, align 8
  store i64 %37, i64* %2, align 8
  br label %64

38:                                               ; preds = %21
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %40 = load i64, i64* @currentHandle, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %38
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @clc, i32 0, i32 0), align 8
  %47 = load i64, i64* @CA_CINEMATIC, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %51 = load i64, i64* @currentHandle, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %2, align 8
  br label %64

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55, %38
  %57 = load i64, i64* @FMV_EOF, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %59 = load i64, i64* @currentHandle, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i64 %57, i64* %61, align 8
  %62 = call i32 (...) @RoQShutdown()
  %63 = load i64, i64* @FMV_EOF, align 8
  store i64 %63, i64* %2, align 8
  br label %64

64:                                               ; preds = %56, %49, %36, %19
  %65 = load i64, i64* %2, align 8
  ret i64 %65
}

declare dso_local i32 @Com_DPrintf(i8*, i32) #1

declare dso_local i32 @RoQShutdown(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
