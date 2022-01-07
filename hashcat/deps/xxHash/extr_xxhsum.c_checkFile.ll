; ModuleID = '/home/carl/AnghaBench/hashcat/deps/xxHash/extr_xxhsum.c_checkFile.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/xxHash/extr_xxhsum.c_checkFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i64, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64 }

@big_endian = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"Check file mode doesn't support little endian\0A\00", align 1
@stdinName = common dso_local global i8* null, align 8
@stdin = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Pb opening %s\0A\00", align 1
@DEFAULT_LINE_LENGTH = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [55 x i8] c"%s: no properly formatted XXHASH checksum lines found\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"%lu lines are improperly formatted\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"%lu listed files could not be read\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"%lu computed checksums did NOT match\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i8*, i8*, i8*)* @checkFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkFile(i8* %0, i64 %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_5__, align 8
  %17 = alloca %struct.TYPE_5__*, align 8
  %18 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 0, i32* %14, align 4
  store i32* null, i32** %15, align 8
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %17, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 10
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %18, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @big_endian, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %171

26:                                               ; preds = %6
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** @stdinName, align 8
  %29 = icmp eq i8* %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32*, i32** @stdin, align 8
  store i32* %31, i32** %15, align 8
  br label %35

32:                                               ; preds = %26
  %33 = load i8*, i8** %8, align 8
  %34 = call i32* @fopen(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %34, i32** %15, align 8
  br label %35

35:                                               ; preds = %32, %30
  %36 = load i32*, i32** %15, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  store i32 0, i32* %7, align 4
  br label %171

41:                                               ; preds = %35
  %42 = load i8*, i8** %8, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load i32*, i32** %15, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 9
  store i32* %45, i32** %47, align 8
  %48 = load i64, i64* @DEFAULT_LINE_LENGTH, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 8
  store i64 %48, i64* %50, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 8
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @malloc(i64 %53)
  %55 = inttoptr i64 %54 to i8*
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  store i32 65536, i32* %59, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = call i64 @malloc(i64 %63)
  %65 = inttoptr i64 %64 to i8*
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 3
  store i8* %65, i8** %67, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 7
  store i8* %68, i8** %70, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 6
  store i8* %71, i8** %73, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 5
  store i8* %74, i8** %76, align 8
  %77 = load i8*, i8** %13, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 4
  store i8* %77, i8** %79, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %81 = call i32 @parseFile1(%struct.TYPE_5__* %80)
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 3
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @free(i8* %84)
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @free(i8* %88)
  %90 = load i32*, i32** %15, align 8
  %91 = load i32*, i32** @stdin, align 8
  %92 = icmp ne i32* %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %41
  %94 = load i32*, i32** %15, align 8
  %95 = call i32 @fclose(i32* %94)
  br label %96

96:                                               ; preds = %93, %41
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i8*, i8** %8, align 8
  %103 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i8* %102)
  br label %139

104:                                              ; preds = %96
  %105 = load i8*, i8** %11, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %138, label %107

107:                                              ; preds = %104
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @DISPLAYRESULT(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i64 %115)
  br label %117

117:                                              ; preds = %112, %107
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %117
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @DISPLAYRESULT(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i64 %125)
  br label %127

127:                                              ; preds = %122, %117
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %127
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @DISPLAYRESULT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i64 %135)
  br label %137

137:                                              ; preds = %132, %127
  br label %138

138:                                              ; preds = %137, %104
  br label %139

139:                                              ; preds = %138, %101
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %167

144:                                              ; preds = %139
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %167

149:                                              ; preds = %144
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %167

154:                                              ; preds = %149
  %155 = load i8*, i8** %10, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %162

157:                                              ; preds = %154
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %157, %154
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 4
  %165 = load i64, i64* %164, align 8
  %166 = icmp eq i64 %165, 0
  br label %167

167:                                              ; preds = %162, %157, %149, %144, %139
  %168 = phi i1 [ false, %157 ], [ false, %149 ], [ false, %144 ], [ false, %139 ], [ %166, %162 ]
  %169 = zext i1 %168 to i32
  store i32 %169, i32* %14, align 4
  %170 = load i32, i32* %14, align 4
  store i32 %170, i32* %7, align 4
  br label %171

171:                                              ; preds = %167, %38, %24
  %172 = load i32, i32* %7, align 4
  ret i32 %172
}

declare dso_local i32 @DISPLAY(i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @parseFile1(%struct.TYPE_5__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @DISPLAYRESULT(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
