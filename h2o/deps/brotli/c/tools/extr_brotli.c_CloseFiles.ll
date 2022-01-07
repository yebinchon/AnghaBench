; ModuleID = '/home/carl/AnghaBench/h2o/deps/brotli/c/tools/extr_brotli.c_CloseFiles.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/brotli/c/tools/extr_brotli.c_CloseFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i64, i64, i64, i64, i32 }

@BROTLI_TRUE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"fclose failed [%s]: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@BROTLI_FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i64)* @CloseFiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CloseFiles(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* @BROTLI_TRUE, align 8
  store i64 %6, i64* %5, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %69, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %69

16:                                               ; preds = %11
  %17 = load i64, i64* %4, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %16
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @unlink(i64 %27)
  br label %29

29:                                               ; preds = %24, %19, %16
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i64 @fclose(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %29
  %36 = load i64, i64* %4, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load i32, i32* @stderr, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = call i8* @PrintablePath(i64 %42)
  %44 = load i32, i32* @errno, align 4
  %45 = call i8* @strerror(i32 %44)
  %46 = call i32 @fprintf(i32 %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %43, i8* %45)
  br label %47

47:                                               ; preds = %38, %35
  %48 = load i64, i64* @BROTLI_FALSE, align 8
  store i64 %48, i64* %5, align 8
  br label %49

49:                                               ; preds = %47, %29
  %50 = load i64, i64* %4, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %49
  %53 = load i64, i64* %5, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %52
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 5
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @CopyStat(i64 %63, i64 %66)
  br label %68

68:                                               ; preds = %60, %55, %52, %49
  br label %69

69:                                               ; preds = %68, %11, %2
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %95

74:                                               ; preds = %69
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = call i64 @fclose(i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %74
  %81 = load i64, i64* %5, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %80
  %84 = load i32, i32* @stderr, align 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = call i8* @PrintablePath(i64 %87)
  %89 = load i32, i32* @errno, align 4
  %90 = call i8* @strerror(i32 %89)
  %91 = call i32 @fprintf(i32 %84, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %88, i8* %90)
  br label %92

92:                                               ; preds = %83, %80
  %93 = load i64, i64* @BROTLI_FALSE, align 8
  store i64 %93, i64* %5, align 8
  br label %94

94:                                               ; preds = %92, %74
  br label %95

95:                                               ; preds = %94, %69
  %96 = load i64, i64* %4, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %95
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %98
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @unlink(i64 %111)
  br label %113

113:                                              ; preds = %108, %103, %98, %95
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  store i32* null, i32** %115, align 8
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  store i32* null, i32** %117, align 8
  %118 = load i64, i64* %5, align 8
  ret i64 %118
}

declare dso_local i32 @unlink(i64) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @PrintablePath(i64) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @CopyStat(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
