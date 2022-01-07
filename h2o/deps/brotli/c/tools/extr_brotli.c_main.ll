; ModuleID = '/home/carl/AnghaBench/h2o/deps/brotli/c/tools/extr_brotli.c_main.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/brotli/c/tools/extr_brotli.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i8**, i8*, i8*, i8*, i8*, i8*, i32, i32*, i32*, i32*, i32*, i64, i64, i64, i64*, i32*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }

@BROTLI_TRUE = common dso_local global i8* null, align 8
@DEFAULT_LGWIN = common dso_local global i32 0, align 4
@BROTLI_FALSE = common dso_local global i8* null, align 8
@DEFAULT_SUFFIX = common dso_local global i32 0, align 4
@MAX_OPTIONS = common dso_local global i32 0, align 4
@kFileBufferSize = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i8*, i8** @BROTLI_TRUE, align 8
  %12 = ptrtoint i8* %11 to i32
  store i32 %12, i32* %8, align 4
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i32 11, i32* %13, align 8
  %14 = load i32, i32* @DEFAULT_LGWIN, align 4
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 26
  store i32 %14, i32* %15, align 8
  %16 = load i8*, i8** @BROTLI_FALSE, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 25
  store i8* %16, i8** %17, align 8
  %18 = load i8*, i8** @BROTLI_FALSE, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 24
  store i8* %18, i8** %19, align 8
  %20 = load i8*, i8** @BROTLI_TRUE, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 23
  store i8* %20, i8** %21, align 8
  %22 = load i8*, i8** @BROTLI_FALSE, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 22
  store i8* %22, i8** %23, align 8
  %24 = load i8*, i8** @BROTLI_FALSE, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 21
  store i8* %24, i8** %25, align 8
  %26 = load i8*, i8** @BROTLI_FALSE, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 20
  store i8* %26, i8** %27, align 8
  %28 = load i8*, i8** @BROTLI_FALSE, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 19
  store i8* %28, i8** %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 18
  store i32* null, i32** %30, align 8
  %31 = load i32, i32* @DEFAULT_SUFFIX, align 4
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 9
  store i32 %31, i32* %32, align 8
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %43, %2
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @MAX_OPTIONS, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 17
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %37
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %33

46:                                               ; preds = %33
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  store i32 1, i32* %47, align 4
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 16
  store i64 0, i64* %48, align 8
  %49 = load i32, i32* %4, align 4
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  store i32 %49, i32* %50, align 8
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 3
  store i8** %51, i8*** %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 4
  store i8* null, i8** %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 15
  store i64 0, i64* %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 14
  store i64 0, i64* %55, align 8
  %56 = load i8*, i8** @BROTLI_FALSE, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 8
  store i8* %56, i8** %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 5
  store i8* null, i8** %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 13
  store i32* null, i32** %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 12
  store i32* null, i32** %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 11
  store i32* null, i32** %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 10
  store i32* null, i32** %62, align 8
  %63 = call i32 @ParseParams(%struct.TYPE_5__* %7)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp eq i32 %64, 134
  br i1 %65, label %72, label %66

66:                                               ; preds = %46
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 %67, 133
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %6, align 4
  %71 = icmp eq i32 %70, 129
  br i1 %71, label %72, label %118

72:                                               ; preds = %69, %66, %46
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %117

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 9
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @strlen(i32 %79)
  %81 = add nsw i32 %77, %80
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %10, align 8
  %84 = load i64, i64* %10, align 8
  %85 = trunc i64 %84 to i32
  %86 = call i64 @malloc(i32 %85)
  %87 = inttoptr i64 %86 to i8*
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 4
  store i8* %87, i8** %88, align 8
  %89 = load i32, i32* @kFileBufferSize, align 4
  %90 = mul nsw i32 %89, 2
  %91 = call i64 @malloc(i32 %90)
  %92 = inttoptr i64 %91 to i8*
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 5
  store i8* %92, i8** %93, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 4
  %95 = load i8*, i8** %94, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %75
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 5
  %99 = load i8*, i8** %98, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %106, label %101

101:                                              ; preds = %97, %75
  %102 = load i32, i32* @stderr, align 4
  %103 = call i32 @fprintf(i32 %102, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %104 = load i8*, i8** @BROTLI_FALSE, align 8
  %105 = ptrtoint i8* %104 to i32
  store i32 %105, i32* %8, align 4
  br label %116

106:                                              ; preds = %97
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 5
  %108 = load i8*, i8** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 6
  store i8* %108, i8** %109, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 5
  %111 = load i8*, i8** %110, align 8
  %112 = load i32, i32* @kFileBufferSize, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 7
  store i8* %114, i8** %115, align 8
  br label %116

116:                                              ; preds = %106, %101
  br label %117

117:                                              ; preds = %116, %72
  br label %118

118:                                              ; preds = %117, %69
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %118
  store i32 130, i32* %6, align 4
  br label %122

122:                                              ; preds = %121, %118
  %123 = load i32, i32* %6, align 4
  switch i32 %123, label %132 [
    i32 130, label %124
    i32 128, label %125
    i32 134, label %127
    i32 133, label %129
    i32 129, label %129
    i32 132, label %131
    i32 131, label %131
  ]

124:                                              ; preds = %122
  br label %141

125:                                              ; preds = %122
  %126 = call i32 (...) @PrintVersion()
  br label %141

127:                                              ; preds = %122
  %128 = call i32 @CompressFiles(%struct.TYPE_5__* %7)
  store i32 %128, i32* %8, align 4
  br label %141

129:                                              ; preds = %122, %122
  %130 = call i32 @DecompressFiles(%struct.TYPE_5__* %7)
  store i32 %130, i32* %8, align 4
  br label %141

131:                                              ; preds = %122, %122
  br label %132

132:                                              ; preds = %122, %131
  %133 = load i8**, i8*** %5, align 8
  %134 = getelementptr inbounds i8*, i8** %133, i64 0
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @FileName(i8* %135)
  %137 = call i32 @PrintHelp(i32 %136)
  %138 = load i32, i32* %6, align 4
  %139 = icmp eq i32 %138, 132
  %140 = zext i1 %139 to i32
  store i32 %140, i32* %8, align 4
  br label %141

141:                                              ; preds = %132, %129, %127, %125, %124
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 8
  %143 = load i8*, i8** %142, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %148

145:                                              ; preds = %141
  %146 = load i8*, i8** @BROTLI_FALSE, align 8
  %147 = ptrtoint i8* %146 to i32
  store i32 %147, i32* %8, align 4
  br label %148

148:                                              ; preds = %145, %141
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 4
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 @free(i8* %150)
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 5
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @free(i8* %153)
  %155 = load i32, i32* %8, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %159, label %157

157:                                              ; preds = %148
  %158 = call i32 @exit(i32 1) #3
  unreachable

159:                                              ; preds = %148
  ret i32 0
}

declare dso_local i32 @ParseParams(%struct.TYPE_5__*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @PrintVersion(...) #1

declare dso_local i32 @CompressFiles(%struct.TYPE_5__*) #1

declare dso_local i32 @DecompressFiles(%struct.TYPE_5__*) #1

declare dso_local i32 @PrintHelp(i32) #1

declare dso_local i32 @FileName(i8*) #1

declare dso_local i32 @free(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
