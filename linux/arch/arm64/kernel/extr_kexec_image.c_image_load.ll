; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_kexec_image.c_image_load.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_kexec_image.c_image_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kimage = type { i64, i32, i64, %struct.kexec_segment* }
%struct.kexec_segment = type { i64, i64 }
%struct.arm64_image_header = type { i32, i32, i32 }
%struct.kexec_buf = type { i32, i8*, i64, i64, i32, i32, i32, i64, %struct.kimage* }

@KEXEC_TYPE_CRASH = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ARM64_IMAGE_FLAG_BE = common dso_local global i32 0, align 4
@CONFIG_CPU_BIG_ENDIAN = common dso_local global i32 0, align 4
@ARM64_IMAGE_FLAG_PAGE_SIZE = common dso_local global i32 0, align 4
@ARM64_IMAGE_FLAG_PAGE_SIZE_4K = common dso_local global i8* null, align 8
@ARM64_IMAGE_FLAG_PAGE_SIZE_64K = common dso_local global i8* null, align 8
@ARM64_IMAGE_FLAG_PAGE_SIZE_16K = common dso_local global i8* null, align 8
@ULONG_MAX = common dso_local global i32 0, align 4
@KEXEC_BUF_MEM_UNKNOWN = common dso_local global i32 0, align 4
@MIN_KIMG_ALIGN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Loaded kernel at 0x%lx bufsz=0x%lx memsz=0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.kimage*, i8*, i64, i8*, i64, i8*, i64)* @image_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @image_load(%struct.kimage* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca %struct.kimage*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.arm64_image_header*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.kexec_buf, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.kexec_segment*, align 8
  %24 = alloca i32, align 4
  store %struct.kimage* %0, %struct.kimage** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %25 = load %struct.kimage*, %struct.kimage** %9, align 8
  %26 = getelementptr inbounds %struct.kimage, %struct.kimage* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @KEXEC_TYPE_CRASH, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %7
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  %33 = call i8* @ERR_PTR(i32 %32)
  store i8* %33, i8** %8, align 8
  br label %177

34:                                               ; preds = %7
  %35 = load i8*, i8** %10, align 8
  %36 = bitcast i8* %35 to %struct.arm64_image_header*
  store %struct.arm64_image_header* %36, %struct.arm64_image_header** %16, align 8
  %37 = load %struct.arm64_image_header*, %struct.arm64_image_header** %16, align 8
  %38 = getelementptr inbounds %struct.arm64_image_header, %struct.arm64_image_header* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  %44 = call i8* @ERR_PTR(i32 %43)
  store i8* %44, i8** %8, align 8
  br label %177

45:                                               ; preds = %34
  %46 = load %struct.arm64_image_header*, %struct.arm64_image_header** %16, align 8
  %47 = getelementptr inbounds %struct.arm64_image_header, %struct.arm64_image_header* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @le64_to_cpu(i32 %48)
  store i8* %49, i8** %17, align 8
  %50 = load i8*, i8** %17, align 8
  %51 = load i32, i32* @ARM64_IMAGE_FLAG_BE, align 4
  %52 = call i8* @arm64_image_flag_field(i8* %50, i32 %51)
  %53 = ptrtoint i8* %52 to i32
  store i32 %53, i32* %19, align 4
  %54 = load i32, i32* @CONFIG_CPU_BIG_ENDIAN, align 4
  %55 = call i32 @IS_ENABLED(i32 %54)
  store i32 %55, i32* %20, align 4
  %56 = load i32, i32* %19, align 4
  %57 = load i32, i32* %20, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %45
  %60 = call i32 (...) @system_supports_mixed_endian()
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  %65 = call i8* @ERR_PTR(i32 %64)
  store i8* %65, i8** %8, align 8
  br label %177

66:                                               ; preds = %59, %45
  %67 = load i8*, i8** %17, align 8
  %68 = load i32, i32* @ARM64_IMAGE_FLAG_PAGE_SIZE, align 4
  %69 = call i8* @arm64_image_flag_field(i8* %67, i32 %68)
  store i8* %69, i8** %18, align 8
  %70 = load i8*, i8** %18, align 8
  %71 = load i8*, i8** @ARM64_IMAGE_FLAG_PAGE_SIZE_4K, align 8
  %72 = icmp eq i8* %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = call i32 (...) @system_supports_4kb_granule()
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %73, %66
  %77 = load i8*, i8** %18, align 8
  %78 = load i8*, i8** @ARM64_IMAGE_FLAG_PAGE_SIZE_64K, align 8
  %79 = icmp eq i8* %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = call i32 (...) @system_supports_64kb_granule()
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %80, %76
  %84 = load i8*, i8** %18, align 8
  %85 = load i8*, i8** @ARM64_IMAGE_FLAG_PAGE_SIZE_16K, align 8
  %86 = icmp eq i8* %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %83
  %88 = call i32 (...) @system_supports_16kb_granule()
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %87, %80, %73
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  %93 = call i8* @ERR_PTR(i32 %92)
  store i8* %93, i8** %8, align 8
  br label %177

94:                                               ; preds = %87, %83
  %95 = load %struct.kimage*, %struct.kimage** %9, align 8
  %96 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %21, i32 0, i32 8
  store %struct.kimage* %95, %struct.kimage** %96, align 8
  %97 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %21, i32 0, i32 7
  store i64 0, i64* %97, align 8
  %98 = load i32, i32* @ULONG_MAX, align 4
  %99 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %21, i32 0, i32 6
  store i32 %98, i32* %99, align 8
  %100 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %21, i32 0, i32 0
  store i32 0, i32* %100, align 8
  %101 = load i8*, i8** %10, align 8
  %102 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %21, i32 0, i32 1
  store i8* %101, i8** %102, align 8
  %103 = load i64, i64* %11, align 8
  %104 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %21, i32 0, i32 2
  store i64 %103, i64* %104, align 8
  %105 = load i32, i32* @KEXEC_BUF_MEM_UNKNOWN, align 4
  %106 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %21, i32 0, i32 5
  store i32 %105, i32* %106, align 4
  %107 = load %struct.arm64_image_header*, %struct.arm64_image_header** %16, align 8
  %108 = getelementptr inbounds %struct.arm64_image_header, %struct.arm64_image_header* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i8* @le64_to_cpu(i32 %109)
  %111 = ptrtoint i8* %110 to i64
  %112 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %21, i32 0, i32 3
  store i64 %111, i64* %112, align 8
  %113 = load %struct.arm64_image_header*, %struct.arm64_image_header** %16, align 8
  %114 = getelementptr inbounds %struct.arm64_image_header, %struct.arm64_image_header* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i8* @le64_to_cpu(i32 %115)
  %117 = ptrtoint i8* %116 to i64
  store i64 %117, i64* %22, align 8
  %118 = load i32, i32* @MIN_KIMG_ALIGN, align 4
  %119 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %21, i32 0, i32 4
  store i32 %118, i32* %119, align 8
  %120 = load i64, i64* %22, align 8
  %121 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %21, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = add i64 %122, %120
  store i64 %123, i64* %121, align 8
  %124 = call i32 @kexec_add_buffer(%struct.kexec_buf* %21)
  store i32 %124, i32* %24, align 4
  %125 = load i32, i32* %24, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %94
  %128 = load i32, i32* %24, align 4
  %129 = call i8* @ERR_PTR(i32 %128)
  store i8* %129, i8** %8, align 8
  br label %177

130:                                              ; preds = %94
  %131 = load %struct.kimage*, %struct.kimage** %9, align 8
  %132 = getelementptr inbounds %struct.kimage, %struct.kimage* %131, i32 0, i32 3
  %133 = load %struct.kexec_segment*, %struct.kexec_segment** %132, align 8
  %134 = load %struct.kimage*, %struct.kimage** %9, align 8
  %135 = getelementptr inbounds %struct.kimage, %struct.kimage* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = sub nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.kexec_segment, %struct.kexec_segment* %133, i64 %138
  store %struct.kexec_segment* %139, %struct.kexec_segment** %23, align 8
  %140 = load i64, i64* %22, align 8
  %141 = load %struct.kexec_segment*, %struct.kexec_segment** %23, align 8
  %142 = getelementptr inbounds %struct.kexec_segment, %struct.kexec_segment* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = add i64 %143, %140
  store i64 %144, i64* %142, align 8
  %145 = load i64, i64* %22, align 8
  %146 = load %struct.kexec_segment*, %struct.kexec_segment** %23, align 8
  %147 = getelementptr inbounds %struct.kexec_segment, %struct.kexec_segment* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = sub i64 %148, %145
  store i64 %149, i64* %147, align 8
  %150 = load %struct.kexec_segment*, %struct.kexec_segment** %23, align 8
  %151 = getelementptr inbounds %struct.kexec_segment, %struct.kexec_segment* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.kimage*, %struct.kimage** %9, align 8
  %154 = getelementptr inbounds %struct.kimage, %struct.kimage* %153, i32 0, i32 2
  store i64 %152, i64* %154, align 8
  %155 = load %struct.kexec_segment*, %struct.kexec_segment** %23, align 8
  %156 = getelementptr inbounds %struct.kexec_segment, %struct.kexec_segment* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %21, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.kexec_segment*, %struct.kexec_segment** %23, align 8
  %161 = getelementptr inbounds %struct.kexec_segment, %struct.kexec_segment* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @pr_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %157, i64 %159, i64 %162)
  %164 = load %struct.kimage*, %struct.kimage** %9, align 8
  %165 = load %struct.kexec_segment*, %struct.kexec_segment** %23, align 8
  %166 = getelementptr inbounds %struct.kexec_segment, %struct.kexec_segment* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.kexec_segment*, %struct.kexec_segment** %23, align 8
  %169 = getelementptr inbounds %struct.kexec_segment, %struct.kexec_segment* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load i8*, i8** %12, align 8
  %172 = load i64, i64* %13, align 8
  %173 = load i8*, i8** %14, align 8
  %174 = call i32 @load_other_segments(%struct.kimage* %164, i64 %167, i64 %170, i8* %171, i64 %172, i8* %173)
  store i32 %174, i32* %24, align 4
  %175 = load i32, i32* %24, align 4
  %176 = call i8* @ERR_PTR(i32 %175)
  store i8* %176, i8** %8, align 8
  br label %177

177:                                              ; preds = %130, %127, %90, %62, %41, %30
  %178 = load i8*, i8** %8, align 8
  ret i8* %178
}

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i8* @le64_to_cpu(i32) #1

declare dso_local i8* @arm64_image_flag_field(i8*, i32) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @system_supports_mixed_endian(...) #1

declare dso_local i32 @system_supports_4kb_granule(...) #1

declare dso_local i32 @system_supports_64kb_granule(...) #1

declare dso_local i32 @system_supports_16kb_granule(...) #1

declare dso_local i32 @kexec_add_buffer(%struct.kexec_buf*) #1

declare dso_local i32 @pr_debug(i8*, i64, i64, i64) #1

declare dso_local i32 @load_other_segments(%struct.kimage*, i64, i64, i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
