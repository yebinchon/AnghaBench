; ModuleID = '/home/carl/AnghaBench/htop/linux/extr_LinuxProcessList.c_LinuxProcessList_readStatmFile.c'
source_filename = "/home/carl/AnghaBench/htop/linux/extr_LinuxProcessList.c_LinuxProcessList_readStatmFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i8*, i8*, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8* }

@MAX_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%s/%s/statm\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@PROC_LINE_LENGTH = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i8*)* @LinuxProcessList_readStatmFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LinuxProcessList_readStatmFile(%struct.TYPE_5__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i32, i32* @MAX_NAME, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %20 = load i32, i32* @MAX_NAME, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @xSnprintf(i8* %19, i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %22)
  %24 = load i32, i32* @O_RDONLY, align 4
  %25 = call i32 @open(i8* %19, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %124

29:                                               ; preds = %3
  %30 = load i32, i32* @PROC_LINE_LENGTH, align 4
  %31 = add nsw i32 %30, 1
  %32 = zext i32 %31 to i64
  %33 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %12, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @PROC_LINE_LENGTH, align 4
  %36 = call i32 @xread(i32 %34, i8* %33, i32 %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @close(i32 %37)
  %39 = load i32, i32* %13, align 4
  %40 = icmp slt i32 %39, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %124

42:                                               ; preds = %29
  store i8* %33, i8** %14, align 8
  store i64 0, i64* @errno, align 8
  %43 = load i8*, i8** %14, align 8
  %44 = call i8* @strtol(i8* %43, i8** %14, i32 10)
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i8* %44, i8** %47, align 8
  %48 = load i8*, i8** %14, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 32
  br i1 %51, label %52, label %55

52:                                               ; preds = %42
  %53 = load i8*, i8** %14, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %14, align 8
  br label %55

55:                                               ; preds = %52, %42
  %56 = load i8*, i8** %14, align 8
  %57 = call i8* @strtol(i8* %56, i8** %14, i32 10)
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i8* %57, i8** %60, align 8
  %61 = load i8*, i8** %14, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 32
  br i1 %64, label %65, label %68

65:                                               ; preds = %55
  %66 = load i8*, i8** %14, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %14, align 8
  br label %68

68:                                               ; preds = %65, %55
  %69 = load i8*, i8** %14, align 8
  %70 = call i8* @strtol(i8* %69, i8** %14, i32 10)
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 4
  store i8* %70, i8** %72, align 8
  %73 = load i8*, i8** %14, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 32
  br i1 %76, label %77, label %80

77:                                               ; preds = %68
  %78 = load i8*, i8** %14, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %14, align 8
  br label %80

80:                                               ; preds = %77, %68
  %81 = load i8*, i8** %14, align 8
  %82 = call i8* @strtol(i8* %81, i8** %14, i32 10)
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 3
  store i8* %82, i8** %84, align 8
  %85 = load i8*, i8** %14, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 32
  br i1 %88, label %89, label %92

89:                                               ; preds = %80
  %90 = load i8*, i8** %14, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %14, align 8
  br label %92

92:                                               ; preds = %89, %80
  %93 = load i8*, i8** %14, align 8
  %94 = call i8* @strtol(i8* %93, i8** %14, i32 10)
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 2
  store i8* %94, i8** %96, align 8
  %97 = load i8*, i8** %14, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 32
  br i1 %100, label %101, label %104

101:                                              ; preds = %92
  %102 = load i8*, i8** %14, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %14, align 8
  br label %104

104:                                              ; preds = %101, %92
  %105 = load i8*, i8** %14, align 8
  %106 = call i8* @strtol(i8* %105, i8** %14, i32 10)
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  store i8* %106, i8** %108, align 8
  %109 = load i8*, i8** %14, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 32
  br i1 %112, label %113, label %116

113:                                              ; preds = %104
  %114 = load i8*, i8** %14, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %14, align 8
  br label %116

116:                                              ; preds = %113, %104
  %117 = load i8*, i8** %14, align 8
  %118 = call i8* @strtol(i8* %117, i8** %14, i32 10)
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  store i8* %118, i8** %120, align 8
  %121 = load i64, i64* @errno, align 8
  %122 = icmp eq i64 %121, 0
  %123 = zext i1 %122 to i32
  store i32 %123, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %124

124:                                              ; preds = %116, %41, %28
  %125 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %125)
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @xSnprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @xread(i32, i8*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i8* @strtol(i8*, i8**, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
