; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_fs.c_fs__sendfile.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_fs.c_fs__sendfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 }

@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"uv__malloc\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @fs__sendfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fs__sendfile(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %3, align 4
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %4, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %5, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %6, align 4
  store i64 65536, i64* %7, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp ult i64 %35, 65536
  br i1 %36, label %37, label %39

37:                                               ; preds = %1
  %38 = load i64, i64* %5, align 8
  br label %40

39:                                               ; preds = %1
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i64 [ %38, %37 ], [ 65536, %39 ]
  store i64 %41, i64* %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %42 = load i64, i64* %8, align 8
  %43 = call i64 @uv__malloc(i64 %42)
  %44 = inttoptr i64 %43 to i8*
  store i8* %44, i8** %12, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  %49 = call i32 @uv_fatal_error(i32 %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %40
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, -1
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @SEEK_SET, align 4
  %57 = call i32 @_lseeki64(i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %53, %50
  %59 = load i32, i32* %11, align 4
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 -1, i32* %10, align 4
  br label %104

62:                                               ; preds = %58
  br label %63

63:                                               ; preds = %99, %62
  %64 = load i64, i64* %5, align 8
  %65 = icmp ugt i64 %64, 0
  br i1 %65, label %66, label %103

66:                                               ; preds = %63
  %67 = load i32, i32* %3, align 4
  %68 = load i8*, i8** %12, align 8
  %69 = load i64, i64* %5, align 8
  %70 = load i64, i64* %8, align 8
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i64, i64* %5, align 8
  br label %76

74:                                               ; preds = %66
  %75 = load i64, i64* %8, align 8
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i64 [ %73, %72 ], [ %75, %74 ]
  %78 = call i32 @_read(i32 %67, i8* %68, i64 %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %103

82:                                               ; preds = %76
  %83 = load i32, i32* %9, align 4
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 -1, i32* %10, align 4
  br label %103

86:                                               ; preds = %82
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* %5, align 8
  %91 = sub i64 %90, %89
  store i64 %91, i64* %5, align 8
  %92 = load i32, i32* %4, align 4
  %93 = load i8*, i8** %12, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @_write(i32 %92, i8* %93, i32 %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %99

98:                                               ; preds = %87
  store i32 -1, i32* %10, align 4
  br label %103

99:                                               ; preds = %87
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %10, align 4
  br label %63

103:                                              ; preds = %98, %85, %81, %63
  br label %104

104:                                              ; preds = %103, %61
  %105 = load i8*, i8** %12, align 8
  %106 = call i32 @uv__free(i8* %105)
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @SET_REQ_RESULT(%struct.TYPE_12__* %107, i32 %108)
  ret void
}

declare dso_local i64 @uv__malloc(i64) #1

declare dso_local i32 @uv_fatal_error(i32, i8*) #1

declare dso_local i32 @_lseeki64(i32, i32, i32) #1

declare dso_local i32 @_read(i32, i8*, i64) #1

declare dso_local i32 @_write(i32, i8*, i32) #1

declare dso_local i32 @uv__free(i8*) #1

declare dso_local i32 @SET_REQ_RESULT(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
