; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkfwimage2.c_build_image.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkfwimage2.c_build_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }

@im = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str = private unnamed_addr constant [43 x i8] c"Cannot allocate memory chunk of size '%u'\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ERROR: failed writing part %u '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Can not create output file: '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Could not write %d bytes into file: '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @build_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_image() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  store i32 8, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %29, %0
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @im, i32 0, i32 0), align 8
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %10
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @im, i32 0, i32 2), align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i64 %17
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %7, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add i64 4, %22
  %24 = add i64 %23, 4
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = add i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %14
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %10

32:                                               ; preds = %10
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @calloc(i32 %33, i32 1)
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** %2, align 8
  %36 = load i8*, i8** %2, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* %4, align 4
  %40 = call i32 (i8*, i32, ...) @ERROR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %39)
  store i32 -1, i32* %1, align 4
  br label %106

41:                                               ; preds = %32
  %42 = load i8*, i8** %2, align 8
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @im, i32 0, i32 3), align 8
  %44 = call i32 @write_header(i8* %42, i32 %43)
  %45 = load i8*, i8** %2, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 4
  store i8* %46, i8** %3, align 8
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %75, %41
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @im, i32 0, i32 0), align 8
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %78

51:                                               ; preds = %47
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @im, i32 0, i32 2), align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i64 %54
  store %struct.TYPE_6__* %55, %struct.TYPE_6__** %8, align 8
  %56 = load i8*, i8** %3, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %58 = call i32 @write_part(i8* %56, %struct.TYPE_6__* %57)
  store i32 %58, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %51
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 (i8*, i32, ...) @ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %64)
  store i32 -1, i32* %1, align 4
  br label %106

66:                                               ; preds = %51
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add i64 4, %70
  %72 = add i64 %71, 4
  %73 = load i8*, i8** %3, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 %72
  store i8* %74, i8** %3, align 8
  br label %75

75:                                               ; preds = %66
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %47

78:                                               ; preds = %47
  %79 = load i8*, i8** %2, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = sub i64 %81, 4
  %83 = trunc i64 %82 to i32
  %84 = call i32 @write_signature(i8* %79, i32 %83)
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @im, i32 0, i32 1), align 4
  %86 = call i32* @fopen(i32 %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %86, i32** %5, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %78
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @im, i32 0, i32 1), align 4
  %90 = call i32 (i8*, i32, ...) @ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  store i32 -10, i32* %1, align 4
  br label %106

91:                                               ; preds = %78
  %92 = load i8*, i8** %2, align 8
  %93 = load i32, i32* %4, align 4
  %94 = load i32*, i32** %5, align 8
  %95 = call i32 @fwrite(i8* %92, i32 %93, i32 1, i32* %94)
  %96 = icmp ne i32 %95, 1
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @im, i32 0, i32 1), align 4
  %100 = call i32 (i8*, i32, ...) @ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %98, i32 %99)
  store i32 -11, i32* %1, align 4
  br label %106

101:                                              ; preds = %91
  %102 = load i8*, i8** %2, align 8
  %103 = call i32 @free(i8* %102)
  %104 = load i32*, i32** %5, align 8
  %105 = call i32 @fclose(i32* %104)
  store i32 0, i32* %1, align 4
  br label %106

106:                                              ; preds = %101, %97, %88, %60, %38
  %107 = load i32, i32* %1, align 4
  ret i32 %107
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @ERROR(i8*, i32, ...) #1

declare dso_local i32 @write_header(i8*, i32) #1

declare dso_local i32 @write_part(i8*, %struct.TYPE_6__*) #1

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
