; ModuleID = '/home/carl/AnghaBench/lede/package/system/mtd/src/extr_wrgg.c_wrgg_fix_md5.c'
source_filename = "/home/carl/AnghaBench/lede/package/system/mtd/src/extr_wrgg.c_wrgg_fix_md5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wrgg03_header = type { i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"pread\00", align 1
@EIO = common dso_local global i32 0, align 4
@quiet = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"the header is fixed already\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"new size:%u, new MD5: \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wrgg_fix_md5(%struct.wrgg03_header* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wrgg03_header*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca [16 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.wrgg03_header* %0, %struct.wrgg03_header** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %15, align 4
  %16 = load i64, i64* %9, align 8
  %17 = call i8* @malloc(i64 %16)
  store i8* %17, i8** %10, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %15, align 4
  br label %102

23:                                               ; preds = %4
  %24 = load i32, i32* %7, align 4
  %25 = load i8*, i8** %10, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i64 @pread(i32 %24, i8* %25, i64 %26, i64 %27)
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %15, align 4
  br label %99

36:                                               ; preds = %23
  %37 = call i32 @MD5_Init(i32* %12)
  %38 = load %struct.wrgg03_header*, %struct.wrgg03_header** %6, align 8
  %39 = getelementptr inbounds %struct.wrgg03_header, %struct.wrgg03_header* %38, i32 0, i32 3
  %40 = bitcast i32* %39 to i8*
  %41 = call i32 @MD5_Update(i32* %12, i8* %40, i64 4)
  %42 = load %struct.wrgg03_header*, %struct.wrgg03_header** %6, align 8
  %43 = getelementptr inbounds %struct.wrgg03_header, %struct.wrgg03_header* %42, i32 0, i32 2
  %44 = bitcast i32* %43 to i8*
  %45 = call i32 @MD5_Update(i32* %12, i8* %44, i64 4)
  %46 = load i8*, i8** %10, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @MD5_Update(i32* %12, i8* %46, i64 %47)
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %50 = call i32 @MD5_Final(i8* %49, i32* %12)
  %51 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %52 = load %struct.wrgg03_header*, %struct.wrgg03_header** %6, align 8
  %53 = getelementptr inbounds %struct.wrgg03_header, %struct.wrgg03_header* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @memcmp(i8* %51, i32 %54, i32 16)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %36
  %58 = load i32, i32* @quiet, align 4
  %59 = icmp slt i32 %58, 2
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* @stderr, align 4
  %62 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %57
  store i32 -1, i32* %5, align 4
  br label %104

64:                                               ; preds = %36
  %65 = load i32, i32* @quiet, align 4
  %66 = icmp slt i32 %65, 2
  br i1 %66, label %67, label %89

67:                                               ; preds = %64
  %68 = load i32, i32* @stderr, align 4
  %69 = load i64, i64* %9, align 8
  %70 = call i32 (i32, i8*, ...) @fprintf(i32 %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %69)
  store i32 0, i32* %14, align 4
  br label %71

71:                                               ; preds = %83, %67
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = icmp ult i64 %73, 16
  br i1 %74, label %75, label %86

75:                                               ; preds = %71
  %76 = load i32, i32* @stderr, align 4
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %75
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %14, align 4
  br label %71

86:                                               ; preds = %71
  %87 = load i32, i32* @stderr, align 4
  %88 = call i32 (i32, i8*, ...) @fprintf(i32 %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %89

89:                                               ; preds = %86, %64
  %90 = load i64, i64* %9, align 8
  %91 = call i32 @htonl(i64 %90)
  %92 = load %struct.wrgg03_header*, %struct.wrgg03_header** %6, align 8
  %93 = getelementptr inbounds %struct.wrgg03_header, %struct.wrgg03_header* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.wrgg03_header*, %struct.wrgg03_header** %6, align 8
  %95 = getelementptr inbounds %struct.wrgg03_header, %struct.wrgg03_header* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %98 = call i32 @memcpy(i32 %96, i8* %97, i32 16)
  br label %99

99:                                               ; preds = %89, %32
  %100 = load i8*, i8** %10, align 8
  %101 = call i32 @free(i8* %100)
  br label %102

102:                                              ; preds = %99, %20
  %103 = load i32, i32* %15, align 4
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %102, %63
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @pread(i32, i8*, i64, i64) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @MD5_Init(i32*) #1

declare dso_local i32 @MD5_Update(i32*, i8*, i64) #1

declare dso_local i32 @MD5_Final(i8*, i32*) #1

declare dso_local i32 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
