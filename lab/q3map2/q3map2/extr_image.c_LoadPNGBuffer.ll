; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_image.c_LoadPNGBuffer.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_image.c_LoadPNGBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32* }

@SYS_WRN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"WARNING: Invalid PNG file\0A\00", align 1
@PNG_LIBPNG_VER_STRING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"WARNING: Unable to create PNG read struct\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"WARNING: Unable to create PNG info struct\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"WARNING: Unable to create PNG end info struct\0A\00", align 1
@PNGReadData = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"WARNING: An error occurred reading PNG image\0A\00", align 1
@PNG_COLOR_TYPE_PALETTE = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_GRAY = common dso_local global i32 0, align 4
@PNG_INFO_tRNS = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_RGB = common dso_local global i32 0, align 4
@PNG_FILLER_AFTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**, i32*, i32*)* @LoadPNGBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LoadPNGBuffer(i32* %0, i32 %1, i32** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_2__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32**, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %36, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* %7, align 4
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %24
  %28 = load i32**, i32*** %8, align 8
  %29 = icmp eq i32** %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load i32*, i32** %9, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32*, i32** %10, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %33, %30, %27, %24, %5
  br label %185

37:                                               ; preds = %33
  %38 = load i32**, i32*** %8, align 8
  store i32* null, i32** %38, align 8
  %39 = load i32*, i32** %9, align 8
  store i32 0, i32* %39, align 4
  %40 = load i32*, i32** %10, align 8
  store i32 0, i32* %40, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = call i64 @png_sig_cmp(i32* %41, i32 0, i32 8)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @SYS_WRN, align 4
  %46 = call i32 @Sys_FPrintf(i32 %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %185

47:                                               ; preds = %37
  %48 = load i32, i32* @PNG_LIBPNG_VER_STRING, align 4
  %49 = call i32* @png_create_read_struct(i32 %48, i32* null, i32* null, i32* null)
  store i32* %49, i32** %11, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* @SYS_WRN, align 4
  %54 = call i32 @Sys_FPrintf(i32 %53, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %185

55:                                               ; preds = %47
  %56 = load i32*, i32** %11, align 8
  %57 = call i32* @png_create_info_struct(i32* %56)
  store i32* %57, i32** %12, align 8
  %58 = load i32*, i32** %12, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i32, i32* @SYS_WRN, align 4
  %62 = call i32 @Sys_FPrintf(i32 %61, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %63 = call i32 @png_destroy_read_struct(i32** %11, i32** null, i32** null)
  br label %185

64:                                               ; preds = %55
  %65 = load i32*, i32** %11, align 8
  %66 = call i32* @png_create_info_struct(i32* %65)
  store i32* %66, i32** %13, align 8
  %67 = load i32*, i32** %13, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, i32* @SYS_WRN, align 4
  %71 = call i32 @Sys_FPrintf(i32 %70, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %72 = call i32 @png_destroy_read_struct(i32** %11, i32** %12, i32** null)
  br label %185

73:                                               ; preds = %64
  %74 = load i32*, i32** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  store i32* %74, i32** %75, align 8
  %76 = load i32, i32* %7, align 4
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %76, i32* %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i64 0, i64* %78, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = bitcast %struct.TYPE_2__* %14 to i8*
  %81 = load i32, i32* @PNGReadData, align 4
  %82 = call i32 @png_set_read_fn(i32* %79, i8* %80, i32 %81)
  %83 = load i32*, i32** %11, align 8
  %84 = call i32 @png_jmpbuf(i32* %83)
  %85 = call i64 @setjmp(i32 %84) #3
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %73
  %88 = load i32, i32* @SYS_WRN, align 4
  %89 = call i32 @Sys_FPrintf(i32 %88, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %90 = call i32 @png_destroy_read_struct(i32** %11, i32** %12, i32** %13)
  br label %185

91:                                               ; preds = %73
  %92 = load i32*, i32** %11, align 8
  %93 = load i32*, i32** %12, align 8
  %94 = call i32 @png_read_info(i32* %92, i32* %93)
  %95 = load i32*, i32** %11, align 8
  %96 = load i32*, i32** %12, align 8
  %97 = call i32 @png_get_IHDR(i32* %95, i32* %96, i32* %19, i32* %20, i32* %16, i32* %17, i32* null, i32* null, i32* null)
  %98 = load i32*, i32** %11, align 8
  %99 = load i32*, i32** %12, align 8
  %100 = call i32 @png_get_channels(i32* %98, i32* %99)
  store i32 %100, i32* %18, align 4
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* @PNG_COLOR_TYPE_PALETTE, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %91
  %105 = load i32, i32* %16, align 4
  %106 = icmp sle i32 %105, 8
  br i1 %106, label %120, label %107

107:                                              ; preds = %104, %91
  %108 = load i32, i32* %17, align 4
  %109 = load i32, i32* @PNG_COLOR_TYPE_GRAY, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = load i32, i32* %16, align 4
  %113 = icmp sle i32 %112, 8
  br i1 %113, label %120, label %114

114:                                              ; preds = %111, %107
  %115 = load i32*, i32** %11, align 8
  %116 = load i32*, i32** %12, align 8
  %117 = load i32, i32* @PNG_INFO_tRNS, align 4
  %118 = call i64 @png_get_valid(i32* %115, i32* %116, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %114, %111, %104
  %121 = load i32*, i32** %11, align 8
  %122 = call i32 @png_set_expand(i32* %121)
  br label %123

123:                                              ; preds = %120, %114
  %124 = load i32, i32* %16, align 4
  %125 = icmp eq i32 %124, 16
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i32*, i32** %11, align 8
  %128 = call i32 @png_set_strip_16(i32* %127)
  br label %129

129:                                              ; preds = %126, %123
  %130 = load i32, i32* %16, align 4
  %131 = icmp eq i32 %130, 8
  br i1 %131, label %132, label %140

132:                                              ; preds = %129
  %133 = load i32, i32* %17, align 4
  %134 = load i32, i32* @PNG_COLOR_TYPE_RGB, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %132
  %137 = load i32*, i32** %11, align 8
  %138 = load i32, i32* @PNG_FILLER_AFTER, align 4
  %139 = call i32 @png_set_filler(i32* %137, i32 255, i32 %138)
  br label %140

140:                                              ; preds = %136, %132, %129
  %141 = load i32, i32* %19, align 4
  %142 = load i32*, i32** %9, align 8
  store i32 %141, i32* %142, align 4
  %143 = load i32, i32* %20, align 4
  %144 = load i32*, i32** %10, align 8
  store i32 %143, i32* %144, align 4
  %145 = load i32, i32* %19, align 4
  %146 = load i32, i32* %20, align 4
  %147 = mul nsw i32 %145, %146
  %148 = mul nsw i32 %147, 4
  %149 = call i8* @safe_malloc(i32 %148)
  %150 = bitcast i8* %149 to i32*
  %151 = load i32**, i32*** %8, align 8
  store i32* %150, i32** %151, align 8
  %152 = load i32, i32* %20, align 4
  %153 = sext i32 %152 to i64
  %154 = mul i64 %153, 8
  %155 = trunc i64 %154 to i32
  %156 = call i8* @safe_malloc(i32 %155)
  %157 = bitcast i8* %156 to i32**
  store i32** %157, i32*** %21, align 8
  store i32 0, i32* %15, align 4
  br label %158

158:                                              ; preds = %175, %140
  %159 = load i32, i32* %15, align 4
  %160 = load i32, i32* %20, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %178

162:                                              ; preds = %158
  %163 = load i32**, i32*** %8, align 8
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %15, align 4
  %166 = load i32, i32* %19, align 4
  %167 = mul nsw i32 %165, %166
  %168 = mul nsw i32 %167, 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %164, i64 %169
  %171 = load i32**, i32*** %21, align 8
  %172 = load i32, i32* %15, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32*, i32** %171, i64 %173
  store i32* %170, i32** %174, align 8
  br label %175

175:                                              ; preds = %162
  %176 = load i32, i32* %15, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %15, align 4
  br label %158

178:                                              ; preds = %158
  %179 = load i32*, i32** %11, align 8
  %180 = load i32**, i32*** %21, align 8
  %181 = call i32 @png_read_image(i32* %179, i32** %180)
  %182 = load i32**, i32*** %21, align 8
  %183 = call i32 @free(i32** %182)
  %184 = call i32 @png_destroy_read_struct(i32** %11, i32** %12, i32** %13)
  br label %185

185:                                              ; preds = %178, %87, %69, %60, %52, %44, %36
  ret void
}

declare dso_local i64 @png_sig_cmp(i32*, i32, i32) #1

declare dso_local i32 @Sys_FPrintf(i32, i8*) #1

declare dso_local i32* @png_create_read_struct(i32, i32*, i32*, i32*) #1

declare dso_local i32* @png_create_info_struct(i32*) #1

declare dso_local i32 @png_destroy_read_struct(i32**, i32**, i32**) #1

declare dso_local i32 @png_set_read_fn(i32*, i8*, i32) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #2

declare dso_local i32 @png_jmpbuf(i32*) #1

declare dso_local i32 @png_read_info(i32*, i32*) #1

declare dso_local i32 @png_get_IHDR(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @png_get_channels(i32*, i32*) #1

declare dso_local i64 @png_get_valid(i32*, i32*, i32) #1

declare dso_local i32 @png_set_expand(i32*) #1

declare dso_local i32 @png_set_strip_16(i32*) #1

declare dso_local i32 @png_set_filler(i32*, i32, i32) #1

declare dso_local i8* @safe_malloc(i32) #1

declare dso_local i32 @png_read_image(i32*, i32**) #1

declare dso_local i32 @free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
