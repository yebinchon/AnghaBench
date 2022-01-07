; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Hunk_Log.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Hunk_Log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32, %struct.TYPE_3__* }

@logfile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"\0D\0A================\0D\0AHunk log\0D\0A================\0D\0A\00", align 1
@hunkblocks = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"%d Hunk memory\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"%d hunk blocks\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Hunk_Log() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = alloca [4096 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @logfile, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = call i32 (...) @FS_Initialized()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7, %0
  br label %54

11:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %12 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  %13 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %12, i32 4096, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %14 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  %15 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  %16 = call i32 @strlen(i8* %15)
  %17 = load i32, i32* @logfile, align 4
  %18 = call i32 @FS_Write(i8* %14, i32 %16, i32 %17)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hunkblocks, align 8
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %1, align 8
  br label %20

20:                                               ; preds = %33, %11
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %22 = icmp ne %struct.TYPE_3__* %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %20
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %23
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  store %struct.TYPE_3__* %36, %struct.TYPE_3__** %1, align 8
  br label %20

37:                                               ; preds = %20
  %38 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  %39 = load i32, i32* %3, align 4
  %40 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %38, i32 4096, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  %42 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  %43 = call i32 @strlen(i8* %42)
  %44 = load i32, i32* @logfile, align 4
  %45 = call i32 @FS_Write(i8* %41, i32 %43, i32 %44)
  %46 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  %47 = load i32, i32* %4, align 4
  %48 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %46, i32 4096, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  %50 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  %51 = call i32 @strlen(i8* %50)
  %52 = load i32, i32* @logfile, align 4
  %53 = call i32 @FS_Write(i8* %49, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %37, %10
  ret void
}

declare dso_local i32 @FS_Initialized(...) #1

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @FS_Write(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
