; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/extr_bgzf.c_deflate_block.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/extr_bgzf.c_deflate_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, i32, i32, i32* }
%struct.TYPE_7__ = type { i32, i32, i32, i8*, i32*, i32*, i32* }

@BGZF_BLOCK_SIZE = common dso_local global i32 0, align 4
@g_magic = common dso_local global i32* null, align 8
@BLOCK_HEADER_LENGTH = common dso_local global i64 0, align 8
@BLOCK_FOOTER_LENGTH = common dso_local global i32 0, align 4
@Z_DEFLATED = common dso_local global i32 0, align 4
@Z_DEFAULT_STRATEGY = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@BGZF_ERR_ZLIB = common dso_local global i32 0, align 4
@Z_FINISH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32)* @deflate_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deflate_block(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %6, align 8
  %17 = load i32, i32* @BGZF_BLOCK_SIZE, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @BGZF_BLOCK_SIZE, align 4
  %21 = icmp sle i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32*, i32** %6, align 8
  %25 = load i32*, i32** @g_magic, align 8
  %26 = load i64, i64* @BLOCK_HEADER_LENGTH, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @memcpy(i32* %24, i32* %25, i32 %27)
  br label %29

29:                                               ; preds = %2, %78
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 6
  store i32* null, i32** %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 5
  store i32* null, i32** %31, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 4
  store i32* %34, i32** %35, align 8
  %36 = load i32, i32* %8, align 4
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store i32 %36, i32* %37, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i64, i64* @BLOCK_HEADER_LENGTH, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = bitcast i32* %40 to i8*
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 3
  store i8* %41, i8** %42, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* @BLOCK_HEADER_LENGTH, align 8
  %46 = sub i64 %44, %45
  %47 = load i32, i32* @BLOCK_FOOTER_LENGTH, align 4
  %48 = sext i32 %47 to i64
  %49 = sub i64 %46, %48
  %50 = trunc i64 %49 to i32
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  store i32 %50, i32* %51, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @Z_DEFLATED, align 4
  %56 = load i32, i32* @Z_DEFAULT_STRATEGY, align 4
  %57 = call i32 @deflateInit2(%struct.TYPE_7__* %13, i32 %54, i32 %55, i32 -15, i32 8, i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @Z_OK, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %29
  %62 = load i32, i32* @BGZF_ERR_ZLIB, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  store i32 -1, i32* %3, align 4
  br label %175

67:                                               ; preds = %29
  %68 = load i32, i32* @Z_FINISH, align 4
  %69 = call i32 @deflate(%struct.TYPE_7__* %13, i32 %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @Z_STREAM_END, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %91

73:                                               ; preds = %67
  %74 = call i32 @deflateEnd(%struct.TYPE_7__* %13)
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @Z_OK, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load i32, i32* %8, align 4
  %80 = sub nsw i32 %79, 1024
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp sgt i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  br label %29

85:                                               ; preds = %73
  %86 = load i32, i32* @BGZF_ERR_ZLIB, align 4
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 8
  store i32 -1, i32* %3, align 4
  br label %175

91:                                               ; preds = %67
  %92 = call i32 @deflateEnd(%struct.TYPE_7__* %13)
  %93 = load i32, i32* @Z_OK, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = load i32, i32* @BGZF_ERR_ZLIB, align 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  store i32 -1, i32* %3, align 4
  br label %175

101:                                              ; preds = %91
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %9, align 4
  %104 = load i64, i64* @BLOCK_HEADER_LENGTH, align 8
  %105 = load i32, i32* @BLOCK_FOOTER_LENGTH, align 4
  %106 = sext i32 %105 to i64
  %107 = add i64 %104, %106
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = add i64 %109, %107
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @BGZF_BLOCK_SIZE, align 4
  %114 = icmp sle i32 %112, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 @assert(i32 %115)
  br label %117

117:                                              ; preds = %101
  %118 = load i32, i32* %9, align 4
  %119 = icmp sgt i32 %118, 0
  %120 = zext i1 %119 to i32
  %121 = call i32 @assert(i32 %120)
  %122 = load i32*, i32** %6, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 16
  %124 = load i32, i32* %9, align 4
  %125 = sub nsw i32 %124, 1
  %126 = call i32 @packInt16(i32* %123, i32 %125)
  %127 = call i32 @crc32(i32 0, i32* null, i32 0)
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %11, align 4
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @crc32(i32 %128, i32* %131, i32 %132)
  store i32 %133, i32* %11, align 4
  %134 = load i32*, i32** %6, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sub nsw i32 %135, 8
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  %139 = load i32, i32* %11, align 4
  %140 = call i32 @packInt32(i32* %138, i32 %139)
  %141 = load i32*, i32** %6, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sub nsw i32 %142, 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @packInt32(i32* %145, i32 %146)
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* %8, align 4
  %150 = sub nsw i32 %148, %149
  store i32 %150, i32* %10, align 4
  %151 = load i32, i32* %10, align 4
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %170

153:                                              ; preds = %117
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* %8, align 4
  %156 = icmp sle i32 %154, %155
  %157 = zext i1 %156 to i32
  %158 = call i32 @assert(i32 %157)
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %8, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %10, align 4
  %169 = call i32 @memcpy(i32* %161, i32* %167, i32 %168)
  br label %170

170:                                              ; preds = %153, %117
  %171 = load i32, i32* %10, align 4
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 8
  %174 = load i32, i32* %9, align 4
  store i32 %174, i32* %3, align 4
  br label %175

175:                                              ; preds = %170, %95, %85, %61
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @deflateInit2(%struct.TYPE_7__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @deflate(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @deflateEnd(%struct.TYPE_7__*) #1

declare dso_local i32 @packInt16(i32*, i32) #1

declare dso_local i32 @crc32(i32, i32*, i32) #1

declare dso_local i32 @packInt32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
