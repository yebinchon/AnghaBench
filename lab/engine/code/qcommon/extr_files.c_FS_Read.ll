; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_files.c_FS_Read.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_files.c_FS_Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@fs_searchpaths = common dso_local global i32 0, align 4
@ERR_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Filesystem call made without initialization\00", align 1
@fs_readCount = common dso_local global i32 0, align 4
@fsh = common dso_local global %struct.TYPE_6__* null, align 8
@qfalse = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"FS_Read: -1 bytes read\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FS_Read(i8* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %13 = load i32, i32* @fs_searchpaths, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ERR_FATAL, align 4
  %17 = call i32 @Com_Error(i32 %16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %3
  %19 = load i64, i64* %7, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %90

22:                                               ; preds = %18
  %23 = load i8*, i8** %5, align 8
  %24 = bitcast i8* %23 to i32*
  store i32* %24, i32** %11, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @fs_readCount, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* @fs_readCount, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fsh, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @qfalse, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %79

35:                                               ; preds = %22
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %37

37:                                               ; preds = %69, %35
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %77

40:                                               ; preds = %37
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %8, align 4
  %42 = load i32*, i32** %11, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fsh, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @fread(i32* %42, i32 1, i32 %43, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %40
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  store i32 1, i32* %12, align 4
  br label %62

58:                                               ; preds = %54
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %9, align 4
  %61 = sub nsw i32 %59, %60
  store i32 %61, i32* %4, align 4
  br label %90

62:                                               ; preds = %57
  br label %63

63:                                               ; preds = %62, %40
  %64 = load i32, i32* %10, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* @ERR_FATAL, align 4
  %68 = call i32 @Com_Error(i32 %67, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %9, align 4
  %72 = sub nsw i32 %71, %70
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32*, i32** %11, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32* %76, i32** %11, align 8
  br label %37

77:                                               ; preds = %37
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %4, align 4
  br label %90

79:                                               ; preds = %22
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fsh, align 8
  %81 = load i64, i64* %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i8*, i8** %5, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @unzReadCurrentFile(i32 %86, i8* %87, i32 %88)
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %79, %77, %58, %21
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local i32 @fread(i32*, i32, i32, i32) #1

declare dso_local i32 @unzReadCurrentFile(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
