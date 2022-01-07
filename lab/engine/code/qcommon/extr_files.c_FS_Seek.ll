; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_files.c_FS_Seek.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_files.c_FS_Seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@fs_searchpaths = common dso_local global i32 0, align 4
@ERR_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Filesystem call made without initialization\00", align 1
@fsh = common dso_local global %struct.TYPE_6__* null, align 8
@qtrue = common dso_local global i64 0, align 8
@PK3_SEEK_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Bad origin in FS_Seek\00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FS_Seek(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* @fs_searchpaths, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ERR_FATAL, align 4
  %19 = call i32 @Com_Error(i32 %18, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %152

20:                                               ; preds = %3
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fsh, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @qtrue, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %134

28:                                               ; preds = %20
  %29 = load i32, i32* @PK3_SEEK_BUFFER_SIZE, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %9, align 8
  %32 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %10, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @FS_FTell(i64 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i64, i64* %6, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %28
  %38 = load i32, i32* %7, align 4
  switch i32 %38, label %55 [
    i32 129, label %39
    i32 130, label %48
    i32 128, label %54
  ]

39:                                               ; preds = %37
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fsh, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = add nsw i64 %44, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %11, align 4
  br label %56

48:                                               ; preds = %37
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* %6, align 8
  %52 = add nsw i64 %50, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %11, align 4
  br label %56

54:                                               ; preds = %37
  br label %55

55:                                               ; preds = %37, %54
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %55, %48, %39
  %57 = load i32, i32* %11, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 0, i32* %11, align 4
  br label %60

60:                                               ; preds = %59, %56
  store i32 128, i32* %7, align 4
  br label %80

61:                                               ; preds = %28
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %62, 129
  br i1 %63, label %64, label %76

64:                                               ; preds = %61
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fsh, align 8
  %66 = load i64, i64* %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = sub nsw i64 %69, %71
  %73 = load i64, i64* %6, align 8
  %74 = add nsw i64 %72, %73
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %11, align 4
  br label %79

76:                                               ; preds = %61
  %77 = load i64, i64* %6, align 8
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %76, %64
  br label %80

80:                                               ; preds = %79, %60
  %81 = load i32, i32* %7, align 4
  switch i32 %81, label %129 [
    i32 128, label %82
    i32 129, label %111
    i32 130, label %111
  ]

82:                                               ; preds = %80
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i64, i64* %6, align 8
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %132

89:                                               ; preds = %82
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fsh, align 8
  %91 = load i64, i64* %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fsh, align 8
  %98 = load i64, i64* %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @unzSetOffset(i32 %96, i32 %101)
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fsh, align 8
  %104 = load i64, i64* %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @unzOpenCurrentFile(i32 %109)
  br label %111

111:                                              ; preds = %80, %80, %89
  br label %112

112:                                              ; preds = %116, %111
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* @PK3_SEEK_BUFFER_SIZE, align 4
  %115 = icmp sgt i32 %113, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %112
  %117 = load i32, i32* @PK3_SEEK_BUFFER_SIZE, align 4
  %118 = load i64, i64* %5, align 8
  %119 = call i32 @FS_Read(i32* %32, i32 %117, i64 %118)
  %120 = load i32, i32* @PK3_SEEK_BUFFER_SIZE, align 4
  %121 = load i32, i32* %11, align 4
  %122 = sub nsw i32 %121, %120
  store i32 %122, i32* %11, align 4
  br label %112

123:                                              ; preds = %112
  %124 = load i32, i32* %11, align 4
  %125 = load i64, i64* %5, align 8
  %126 = call i32 @FS_Read(i32* %32, i32 %124, i64 %125)
  %127 = load i64, i64* %6, align 8
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %132

129:                                              ; preds = %80
  %130 = load i32, i32* @ERR_FATAL, align 4
  %131 = call i32 @Com_Error(i32 %130, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %132

132:                                              ; preds = %129, %123, %86
  %133 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %133)
  br label %152

134:                                              ; preds = %20
  %135 = load i64, i64* %5, align 8
  %136 = call i32* @FS_FileForHandle(i64 %135)
  store i32* %136, i32** %14, align 8
  %137 = load i32, i32* %7, align 4
  switch i32 %137, label %144 [
    i32 130, label %138
    i32 129, label %140
    i32 128, label %142
  ]

138:                                              ; preds = %134
  %139 = load i32, i32* @SEEK_CUR, align 4
  store i32 %139, i32* %8, align 4
  br label %147

140:                                              ; preds = %134
  %141 = load i32, i32* @SEEK_END, align 4
  store i32 %141, i32* %8, align 4
  br label %147

142:                                              ; preds = %134
  %143 = load i32, i32* @SEEK_SET, align 4
  store i32 %143, i32* %8, align 4
  br label %147

144:                                              ; preds = %134
  %145 = load i32, i32* @ERR_FATAL, align 4
  %146 = call i32 @Com_Error(i32 %145, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %147

147:                                              ; preds = %144, %142, %140, %138
  %148 = load i32*, i32** %14, align 8
  %149 = load i64, i64* %6, align 8
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @fseek(i32* %148, i64 %149, i32 %150)
  store i32 %151, i32* %4, align 4
  br label %152

152:                                              ; preds = %147, %132, %17
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local i32 @Com_Error(i32, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @FS_FTell(i64) #1

declare dso_local i32 @unzSetOffset(i32, i32) #1

declare dso_local i32 @unzOpenCurrentFile(i32) #1

declare dso_local i32 @FS_Read(i32*, i32, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32* @FS_FileForHandle(i64) #1

declare dso_local i32 @fseek(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
