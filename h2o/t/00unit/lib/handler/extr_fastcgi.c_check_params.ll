; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_fastcgi.c_check_params.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_fastcgi.c_check_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%struct.st_fcgi_record_header_t = type { i64, i64, i64, i64, i32, i32 }

@FCGI_RECORD_HEADER_SIZE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"record too short (index: %zu)\0A\00", align 1
@FCGI_VERSION_1 = common dso_local global i64 0, align 8
@FCGI_PARAMS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"header is corrupt (index: %zu)\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"unexpected request id (index: %zu)\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"unexpected body size (index: %zu)\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"PARAMS content mistach\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i64*, i64, i8*, i64)* @check_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_params(%struct.TYPE_3__* %0, i64* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [4096 x i8], align 16
  %13 = alloca i64, align 8
  %14 = alloca %struct.st_fcgi_record_header_t*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 0, i64* %13, align 8
  br label %15

15:                                               ; preds = %5, %135
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %17 = load i64*, i64** %8, align 8
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @FCGI_RECORD_HEADER_SIZE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %15
  %25 = load i32, i32* @stderr, align 4
  %26 = load i64*, i64** %8, align 8
  %27 = load i64, i64* %26, align 8
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %27)
  store i32 0, i32* %6, align 4
  br label %174

29:                                               ; preds = %15
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %31 = load i64*, i64** %8, align 8
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = bitcast i8* %36 to %struct.st_fcgi_record_header_t*
  store %struct.st_fcgi_record_header_t* %37, %struct.st_fcgi_record_header_t** %14, align 8
  %38 = load %struct.st_fcgi_record_header_t*, %struct.st_fcgi_record_header_t** %14, align 8
  %39 = getelementptr inbounds %struct.st_fcgi_record_header_t, %struct.st_fcgi_record_header_t* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @FCGI_VERSION_1, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %59, label %43

43:                                               ; preds = %29
  %44 = load %struct.st_fcgi_record_header_t*, %struct.st_fcgi_record_header_t** %14, align 8
  %45 = getelementptr inbounds %struct.st_fcgi_record_header_t, %struct.st_fcgi_record_header_t* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @FCGI_PARAMS, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %59, label %49

49:                                               ; preds = %43
  %50 = load %struct.st_fcgi_record_header_t*, %struct.st_fcgi_record_header_t** %14, align 8
  %51 = getelementptr inbounds %struct.st_fcgi_record_header_t, %struct.st_fcgi_record_header_t* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load %struct.st_fcgi_record_header_t*, %struct.st_fcgi_record_header_t** %14, align 8
  %56 = getelementptr inbounds %struct.st_fcgi_record_header_t, %struct.st_fcgi_record_header_t* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54, %49, %43, %29
  %60 = load i32, i32* @stderr, align 4
  %61 = load i64*, i64** %8, align 8
  %62 = load i64, i64* %61, align 8
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %62)
  store i32 0, i32* %6, align 4
  br label %174

64:                                               ; preds = %54
  %65 = load %struct.st_fcgi_record_header_t*, %struct.st_fcgi_record_header_t** %14, align 8
  %66 = getelementptr inbounds %struct.st_fcgi_record_header_t, %struct.st_fcgi_record_header_t* %65, i32 0, i32 5
  %67 = bitcast i32* %66 to i8*
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 4
  %70 = zext i8 %69 to i32
  %71 = shl i32 %70, 8
  %72 = load %struct.st_fcgi_record_header_t*, %struct.st_fcgi_record_header_t** %14, align 8
  %73 = getelementptr inbounds %struct.st_fcgi_record_header_t, %struct.st_fcgi_record_header_t* %72, i32 0, i32 5
  %74 = bitcast i32* %73 to i8*
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = or i32 %71, %77
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* %9, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %64
  %83 = load i32, i32* @stderr, align 4
  %84 = load i64*, i64** %8, align 8
  %85 = load i64, i64* %84, align 8
  %86 = call i32 (i32, i8*, ...) @fprintf(i32 %83, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %85)
  store i32 0, i32* %6, align 4
  br label %174

87:                                               ; preds = %64
  %88 = load i64*, i64** %8, align 8
  %89 = load i64, i64* %88, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %88, align 8
  %91 = load %struct.st_fcgi_record_header_t*, %struct.st_fcgi_record_header_t** %14, align 8
  %92 = getelementptr inbounds %struct.st_fcgi_record_header_t, %struct.st_fcgi_record_header_t* %91, i32 0, i32 4
  %93 = bitcast i32* %92 to i8*
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  %95 = load i8, i8* %94, align 8
  %96 = zext i8 %95 to i32
  %97 = shl i32 %96, 8
  %98 = load %struct.st_fcgi_record_header_t*, %struct.st_fcgi_record_header_t** %14, align 8
  %99 = getelementptr inbounds %struct.st_fcgi_record_header_t, %struct.st_fcgi_record_header_t* %98, i32 0, i32 4
  %100 = bitcast i32* %99 to i8*
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = or i32 %97, %103
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %87
  br label %163

107:                                              ; preds = %87
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %109 = load i64*, i64** %8, align 8
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.st_fcgi_record_header_t*, %struct.st_fcgi_record_header_t** %14, align 8
  %115 = getelementptr inbounds %struct.st_fcgi_record_header_t, %struct.st_fcgi_record_header_t* %114, i32 0, i32 4
  %116 = bitcast i32* %115 to i8*
  %117 = getelementptr inbounds i8, i8* %116, i64 0
  %118 = load i8, i8* %117, align 8
  %119 = zext i8 %118 to i32
  %120 = shl i32 %119, 8
  %121 = load %struct.st_fcgi_record_header_t*, %struct.st_fcgi_record_header_t** %14, align 8
  %122 = getelementptr inbounds %struct.st_fcgi_record_header_t, %struct.st_fcgi_record_header_t* %121, i32 0, i32 4
  %123 = bitcast i32* %122 to i8*
  %124 = getelementptr inbounds i8, i8* %123, i64 1
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = or i32 %120, %126
  %128 = sext i32 %127 to i64
  %129 = icmp ne i64 %113, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %107
  %131 = load i32, i32* @stderr, align 4
  %132 = load i64*, i64** %8, align 8
  %133 = load i64, i64* %132, align 8
  %134 = call i32 (i32, i8*, ...) @fprintf(i32 %131, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %133)
  store i32 0, i32* %6, align 4
  br label %174

135:                                              ; preds = %107
  %136 = getelementptr inbounds [4096 x i8], [4096 x i8]* %12, i64 0, i64 0
  %137 = load i64, i64* %13, align 8
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %140 = load i64*, i64** %8, align 8
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %146 = load i64*, i64** %8, align 8
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @memcpy(i8* %138, i64 %144, i64 %150)
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %153 = load i64*, i64** %8, align 8
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* %13, align 8
  %159 = add i64 %158, %157
  store i64 %159, i64* %13, align 8
  %160 = load i64*, i64** %8, align 8
  %161 = load i64, i64* %160, align 8
  %162 = add i64 %161, 1
  store i64 %162, i64* %160, align 8
  br label %15

163:                                              ; preds = %106
  %164 = getelementptr inbounds [4096 x i8], [4096 x i8]* %12, i64 0, i64 0
  %165 = load i64, i64* %13, align 8
  %166 = load i8*, i8** %10, align 8
  %167 = load i64, i64* %11, align 8
  %168 = call i32 @h2o_memis(i8* %164, i64 %165, i8* %166, i64 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %163
  %171 = load i32, i32* @stderr, align 4
  %172 = call i32 (i32, i8*, ...) @fprintf(i32 %171, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %174

173:                                              ; preds = %163
  store i32 1, i32* %6, align 4
  br label %174

174:                                              ; preds = %173, %170, %130, %82, %59, %24
  %175 = load i32, i32* %6, align 4
  ret i32 %175
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

declare dso_local i32 @h2o_memis(i8*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
