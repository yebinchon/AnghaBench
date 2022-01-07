; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tlclient.c_unpack_packet.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tlclient.c_unpack_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_compiler = type { i32 }

@P = common dso_local global i64* null, align 8
@GZIP_PACKED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"ilen: %d, slen: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"tl_fetch_string fail\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"packet contains extra %d ints\00", align 1
@PACKET_BUFFER_SIZE = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"uncompress (%p, %d, %p, %d) returns %s\00", align 1
@Z_MEM_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"Z_MEM_ERROR\00", align 1
@Z_BUF_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"Z_BUF_ERROR\00", align 1
@Z_DATA_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"Z_DATA_ERROR\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"destLen(%d) isn't multiple of 4\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tl_compiler*, i32, i32**, i32*)* @unpack_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unpack_packet(%struct.tl_compiler* %0, i32 %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tl_compiler*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.tl_compiler* %0, %struct.tl_compiler** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load i32**, i32*** %8, align 8
  store i32* null, i32** %16, align 8
  %17 = load i32*, i32** %9, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %7, align 4
  %19 = sdiv i32 %18, 4
  %20 = sub nsw i32 %19, 6
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %143

24:                                               ; preds = %4
  %25 = load i64*, i64** @P, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 5
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @GZIP_PACKED, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load i64*, i64** @P, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 5
  %33 = bitcast i64* %32 to i32*
  %34 = load i32**, i32*** %8, align 8
  store i32* %33, i32** %34, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32*, i32** %9, align 8
  store i32 %35, i32* %36, align 4
  store i32 0, i32* %5, align 4
  br label %143

37:                                               ; preds = %24
  %38 = load i64*, i64** @P, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 6
  %40 = load i32, i32* %10, align 4
  %41 = sub nsw i32 %40, 1
  %42 = call i32 @tl_fetch_string(i64* %39, i32 %41, i8** %11, i32* %12, i32 0)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @vkprintf(i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %37
  %49 = load %struct.tl_compiler*, %struct.tl_compiler** %6, align 8
  %50 = call i32 (%struct.tl_compiler*, i8*, ...) @tl_failf(%struct.tl_compiler* %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 %50, i32* %5, align 4
  br label %143

51:                                               ; preds = %37
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %10, align 4
  %54 = sub nsw i32 %53, 1
  %55 = icmp ne i32 %52, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load %struct.tl_compiler*, %struct.tl_compiler** %6, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sub nsw i32 %58, 1
  %60 = load i32, i32* %13, align 4
  %61 = sub nsw i32 %59, %60
  %62 = call i32 (%struct.tl_compiler*, i8*, ...) @tl_failf(%struct.tl_compiler* %57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  store i32 %62, i32* %5, align 4
  br label %143

63:                                               ; preds = %51
  %64 = load i8*, i8** %11, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i64*, i64** @P, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sdiv i32 %69, 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %68, i64 %71
  %73 = bitcast i64* %72 to i8*
  %74 = icmp ule i8* %67, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  %77 = load i32, i32* @PACKET_BUFFER_SIZE, align 4
  %78 = load i32, i32* %7, align 4
  %79 = sub nsw i32 %77, %78
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %14, align 4
  store i32 %80, i32* %15, align 4
  %81 = load i64*, i64** @P, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sdiv i32 %82, 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %81, i64 %84
  %86 = bitcast i64* %85 to i32*
  %87 = load i8*, i8** %11, align 8
  %88 = bitcast i8* %87 to i32*
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @gzdecode(i32* %86, i32* %15, i32* %88, i32 %89)
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* @Z_OK, align 4
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %124

94:                                               ; preds = %63
  %95 = load %struct.tl_compiler*, %struct.tl_compiler** %6, align 8
  %96 = load i64*, i64** @P, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sdiv i32 %97, 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %96, i64 %99
  %101 = load i32, i32* %14, align 4
  %102 = load i8*, i8** %11, align 8
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* @Z_MEM_ERROR, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %94
  br label %121

108:                                              ; preds = %94
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* @Z_BUF_ERROR, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  br label %119

113:                                              ; preds = %108
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* @Z_DATA_ERROR, align 4
  %116 = icmp eq i32 %114, %115
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)
  br label %119

119:                                              ; preds = %113, %112
  %120 = phi i8* [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), %112 ], [ %118, %113 ]
  br label %121

121:                                              ; preds = %119, %107
  %122 = phi i8* [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), %107 ], [ %120, %119 ]
  %123 = call i32 (%struct.tl_compiler*, i8*, ...) @tl_failf(%struct.tl_compiler* %95, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64* %100, i32 %101, i8* %102, i32 %103, i8* %122)
  store i32 %123, i32* %5, align 4
  br label %143

124:                                              ; preds = %63
  %125 = load i32, i32* %15, align 4
  %126 = srem i32 %125, 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = load %struct.tl_compiler*, %struct.tl_compiler** %6, align 8
  %130 = load i32, i32* %15, align 4
  %131 = call i32 (%struct.tl_compiler*, i8*, ...) @tl_failf(%struct.tl_compiler* %129, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %130)
  store i32 %131, i32* %5, align 4
  br label %143

132:                                              ; preds = %124
  %133 = load i64*, i64** @P, align 8
  %134 = load i32, i32* %7, align 4
  %135 = sdiv i32 %134, 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %133, i64 %136
  %138 = bitcast i64* %137 to i32*
  %139 = load i32**, i32*** %8, align 8
  store i32* %138, i32** %139, align 8
  %140 = load i32, i32* %15, align 4
  %141 = sdiv i32 %140, 4
  %142 = load i32*, i32** %9, align 8
  store i32 %141, i32* %142, align 4
  store i32 1, i32* %5, align 4
  br label %143

143:                                              ; preds = %132, %128, %121, %56, %48, %30, %23
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local i32 @tl_fetch_string(i64*, i32, i8**, i32*, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @tl_failf(%struct.tl_compiler*, i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @gzdecode(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
