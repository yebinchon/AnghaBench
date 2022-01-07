; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_jcgimage.c_mkjcgheader.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_jcgimage.c_mkjcgheader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jcg_header = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@source_date_epoch = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"time call failed\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%hu.%hu\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"cannot parse version \22%s\22\00", align 1
@JH_MAGIC = common dso_local global i64 0, align 8
@Z_NULL = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mkjcgheader(%struct.jcg_header* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.jcg_header*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.jcg_header* %0, %struct.jcg_header** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.jcg_header*, %struct.jcg_header** %4, align 8
  %13 = bitcast %struct.jcg_header* %12 to i8*
  %14 = getelementptr i8, i8* %13, i64 56
  store i8* %14, i8** %10, align 8
  %15 = load i32, i32* @source_date_epoch, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @source_date_epoch, align 4
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %11, align 8
  br label %26

20:                                               ; preds = %3
  %21 = call i64 @time(i64* %11)
  %22 = icmp eq i64 %21, -1
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %20
  br label %26

26:                                               ; preds = %25, %17
  %27 = load i8*, i8** %6, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @sscanf(i8* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %8, i32* %9)
  %32 = icmp ne i32 %31, 2
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %33, %29
  br label %37

37:                                               ; preds = %36, %26
  %38 = load %struct.jcg_header*, %struct.jcg_header** %4, align 8
  %39 = call i32 @memset(%struct.jcg_header* %38, i32 0, i32 56)
  %40 = load i64, i64* @JH_MAGIC, align 8
  %41 = call i8* @htonl(i64 %40)
  %42 = load %struct.jcg_header*, %struct.jcg_header** %4, align 8
  %43 = getelementptr inbounds %struct.jcg_header, %struct.jcg_header* %42, i32 0, i32 6
  store i8* %41, i8** %43, align 8
  %44 = call i8* @htonl(i64 1)
  %45 = load %struct.jcg_header*, %struct.jcg_header** %4, align 8
  %46 = getelementptr inbounds %struct.jcg_header, %struct.jcg_header* %45, i32 0, i32 5
  store i8* %44, i8** %46, align 8
  %47 = load i64, i64* %11, align 8
  %48 = call i8* @htonl(i64 %47)
  %49 = load %struct.jcg_header*, %struct.jcg_header** %4, align 8
  %50 = getelementptr inbounds %struct.jcg_header, %struct.jcg_header* %49, i32 0, i32 4
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i8* @htons(i32 %51)
  %53 = load %struct.jcg_header*, %struct.jcg_header** %4, align 8
  %54 = getelementptr inbounds %struct.jcg_header, %struct.jcg_header* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i8* @htons(i32 %55)
  %57 = load %struct.jcg_header*, %struct.jcg_header** %4, align 8
  %58 = getelementptr inbounds %struct.jcg_header, %struct.jcg_header* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** @Z_NULL, align 8
  %60 = call i64 @crc32(i64 0, i8* %59, i32 0)
  store i64 %60, i64* %7, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = load i64, i64* %5, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i64 @crc32(i64 %61, i8* %62, i32 %64)
  store i64 %65, i64* %7, align 8
  %66 = load i64, i64* %7, align 8
  %67 = call i8* @htonl(i64 %66)
  %68 = load %struct.jcg_header*, %struct.jcg_header** %4, align 8
  %69 = getelementptr inbounds %struct.jcg_header, %struct.jcg_header* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load i8*, i8** @Z_NULL, align 8
  %71 = call i64 @crc32(i64 0, i8* %70, i32 0)
  store i64 %71, i64* %7, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load %struct.jcg_header*, %struct.jcg_header** %4, align 8
  %74 = bitcast %struct.jcg_header* %73 to i8*
  %75 = call i64 @crc32(i64 %72, i8* %74, i32 56)
  store i64 %75, i64* %7, align 8
  %76 = load i64, i64* %7, align 8
  %77 = call i8* @htonl(i64 %76)
  %78 = load %struct.jcg_header*, %struct.jcg_header** %4, align 8
  %79 = getelementptr inbounds %struct.jcg_header, %struct.jcg_header* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  ret void
}

declare dso_local i64 @time(i64*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @memset(%struct.jcg_header*, i32, i32) #1

declare dso_local i8* @htonl(i64) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i64 @crc32(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
