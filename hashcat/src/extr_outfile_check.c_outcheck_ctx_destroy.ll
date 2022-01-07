; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_outfile_check.c_outcheck_ctx_destroy.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_outfile_check.c_outcheck_ctx_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__*, %struct.TYPE_9__*, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@ENOTEMPTY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @outcheck_ctx_destroy(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 2
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** %3, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %4, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %5, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %65

20:                                               ; preds = %1
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %65

26:                                               ; preds = %20
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @rmdir(i32 %29)
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %52

32:                                               ; preds = %26
  %33 = load i64, i64* @errno, align 8
  %34 = load i64, i64* @ENOENT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %51

37:                                               ; preds = %32
  %38 = load i64, i64* @errno, align 8
  %39 = load i64, i64* @ENOTEMPTY, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %50

42:                                               ; preds = %37
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* @errno, align 8
  %48 = call i32 @strerror(i64 %47)
  %49 = call i32 @event_log_error(%struct.TYPE_11__* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %48)
  br label %50

50:                                               ; preds = %42, %41
  br label %51

51:                                               ; preds = %50, %36
  br label %52

52:                                               ; preds = %51, %26
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @hcfree(i32 %60)
  br label %62

62:                                               ; preds = %57, %52
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %64 = call i32 @memset(%struct.TYPE_9__* %63, i32 0, i32 8)
  br label %65

65:                                               ; preds = %62, %25, %19
  ret void
}

declare dso_local i32 @rmdir(i32) #1

declare dso_local i32 @event_log_error(%struct.TYPE_11__*, i8*, i32, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @hcfree(i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
