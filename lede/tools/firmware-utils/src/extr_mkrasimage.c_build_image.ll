; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkrasimage.c_build_image.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkrasimage.c_build_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i32, i64 }
%struct.TYPE_12__ = type { i8*, i32 }
%struct.TYPE_10__ = type { i32, i8* }

@kernel = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@rootfs = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@rootfs_out = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@version_name = common dso_local global i32 0, align 4
@board_name = common dso_local global i32 0, align 4
@HEADER_PARTITION_LENGTH = common dso_local global i64 0, align 8
@out = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@ROOTFS_HEADER_LEN = common dso_local global i32 0, align 4
@BOARD_HEADER_LEN = common dso_local global i32 0, align 4
@KERNEL_HEADER_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @build_image() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* null, i8** %1, align 8
  store i8* null, i8** %2, align 8
  store i8* null, i8** %3, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @kernel, i32 0, i32 2), align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 @map_file(%struct.TYPE_11__* @kernel)
  br label %9

9:                                                ; preds = %7, %0
  %10 = call i32 @map_file(%struct.TYPE_11__* @rootfs)
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @rootfs_out, i32 0, i32 1), align 8
  %12 = call i8* @calloc(i32 %11, i32 1)
  store i8* %12, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @rootfs_out, i32 0, i32 0), align 8
  %13 = load i8*, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @rootfs_out, i32 0, i32 0), align 8
  %14 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @rootfs, i32 0, i32 0), align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @rootfs, i32 0, i32 1), align 8
  %16 = call i32 @memcpy(i8* %13, i8* %14, i32 %15)
  %17 = load i32, i32* @version_name, align 4
  %18 = load i8*, i8** getelementptr inbounds ({ i8*, i32 }, { i8*, i32 }* bitcast (%struct.TYPE_12__* @rootfs_out to { i8*, i32 }*), i32 0, i32 0), align 8
  %19 = load i32, i32* getelementptr inbounds ({ i8*, i32 }, { i8*, i32 }* bitcast (%struct.TYPE_12__* @rootfs_out to { i8*, i32 }*), i32 0, i32 1), align 8
  %20 = call i8* @generate_rootfs_header(i8* %18, i32 %19, i32 %17)
  store i8* %20, i8** %1, align 8
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @kernel, i32 0, i32 2), align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %9
  %24 = call i8* @generate_kernel_header(%struct.TYPE_11__* byval(%struct.TYPE_11__) align 8 @kernel)
  store i8* %24, i8** %2, align 8
  br label %25

25:                                               ; preds = %23, %9
  %26 = load i8*, i8** %2, align 8
  %27 = load i8*, i8** %1, align 8
  %28 = load i32, i32* @board_name, align 4
  %29 = call i8* @generate_board_header(i8* %26, i8* %27, i32 %28)
  store i8* %29, i8** %3, align 8
  %30 = load i64, i64* @HEADER_PARTITION_LENGTH, align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @rootfs_out, i32 0, i32 1), align 8
  %32 = sext i32 %31 to i64
  %33 = add i64 %30, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @out, i32 0, i32 0), align 8
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @kernel, i32 0, i32 2), align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %25
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @kernel, i32 0, i32 1), align 8
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @out, i32 0, i32 0), align 8
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @out, i32 0, i32 0), align 8
  br label %41

41:                                               ; preds = %37, %25
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @out, i32 0, i32 0), align 8
  %43 = call i8* @malloc(i32 %42)
  store i8* %43, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @out, i32 0, i32 1), align 8
  %44 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @out, i32 0, i32 1), align 8
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @out, i32 0, i32 0), align 8
  %46 = call i32 @memset(i8* %44, i32 255, i32 %45)
  %47 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @out, i32 0, i32 1), align 8
  %48 = load i8*, i8** %1, align 8
  %49 = load i32, i32* @ROOTFS_HEADER_LEN, align 4
  %50 = call i32 @memcpy(i8* %47, i8* %48, i32 %49)
  %51 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @out, i32 0, i32 1), align 8
  %52 = load i32, i32* @ROOTFS_HEADER_LEN, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8*, i8** %3, align 8
  %56 = load i32, i32* @BOARD_HEADER_LEN, align 4
  %57 = call i32 @memcpy(i8* %54, i8* %55, i32 %56)
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @kernel, i32 0, i32 2), align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %41
  %61 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @out, i32 0, i32 1), align 8
  %62 = load i32, i32* @ROOTFS_HEADER_LEN, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i32, i32* @BOARD_HEADER_LEN, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i8*, i8** %2, align 8
  %69 = load i32, i32* @KERNEL_HEADER_LEN, align 4
  %70 = call i32 @memcpy(i8* %67, i8* %68, i32 %69)
  br label %71

71:                                               ; preds = %60, %41
  %72 = load i64, i64* @HEADER_PARTITION_LENGTH, align 8
  store i64 %72, i64* %4, align 8
  %73 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @out, i32 0, i32 1), align 8
  %74 = load i64, i64* %4, align 8
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  %76 = load i8*, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @rootfs_out, i32 0, i32 0), align 8
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @rootfs_out, i32 0, i32 1), align 8
  %78 = call i32 @memcpy(i8* %75, i8* %76, i32 %77)
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @rootfs_out, i32 0, i32 1), align 8
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* %4, align 8
  %82 = add i64 %81, %80
  store i64 %82, i64* %4, align 8
  %83 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @kernel, i32 0, i32 2), align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %71
  %86 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @out, i32 0, i32 1), align 8
  %87 = load i64, i64* %4, align 8
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  %89 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @kernel, i32 0, i32 0), align 8
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @kernel, i32 0, i32 1), align 8
  %91 = call i32 @memcpy(i8* %88, i8* %89, i32 %90)
  br label %92

92:                                               ; preds = %85, %71
  %93 = call i32 @write_file(%struct.TYPE_10__* @out)
  %94 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @kernel, i32 0, i32 2), align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = call i32 @unmap_file(%struct.TYPE_11__* @kernel)
  br label %98

98:                                               ; preds = %96, %92
  %99 = call i32 @unmap_file(%struct.TYPE_11__* @rootfs)
  %100 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @out, i32 0, i32 1), align 8
  %101 = call i32 @free(i8* %100)
  %102 = load i8*, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @rootfs_out, i32 0, i32 0), align 8
  %103 = call i32 @free(i8* %102)
  %104 = load i8*, i8** %1, align 8
  %105 = call i32 @free(i8* %104)
  %106 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @kernel, i32 0, i32 2), align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %98
  %109 = load i8*, i8** %2, align 8
  %110 = call i32 @free(i8* %109)
  br label %111

111:                                              ; preds = %108, %98
  %112 = load i8*, i8** %3, align 8
  %113 = call i32 @free(i8* %112)
  ret i32 0
}

declare dso_local i32 @map_file(%struct.TYPE_11__*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @generate_rootfs_header(i8*, i32, i32) #1

declare dso_local i8* @generate_kernel_header(%struct.TYPE_11__* byval(%struct.TYPE_11__) align 8) #1

declare dso_local i8* @generate_board_header(i8*, i8*, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @write_file(%struct.TYPE_10__*) #1

declare dso_local i32 @unmap_file(%struct.TYPE_11__*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
