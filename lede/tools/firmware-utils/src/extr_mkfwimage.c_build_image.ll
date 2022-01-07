; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkfwimage.c_build_image.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkfwimage.c_build_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [43 x i8] c"Cannot allocate memory chunk of size '%u'\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ERROR: failed writing part %u '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Can not create output file: '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Could not write %d bytes into file: '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @build_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_image(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 4, i32* %6, align 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 %20, 4
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %6, align 4
  br label %28

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = add i64 %25, 4
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %23, %18
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %52, %28
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %29
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i64 %40
  store %struct.TYPE_9__* %41, %struct.TYPE_9__** %9, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add i64 4, %45
  %47 = add i64 %46, 4
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = add i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %35
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %29

55:                                               ; preds = %29
  %56 = load i32, i32* %6, align 4
  %57 = call i64 @calloc(i32 %56, i32 1)
  %58 = inttoptr i64 %57 to i8*
  store i8* %58, i8** %4, align 8
  %59 = load i8*, i8** %4, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32, i32* %6, align 4
  %63 = call i32 (i8*, i32, ...) @ERROR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %62)
  store i32 -1, i32* %2, align 4
  br label %159

64:                                               ; preds = %55
  %65 = load i8*, i8** %4, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @write_header(i8* %65, i32 %68, i32 %71)
  %73 = load i8*, i8** %4, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 4
  store i8* %74, i8** %5, align 8
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %107, %64
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %110

81:                                               ; preds = %75
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 3
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i64 %86
  store %struct.TYPE_9__* %87, %struct.TYPE_9__** %10, align 8
  %88 = load i8*, i8** %5, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %90 = call i32 @write_part(i8* %88, %struct.TYPE_9__* %89)
  store i32 %90, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %81
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 (i8*, i32, ...) @ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %96)
  br label %98

98:                                               ; preds = %92, %81
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = add i64 4, %102
  %104 = add i64 %103, 4
  %105 = load i8*, i8** %5, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 %104
  store i8* %106, i8** %5, align 8
  br label %107

107:                                              ; preds = %98
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  br label %75

110:                                              ; preds = %75
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %110
  %118 = load i8*, i8** %4, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = sub i64 %120, 4
  %122 = trunc i64 %121 to i32
  %123 = call i32 @write_signature_rsa(i8* %118, i32 %122)
  br label %131

124:                                              ; preds = %110
  %125 = load i8*, i8** %4, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = sub i64 %127, 4
  %129 = trunc i64 %128 to i32
  %130 = call i32 @write_signature(i8* %125, i32 %129)
  br label %131

131:                                              ; preds = %124, %117
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32* @fopen(i32 %134, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %135, i32** %7, align 8
  %136 = icmp eq i32* %135, null
  br i1 %136, label %137, label %142

137:                                              ; preds = %131
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 (i8*, i32, ...) @ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %140)
  store i32 -10, i32* %2, align 4
  br label %159

142:                                              ; preds = %131
  %143 = load i8*, i8** %4, align 8
  %144 = load i32, i32* %6, align 4
  %145 = load i32*, i32** %7, align 8
  %146 = call i32 @fwrite(i8* %143, i32 %144, i32 1, i32* %145)
  %147 = icmp ne i32 %146, 1
  br i1 %147, label %148, label %154

148:                                              ; preds = %142
  %149 = load i32, i32* %6, align 4
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 (i8*, i32, ...) @ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %149, i32 %152)
  store i32 -11, i32* %2, align 4
  br label %159

154:                                              ; preds = %142
  %155 = load i8*, i8** %4, align 8
  %156 = call i32 @free(i8* %155)
  %157 = load i32*, i32** %7, align 8
  %158 = call i32 @fclose(i32* %157)
  store i32 0, i32* %2, align 4
  br label %159

159:                                              ; preds = %154, %148, %137, %61
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @ERROR(i8*, i32, ...) #1

declare dso_local i32 @write_header(i8*, i32, i32) #1

declare dso_local i32 @write_part(i8*, %struct.TYPE_9__*) #1

declare dso_local i32 @write_signature_rsa(i8*, i32) #1

declare dso_local i32 @write_signature(i8*, i32) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
