; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_files.c_FS_FOpenFileRead.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_files.c_FS_FOpenFileRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_4__* }

@fs_searchpaths = common dso_local global %struct.TYPE_4__* null, align 8
@ERR_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Filesystem call made without initialization\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"autoexec.cfg\00", align 1
@Q3CONFIG_CFG = common dso_local global i8* null, align 8
@qfalse = common dso_local global i32 0, align 4
@missingFiles = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FS_FOpenFileRead(i8* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @fs_searchpaths, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ERR_FATAL, align 4
  %15 = call i32 @Com_Error(i32 %14, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %3
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8
  %22 = load i8*, i8** @Q3CONFIG_CFG, align 8
  %23 = call i32 @strcmp(i8* %21, i8* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br label %26

26:                                               ; preds = %20, %16
  %27 = phi i1 [ true, %16 ], [ %25, %20 ]
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %10, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @fs_searchpaths, align 8
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %8, align 8
  br label %30

30:                                               ; preds = %68, %26
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  br i1 %32, label %33, label %72

33:                                               ; preds = %30
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %68

42:                                               ; preds = %36, %33
  %43 = load i8*, i8** %5, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %45 = load i64*, i64** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @qfalse, align 4
  %48 = call i64 @FS_FOpenFileReadDir(i8* %43, %struct.TYPE_4__* %44, i64* %45, i32 %46, i32 %47)
  store i64 %48, i64* %9, align 8
  %49 = load i64*, i64** %6, align 8
  %50 = icmp eq i64* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %42
  %52 = load i64, i64* %9, align 8
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i64, i64* %9, align 8
  store i64 %55, i64* %4, align 8
  br label %78

56:                                               ; preds = %51
  br label %67

57:                                               ; preds = %42
  %58 = load i64, i64* %9, align 8
  %59 = icmp sge i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load i64*, i64** %6, align 8
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i64, i64* %9, align 8
  store i64 %65, i64* %4, align 8
  br label %78

66:                                               ; preds = %60, %57
  br label %67

67:                                               ; preds = %66, %56
  br label %68

68:                                               ; preds = %67, %41
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  store %struct.TYPE_4__* %71, %struct.TYPE_4__** %8, align 8
  br label %30

72:                                               ; preds = %30
  %73 = load i64*, i64** %6, align 8
  %74 = icmp ne i64* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load i64*, i64** %6, align 8
  store i64 0, i64* %76, align 8
  store i64 -1, i64* %4, align 8
  br label %78

77:                                               ; preds = %72
  store i64 0, i64* %4, align 8
  br label %78

78:                                               ; preds = %77, %75, %64, %54
  %79 = load i64, i64* %4, align 8
  ret i64 %79
}

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @FS_FOpenFileReadDir(i8*, %struct.TYPE_4__*, i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
