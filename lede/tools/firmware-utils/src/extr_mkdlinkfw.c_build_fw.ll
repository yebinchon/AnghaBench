; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkdlinkfw.c_build_fw.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkdlinkfw.c_build_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.stag_header = type { i32 }
%struct.sch2_header = type { i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@kernel_info = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@rootfs_info = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@firmware_size = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"no memory for buffer\0A\00", align 1
@ALL_HEADERS_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"data is bigger than firmware_size!\0A\00", align 1
@STAG_SIZE = common dso_local global i32 0, align 4
@SCH2_SIZE = common dso_local global i32 0, align 4
@ofname = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @build_fw() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.stag_header*, align 8
  %7 = alloca %struct.sch2_header*, align 8
  %8 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kernel_info, i32 0, i32 1), align 8
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rootfs_info, i32 0, i32 1), align 8
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = or i32 %12, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %0
  br label %107

20:                                               ; preds = %0
  %21 = call i32 @get_file_stat(%struct.TYPE_5__* @kernel_info)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %107

25:                                               ; preds = %20
  %26 = call i32 @get_file_stat(%struct.TYPE_5__* @rootfs_info)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %107

30:                                               ; preds = %25
  %31 = load i64, i64* @firmware_size, align 8
  %32 = call i8* @malloc(i64 %31)
  store i8* %32, i8** %1, align 8
  %33 = load i8*, i8** %1, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = call i32 @ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %107

37:                                               ; preds = %30
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rootfs_info, i32 0, i32 0), align 8
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kernel_info, i32 0, i32 0), align 8
  %40 = add nsw i64 %38, %39
  %41 = load i64, i64* @ALL_HEADERS_SIZE, align 8
  %42 = add nsw i64 %40, %41
  %43 = load i64, i64* @firmware_size, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = call i32 @ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %107

47:                                               ; preds = %37
  %48 = load i8*, i8** %1, align 8
  %49 = load i64, i64* @firmware_size, align 8
  %50 = call i32 @memset(i8* %48, i32 255, i64 %49)
  %51 = load i8*, i8** %1, align 8
  %52 = bitcast i8* %51 to %struct.stag_header*
  store %struct.stag_header* %52, %struct.stag_header** %6, align 8
  %53 = load %struct.stag_header*, %struct.stag_header** %6, align 8
  %54 = bitcast %struct.stag_header* %53 to i8*
  %55 = load i32, i32* @STAG_SIZE, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = bitcast i8* %57 to %struct.sch2_header*
  store %struct.sch2_header* %58, %struct.sch2_header** %7, align 8
  %59 = load %struct.sch2_header*, %struct.sch2_header** %7, align 8
  %60 = bitcast %struct.sch2_header* %59 to i8*
  %61 = load i32, i32* @SCH2_SIZE, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  store i8* %63, i8** %2, align 8
  %64 = load i8*, i8** %2, align 8
  %65 = call i32 @read_to_buf(%struct.TYPE_5__* @kernel_info, i8* %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %47
  br label %104

69:                                               ; preds = %47
  %70 = load i8*, i8** %2, align 8
  %71 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kernel_info, i32 0, i32 0), align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8* %72, i8** %3, align 8
  %73 = load i8*, i8** %3, align 8
  %74 = call i32 @read_to_buf(%struct.TYPE_5__* @rootfs_info, i8* %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  br label %104

78:                                               ; preds = %69
  %79 = load i8*, i8** %3, align 8
  %80 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rootfs_info, i32 0, i32 0), align 8
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  %82 = load i8*, i8** %1, align 8
  %83 = ptrtoint i8* %81 to i64
  %84 = ptrtoint i8* %82 to i64
  %85 = sub i64 %83, %84
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %5, align 4
  %87 = load %struct.sch2_header*, %struct.sch2_header** %7, align 8
  %88 = load i8*, i8** %2, align 8
  %89 = load i8*, i8** %3, align 8
  %90 = call i32 @fill_sch2(%struct.sch2_header* %87, i8* %88, i8* %89)
  %91 = load %struct.stag_header*, %struct.stag_header** %6, align 8
  %92 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kernel_info, i32 0, i32 0), align 8
  %93 = trunc i64 %92 to i32
  %94 = call i32 @fill_stag(%struct.stag_header* %91, i32 %93)
  %95 = load i32, i32* @ofname, align 4
  %96 = load i8*, i8** %1, align 8
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @write_fw(i32 %95, i8* %96, i32 %97)
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %4, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %78
  br label %104

102:                                              ; preds = %78
  %103 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %102, %101, %77, %68
  %105 = load i8*, i8** %1, align 8
  %106 = call i32 @free(i8* %105)
  br label %107

107:                                              ; preds = %104, %45, %35, %29, %24, %19
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @get_file_stat(%struct.TYPE_5__*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @read_to_buf(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @fill_sch2(%struct.sch2_header*, i8*, i8*) #1

declare dso_local i32 @fill_stag(%struct.stag_header*, i32) #1

declare dso_local i32 @write_fw(i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
