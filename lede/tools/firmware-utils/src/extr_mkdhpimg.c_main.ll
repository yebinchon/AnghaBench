; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkdhpimg.c_main.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkdhpimg.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@progname = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@DHP_HEADER_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** @progname, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 3
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 (...) @usage()
  br label %19

19:                                               ; preds = %17, %2
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 8
  %23 = load i32, i32* @O_RDONLY, align 4
  %24 = call i32 (i8*, i32, ...) @open(i8* %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load i32, i32* @EXIT_FAILURE, align 4
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 (i32, i8*, ...) @err(i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %26, %19
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @fstat(i32 %33, %struct.stat* %6)
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i32, i32* @EXIT_FAILURE, align 4
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 (i32, i8*, ...) @err(i32 %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %36, %32
  %43 = load i64, i64* @DHP_HEADER_SIZE, align 8
  %44 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %43, %45
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i32* @malloc(i64 %47)
  store i32* %48, i32** %11, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32, i32* @EXIT_FAILURE, align 4
  %52 = call i32 (i32, i8*, ...) @err(i32 %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %42
  %54 = load i32*, i32** %11, align 8
  %55 = load i64, i64* @DHP_HEADER_SIZE, align 8
  %56 = call i32 @memset(i32* %54, i32 0, i64 %55)
  %57 = load i32*, i32** %11, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 98, i32* %58, align 4
  %59 = load i32*, i32** %11, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  store i32 103, i32* %60, align 4
  %61 = load i32*, i32** %11, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  store i32 110, i32* %62, align 4
  %63 = load i32*, i32** %11, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 11
  store i32 177, i32* %64, align 4
  %65 = load i64, i64* %7, align 8
  %66 = lshr i64 %65, 24
  %67 = and i64 %66, 255
  %68 = trunc i64 %67 to i32
  %69 = load i32*, i32** %11, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 12
  store i32 %68, i32* %70, align 4
  %71 = load i64, i64* %7, align 8
  %72 = lshr i64 %71, 16
  %73 = and i64 %72, 255
  %74 = trunc i64 %73 to i32
  %75 = load i32*, i32** %11, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 13
  store i32 %74, i32* %76, align 4
  %77 = load i64, i64* %7, align 8
  %78 = lshr i64 %77, 8
  %79 = and i64 %78, 255
  %80 = trunc i64 %79 to i32
  %81 = load i32*, i32** %11, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 14
  store i32 %80, i32* %82, align 4
  %83 = load i64, i64* %7, align 8
  %84 = and i64 %83, 255
  %85 = trunc i64 %84 to i32
  %86 = load i32*, i32** %11, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 15
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32*, i32** %11, align 8
  %90 = load i64, i64* @DHP_HEADER_SIZE, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @read(i32 %88, i32* %91, i64 %93)
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @close(i32 %95)
  %97 = load i32*, i32** %11, align 8
  %98 = load i64, i64* %7, align 8
  %99 = call i32 @buffalo_crc(i32* %97, i64 %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = ashr i32 %100, 24
  %102 = and i32 %101, 255
  %103 = load i32*, i32** %11, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 16
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* %8, align 4
  %106 = ashr i32 %105, 16
  %107 = and i32 %106, 255
  %108 = load i32*, i32** %11, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 17
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %8, align 4
  %111 = ashr i32 %110, 8
  %112 = and i32 %111, 255
  %113 = load i32*, i32** %11, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 18
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* %8, align 4
  %116 = and i32 %115, 255
  %117 = load i32*, i32** %11, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 19
  store i32 %116, i32* %118, align 4
  %119 = load i8**, i8*** %5, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i64 2
  %121 = load i8*, i8** %120, align 8
  %122 = load i32, i32* @O_WRONLY, align 4
  %123 = load i32, i32* @O_CREAT, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @O_TRUNC, align 4
  %126 = or i32 %124, %125
  %127 = call i32 (i8*, i32, ...) @open(i8* %121, i32 %126, i32 420)
  store i32 %127, i32* %10, align 4
  %128 = icmp eq i32 %127, -1
  br i1 %128, label %129, label %135

129:                                              ; preds = %53
  %130 = load i32, i32* @EXIT_FAILURE, align 4
  %131 = load i8**, i8*** %5, align 8
  %132 = getelementptr inbounds i8*, i8** %131, i64 2
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 (i32, i8*, ...) @err(i32 %130, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %133)
  br label %135

135:                                              ; preds = %129, %53
  %136 = load i32, i32* %10, align 4
  %137 = load i32*, i32** %11, align 8
  %138 = load i64, i64* %7, align 8
  %139 = call i32 @write(i32 %136, i32* %137, i64 %138)
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @close(i32 %140)
  %142 = load i32*, i32** %11, align 8
  %143 = call i32 @free(i32* %142)
  %144 = load i32, i32* @EXIT_SUCCESS, align 4
  ret i32 %144
}

declare dso_local i32 @usage(...) #1

declare dso_local i32 @open(i8*, i32, ...) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @read(i32, i32*, i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @buffalo_crc(i32*, i64) #1

declare dso_local i32 @write(i32, i32*, i64) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
