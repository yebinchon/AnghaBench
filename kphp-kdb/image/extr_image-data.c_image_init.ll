; ModuleID = '/home/carl/AnghaBench/kphp-kdb/image/extr_image-data.c_image_init.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/image/extr_image-data.c_image_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@image_initialized = common dso_local global i32 0, align 4
@MAX_SHARED_MEMORY_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%lldk\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"MAGICK_LIMIT_MEMORY\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"MAGICK_LIMIT_MAP\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"MAGICK_LIMIT_DISK\00", align 1
@gm_max_load_image_area = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"MAGICK_LIMIT_PIXELS\00", align 1
@ThreadsResource = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@MemoryResource = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"GetMagickResourceLimit (MemoryResource): %lld\0A\00", align 1
@DiskResource = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [45 x i8] c"GetMagickResourceLimit (DiskResource): %lld\0A\00", align 1
@MapResource = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [44 x i8] c"GetMagickResourceLimit (MapResource): %lld\0A\00", align 1
@PixelsResource = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [47 x i8] c"GetMagickResourceLimit (PixelsResource): %lld\0A\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"GetMagickResourceLimit (ThreadsResource): %lld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @image_init(i8* %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca [4 x i8*], align 16
  %14 = alloca i32, align 4
  %15 = alloca [32 x i8], align 16
  %16 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %17 = load i32, i32* @image_initialized, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  br label %153

20:                                               ; preds = %6
  %21 = load i32, i32* @MAX_SHARED_MEMORY_SIZE, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp eq i64 4, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  store i32 1, i32* @image_initialized, align 4
  %26 = load i64, i64* %9, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %20
  %29 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %30 = load i64, i64* %9, align 8
  %31 = ashr i64 %30, 10
  %32 = call i32 @snprintf(i8* %29, i32 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = sext i32 %32 to i64
  %34 = icmp ult i64 %33, 32
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i32, i32* %14, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %14, align 4
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 %39
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %40, align 8
  %41 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %42 = call i32 (i8*, i8*, i32, ...) bitcast (i32 (...)* @setenv to i32 (i8*, i8*, i32, ...)*)(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %41, i32 1)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  br label %47

47:                                               ; preds = %28, %20
  %48 = load i64, i64* %10, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %47
  %51 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %52 = load i64, i64* %10, align 8
  %53 = ashr i64 %52, 10
  %54 = call i32 @snprintf(i8* %51, i32 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %53)
  %55 = sext i32 %54 to i64
  %56 = icmp ult i64 %55, 32
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load i32, i32* %14, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %14, align 4
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 %61
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8** %62, align 8
  %63 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %64 = call i32 (i8*, i8*, i32, ...) bitcast (i32 (...)* @setenv to i32 (i8*, i8*, i32, ...)*)(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %63, i32 1)
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  br label %69

69:                                               ; preds = %50, %47
  %70 = load i64, i64* %11, align 8
  %71 = icmp sge i64 %70, 0
  br i1 %71, label %72, label %91

72:                                               ; preds = %69
  %73 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %74 = load i64, i64* %11, align 8
  %75 = ashr i64 %74, 10
  %76 = call i32 @snprintf(i8* %73, i32 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %75)
  %77 = sext i32 %76 to i64
  %78 = icmp ult i64 %77, 32
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = load i32, i32* %14, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %14, align 4
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 %83
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8** %84, align 8
  %85 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %86 = call i32 (i8*, i8*, i32, ...) bitcast (i32 (...)* @setenv to i32 (i8*, i8*, i32, ...)*)(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %85, i32 1)
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  br label %91

91:                                               ; preds = %72, %69
  %92 = load i64, i64* %8, align 8
  %93 = icmp sgt i64 %92, 0
  br i1 %93, label %94, label %113

94:                                               ; preds = %91
  %95 = load i64, i64* %8, align 8
  store i64 %95, i64* @gm_max_load_image_area, align 8
  %96 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %97 = load i64, i64* %8, align 8
  %98 = call i32 @snprintf(i8* %96, i32 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 %97)
  %99 = sext i32 %98 to i64
  %100 = icmp ult i64 %99, 32
  %101 = zext i1 %100 to i32
  %102 = call i32 @assert(i32 %101)
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %14, align 4
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 %105
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8** %106, align 8
  %107 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %108 = call i32 (i8*, i8*, i32, ...) bitcast (i32 (...)* @setenv to i32 (i8*, i8*, i32, ...)*)(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %107, i32 1)
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = call i32 @assert(i32 %111)
  br label %113

113:                                              ; preds = %94, %91
  %114 = load i8*, i8** %7, align 8
  %115 = call i32 @InitializeMagick(i8* %114)
  br label %116

116:                                              ; preds = %120, %113
  %117 = load i32, i32* %14, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %14, align 4
  %119 = icmp sge i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %116
  %121 = load i32, i32* %14, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 %122
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @unsetenv(i8* %124)
  br label %116

126:                                              ; preds = %116
  %127 = load i32, i32* @ThreadsResource, align 4
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @SetMagickResourceLimit(i32 %127, i32 %128)
  %130 = load i32, i32* @verbosity, align 4
  %131 = icmp sge i32 %130, 3
  br i1 %131, label %132, label %153

132:                                              ; preds = %126
  %133 = load i32, i32* @MemoryResource, align 4
  %134 = call i64 @GetMagickResourceLimit(i32 %133)
  store i64 %134, i64* %16, align 8
  %135 = load i64, i64* %16, align 8
  %136 = call i32 @kprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i64 %135)
  %137 = load i32, i32* @DiskResource, align 4
  %138 = call i64 @GetMagickResourceLimit(i32 %137)
  store i64 %138, i64* %16, align 8
  %139 = load i64, i64* %16, align 8
  %140 = call i32 @kprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i64 %139)
  %141 = load i32, i32* @MapResource, align 4
  %142 = call i64 @GetMagickResourceLimit(i32 %141)
  store i64 %142, i64* %16, align 8
  %143 = load i64, i64* %16, align 8
  %144 = call i32 @kprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i64 %143)
  %145 = load i32, i32* @PixelsResource, align 4
  %146 = call i64 @GetMagickResourceLimit(i32 %145)
  store i64 %146, i64* %16, align 8
  %147 = load i64, i64* %16, align 8
  %148 = call i32 @kprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0), i64 %147)
  %149 = load i32, i32* @ThreadsResource, align 4
  %150 = call i64 @GetMagickResourceLimit(i32 %149)
  store i64 %150, i64* %16, align 8
  %151 = load i64, i64* %16, align 8
  %152 = call i32 @kprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0), i64 %151)
  br label %153

153:                                              ; preds = %19, %132, %126
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @setenv(...) #1

declare dso_local i32 @InitializeMagick(i8*) #1

declare dso_local i32 @unsetenv(i8*) #1

declare dso_local i32 @SetMagickResourceLimit(i32, i32) #1

declare dso_local i64 @GetMagickResourceLimit(i32) #1

declare dso_local i32 @kprintf(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
