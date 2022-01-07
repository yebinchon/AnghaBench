; ModuleID = '/home/carl/AnghaBench/htop/solaris/extr_SolarisProcess.c_SolarisProcess_writeField.c'
source_filename = "/home/carl/AnghaBench/htop/solaris/extr_SolarisProcess.c_SolarisProcess_writeField.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CRT_colors = common dso_local global i32* null, align 8
@DEFAULT_COLOR = common dso_local global i64 0, align 8
@Process_pidFormat = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%-*s \00", align 1
@ZONENAME_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SolarisProcess_writeField(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca [256 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = bitcast i32* %11 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %7, align 8
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 255
  store i8 0, i8* %13, align 1
  %14 = load i32*, i32** @CRT_colors, align 8
  %15 = load i64, i64* @DEFAULT_COLOR, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  store i32 255, i32* %10, align 4
  %18 = load i64, i64* %6, align 8
  %19 = trunc i64 %18 to i32
  switch i32 %19, label %109 [
    i32 128, label %20
    i32 131, label %30
    i32 130, label %40
    i32 133, label %50
    i32 136, label %60
    i32 129, label %70
    i32 134, label %79
    i32 132, label %89
    i32 135, label %99
  ]

20:                                               ; preds = %3
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @Process_pidFormat, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, i32, i8*, i32, ...) @xSnprintf(i8* %21, i32 %22, i8* %25, i32 %28)
  br label %114

30:                                               ; preds = %3
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @Process_pidFormat, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, i32, i8*, i32, ...) @xSnprintf(i8* %31, i32 %32, i8* %35, i32 %38)
  br label %114

40:                                               ; preds = %3
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @Process_pidFormat, align 4
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, i32, i8*, i32, ...) @xSnprintf(i8* %41, i32 %42, i8* %45, i32 %48)
  br label %114

50:                                               ; preds = %3
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @Process_pidFormat, align 4
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8*, i32, i8*, i32, ...) @xSnprintf(i8* %51, i32 %52, i8* %55, i32 %58)
  br label %114

60:                                               ; preds = %3
  %61 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @Process_pidFormat, align 4
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to i8*
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i8*, i32, i8*, i32, ...) @xSnprintf(i8* %61, i32 %62, i8* %65, i32 %68)
  br label %114

70:                                               ; preds = %3
  %71 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @ZONENAME_MAX, align 4
  %74 = sdiv i32 %73, 4
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i8*, i32, i8*, i32, ...) @xSnprintf(i8* %71, i32 %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %77)
  br label %114

79:                                               ; preds = %3
  %80 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @Process_pidFormat, align 4
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to i8*
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i8*, i32, i8*, i32, ...) @xSnprintf(i8* %80, i32 %81, i8* %84, i32 %87)
  br label %114

89:                                               ; preds = %3
  %90 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @Process_pidFormat, align 4
  %93 = sext i32 %92 to i64
  %94 = inttoptr i64 %93 to i8*
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i8*, i32, i8*, i32, ...) @xSnprintf(i8* %90, i32 %91, i8* %94, i32 %97)
  br label %114

99:                                               ; preds = %3
  %100 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @Process_pidFormat, align 4
  %103 = sext i32 %102 to i64
  %104 = inttoptr i64 %103 to i8*
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i8*, i32, i8*, i32, ...) @xSnprintf(i8* %100, i32 %101, i8* %104, i32 %107)
  br label %114

109:                                              ; preds = %3
  %110 = load i32*, i32** %4, align 8
  %111 = load i32*, i32** %5, align 8
  %112 = load i64, i64* %6, align 8
  %113 = call i32 @Process_writeField(i32* %110, i32* %111, i64 %112)
  br label %119

114:                                              ; preds = %99, %89, %79, %70, %60, %50, %40, %30, %20
  %115 = load i32*, i32** %5, align 8
  %116 = load i32, i32* %9, align 4
  %117 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %118 = call i32 @RichString_append(i32* %115, i32 %116, i8* %117)
  br label %119

119:                                              ; preds = %114, %109
  ret void
}

declare dso_local i32 @xSnprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @Process_writeField(i32*, i32*, i64) #1

declare dso_local i32 @RichString_append(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
