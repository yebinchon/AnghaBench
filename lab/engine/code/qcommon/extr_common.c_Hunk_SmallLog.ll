; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Hunk_SmallLog.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Hunk_SmallLog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i32, i64, %struct.TYPE_3__* }

@logfile = common dso_local global i32 0, align 4
@hunkblocks = common dso_local global %struct.TYPE_3__* null, align 8
@qfalse = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"\0D\0A================\0D\0AHunk Small log\0D\0A================\0D\0A\00", align 1
@qtrue = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"%d Hunk memory\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"%d hunk blocks\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Hunk_SmallLog() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca [4096 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @logfile, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = call i32 (...) @FS_Initialized()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %0
  br label %120

13:                                               ; preds = %9
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hunkblocks, align 8
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %1, align 8
  br label %15

15:                                               ; preds = %22, %13
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %17 = icmp ne %struct.TYPE_3__* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load i64, i64* @qfalse, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 4
  store i64 %19, i64* %21, align 8
  br label %22

22:                                               ; preds = %18
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 5
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %1, align 8
  br label %15

26:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %27 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %28 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %27, i32 4096, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %29 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %30 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %31 = call i32 @strlen(i8* %30)
  %32 = load i32, i32* @logfile, align 4
  %33 = call i32 @FS_Write(i8* %29, i32 %31, i32 %32)
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hunkblocks, align 8
  store %struct.TYPE_3__* %34, %struct.TYPE_3__** %1, align 8
  br label %35

35:                                               ; preds = %99, %26
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %37 = icmp ne %struct.TYPE_3__* %36, null
  br i1 %37, label %38, label %103

38:                                               ; preds = %35
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %99

44:                                               ; preds = %38
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %5, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 5
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  store %struct.TYPE_3__* %50, %struct.TYPE_3__** %2, align 8
  br label %51

51:                                               ; preds = %87, %44
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %53 = icmp ne %struct.TYPE_3__* %52, null
  br i1 %53, label %54, label %91

54:                                               ; preds = %51
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %87

63:                                               ; preds = %54
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @Q_stricmp(i32 %66, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %87

73:                                               ; preds = %63
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %4, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %5, align 4
  %84 = load i64, i64* @qtrue, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 4
  store i64 %84, i64* %86, align 8
  br label %87

87:                                               ; preds = %73, %72, %62
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 5
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  store %struct.TYPE_3__* %90, %struct.TYPE_3__** %2, align 8
  br label %51

91:                                               ; preds = %51
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %4, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %91, %43
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 5
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  store %struct.TYPE_3__* %102, %struct.TYPE_3__** %1, align 8
  br label %35

103:                                              ; preds = %35
  %104 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %105 = load i32, i32* %4, align 4
  %106 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %104, i32 4096, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  %107 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %108 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %109 = call i32 @strlen(i8* %108)
  %110 = load i32, i32* @logfile, align 4
  %111 = call i32 @FS_Write(i8* %107, i32 %109, i32 %110)
  %112 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %113 = load i32, i32* %6, align 4
  %114 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %112, i32 4096, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %113)
  %115 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %116 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %117 = call i32 @strlen(i8* %116)
  %118 = load i32, i32* @logfile, align 4
  %119 = call i32 @FS_Write(i8* %115, i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %103, %12
  ret void
}

declare dso_local i32 @FS_Initialized(...) #1

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @FS_Write(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @Q_stricmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
