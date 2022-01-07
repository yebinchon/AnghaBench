; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkmerakifw-old.c_meraki_build_hdr.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkmerakifw-old.c_meraki_build_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.board_info = type { i64, i64, i64, i64 }

@HDR_LENGTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"kernel file is too big - max size: 0x%08lX\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@strip_padding = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"no memory for buffer: %s\0A\00", align 1
@PADDING_BYTE = common dso_local global i32 0, align 4
@HDR_OFF_MAGIC1 = common dso_local global i32 0, align 4
@HDR_OFF_FILLER0 = common dso_local global i32 0, align 4
@HDR_OFF_FILLER1 = common dso_local global i32 0, align 4
@HDR_OFF_FILLER2 = common dso_local global i32 0, align 4
@HDR_OFF_LOAD_ADDR = common dso_local global i32 0, align 4
@HDR_OFF_ENTRY = common dso_local global i32 0, align 4
@HDR_OFF_IMAGELEN = common dso_local global i32 0, align 4
@HDR_OFF_CHECKSUM = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.board_info*, i64, i32*, i32*)* @meraki_build_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meraki_build_hdr(%struct.board_info* %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.board_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.board_info* %0, %struct.board_info** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.board_info*, %struct.board_info** %6, align 8
  %16 = getelementptr inbounds %struct.board_info, %struct.board_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %12, align 8
  %18 = load i64, i64* %12, align 8
  %19 = load i64, i64* @HDR_LENGTH, align 8
  %20 = sub i64 %18, %19
  store i64 %20, i64* %13, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %13, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load i64, i64* %13, align 8
  %26 = call i32 @ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %27, i32* %5, align 4
  br label %108

28:                                               ; preds = %4
  %29 = load i64, i64* @strip_padding, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @HDR_LENGTH, align 8
  %34 = add i64 %32, %33
  store i64 %34, i64* %12, align 8
  br label %35

35:                                               ; preds = %31, %28
  %36 = load i64, i64* %12, align 8
  %37 = call i8* @malloc(i64 %36)
  store i8* %37, i8** %11, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = call i32 @ERRS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %42, i32* %5, align 4
  br label %108

43:                                               ; preds = %35
  %44 = load i8*, i8** %11, align 8
  %45 = load i32, i32* @PADDING_BYTE, align 4
  %46 = load i64, i64* %12, align 8
  %47 = call i32 @memset(i8* %44, i32 %45, i64 %46)
  %48 = load i8*, i8** %11, align 8
  %49 = load i64, i64* @HDR_LENGTH, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8* %50, i8** %10, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @fread(i8* %51, i64 %52, i32 1, i32* %53)
  %55 = load i8*, i8** %11, align 8
  %56 = load i32, i32* @HDR_OFF_MAGIC1, align 4
  %57 = load %struct.board_info*, %struct.board_info** %6, align 8
  %58 = getelementptr inbounds %struct.board_info, %struct.board_info* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @writel(i8* %55, i32 %56, i64 %59)
  %61 = load i8*, i8** %11, align 8
  %62 = load i32, i32* @HDR_OFF_FILLER0, align 4
  %63 = call i32 @writel(i8* %61, i32 %62, i64 0)
  %64 = load i8*, i8** %11, align 8
  %65 = load i32, i32* @HDR_OFF_FILLER1, align 4
  %66 = call i32 @writel(i8* %64, i32 %65, i64 0)
  %67 = load i8*, i8** %11, align 8
  %68 = load i32, i32* @HDR_OFF_FILLER2, align 4
  %69 = call i32 @writel(i8* %67, i32 %68, i64 0)
  %70 = load i8*, i8** %11, align 8
  %71 = load i32, i32* @HDR_OFF_LOAD_ADDR, align 4
  %72 = load %struct.board_info*, %struct.board_info** %6, align 8
  %73 = getelementptr inbounds %struct.board_info, %struct.board_info* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @writel(i8* %70, i32 %71, i64 %74)
  %76 = load i8*, i8** %11, align 8
  %77 = load i32, i32* @HDR_OFF_ENTRY, align 4
  %78 = load %struct.board_info*, %struct.board_info** %6, align 8
  %79 = getelementptr inbounds %struct.board_info, %struct.board_info* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @writel(i8* %76, i32 %77, i64 %80)
  %82 = load i8*, i8** %11, align 8
  %83 = load i32, i32* @HDR_OFF_IMAGELEN, align 4
  %84 = load i64, i64* %7, align 8
  %85 = call i32 @writel(i8* %82, i32 %83, i64 %84)
  %86 = load i8*, i8** %11, align 8
  %87 = load i32, i32* @HDR_OFF_CHECKSUM, align 4
  %88 = call i32 @writel(i8* %86, i32 %87, i64 0)
  %89 = load i8*, i8** %11, align 8
  %90 = load i64, i64* %7, align 8
  %91 = load i64, i64* @HDR_LENGTH, align 8
  %92 = add i64 %90, %91
  %93 = call i32 @crc32_csum(i8* %89, i64 %92)
  %94 = load i8*, i8** %11, align 8
  %95 = load i64, i64* %12, align 8
  %96 = load i32*, i32** %8, align 8
  %97 = call i64 @fwrite(i8* %94, i64 %95, i32 1, i32* %96)
  store i64 %97, i64* %14, align 8
  %98 = load i8*, i8** %11, align 8
  %99 = call i32 @free(i8* %98)
  %100 = load i64, i64* %14, align 8
  %101 = icmp eq i64 %100, 1
  br i1 %101, label %102, label %104

102:                                              ; preds = %43
  %103 = load i32, i32* @EXIT_SUCCESS, align 4
  br label %106

104:                                              ; preds = %43
  %105 = load i32, i32* @EXIT_FAILURE, align 4
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i32 [ %103, %102 ], [ %105, %104 ]
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %106, %40, %24
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @ERR(i8*, i64) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @ERRS(i8*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @fread(i8*, i64, i32, i32*) #1

declare dso_local i32 @writel(i8*, i32, i64) #1

declare dso_local i32 @crc32_csum(i8*, i64) #1

declare dso_local i64 @fwrite(i8*, i64, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
