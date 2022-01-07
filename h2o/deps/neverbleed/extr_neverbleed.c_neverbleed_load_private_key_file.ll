; ModuleID = '/home/carl/AnghaBench/h2o/deps/neverbleed/extr_neverbleed.c_neverbleed_load_private_key_file.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/neverbleed/extr_neverbleed.c_neverbleed_load_private_key_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_neverbleed_thread_data_t = type { i32 }
%struct.expbuf_t = type { i32* }

@.str = private unnamed_addr constant [9 x i8] c"load_key\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"connection closed by daemon\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"read error\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"failed to parse response\00", align 1
@NEVERBLEED_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"SSL_CTX_use_PrivateKey failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @neverbleed_load_private_key_file(i32* %0, i32* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.st_neverbleed_thread_data_t*, align 8
  %11 = alloca %struct.expbuf_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call %struct.st_neverbleed_thread_data_t* @get_thread_data(i32* %19)
  store %struct.st_neverbleed_thread_data_t* %20, %struct.st_neverbleed_thread_data_t** %10, align 8
  %21 = bitcast %struct.expbuf_t* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 8, i1 false)
  store i32 1, i32* %12, align 4
  %22 = call i32 @expbuf_push_str(%struct.expbuf_t* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @expbuf_push_str(%struct.expbuf_t* %11, i8* %23)
  %25 = load %struct.st_neverbleed_thread_data_t*, %struct.st_neverbleed_thread_data_t** %10, align 8
  %26 = getelementptr inbounds %struct.st_neverbleed_thread_data_t, %struct.st_neverbleed_thread_data_t* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @expbuf_write(%struct.expbuf_t* %11, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %4
  %31 = load i64, i64* @errno, align 8
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0)
  %35 = call i32 @dief(i8* %34)
  br label %36

36:                                               ; preds = %30, %4
  %37 = call i32 @expbuf_dispose(%struct.expbuf_t* %11)
  %38 = load %struct.st_neverbleed_thread_data_t*, %struct.st_neverbleed_thread_data_t** %10, align 8
  %39 = getelementptr inbounds %struct.st_neverbleed_thread_data_t, %struct.st_neverbleed_thread_data_t* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @expbuf_read(%struct.expbuf_t* %11, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load i64, i64* @errno, align 8
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0)
  %48 = call i32 @dief(i8* %47)
  br label %49

49:                                               ; preds = %43, %36
  %50 = call i64 @expbuf_shift_num(%struct.expbuf_t* %11, i64* %14)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = call i64 @expbuf_shift_num(%struct.expbuf_t* %11, i64* %13)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52, %49
  store i64 0, i64* @errno, align 8
  %56 = call i32 @dief(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %52
  %58 = load i64, i64* %14, align 8
  switch i64 %58, label %73 [
    i64 128, label %59
  ]

59:                                               ; preds = %57
  %60 = call i8* @expbuf_shift_str(%struct.expbuf_t* %11)
  store i8* %60, i8** %16, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = call i8* @expbuf_shift_str(%struct.expbuf_t* %11)
  store i8* %63, i8** %17, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %62, %59
  store i64 0, i64* @errno, align 8
  %66 = call i32 @dief(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %62
  %68 = load i32*, i32** %6, align 8
  %69 = load i64, i64* %13, align 8
  %70 = load i8*, i8** %16, align 8
  %71 = load i8*, i8** %17, align 8
  %72 = call i32* @create_pkey(i32* %68, i64 %69, i8* %70, i8* %71)
  store i32* %72, i32** %15, align 8
  br label %83

73:                                               ; preds = %57
  %74 = call i8* @expbuf_shift_str(%struct.expbuf_t* %11)
  store i8* %74, i8** %18, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  store i64 0, i64* @errno, align 8
  %77 = call i32 @dief(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %73
  %79 = load i8*, i8** %9, align 8
  %80 = load i32, i32* @NEVERBLEED_ERRBUF_SIZE, align 4
  %81 = load i8*, i8** %18, align 8
  %82 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %79, i32 %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %81)
  store i32 -1, i32* %5, align 4
  br label %97

83:                                               ; preds = %67
  %84 = call i32 @expbuf_dispose(%struct.expbuf_t* %11)
  %85 = load i32*, i32** %7, align 8
  %86 = load i32*, i32** %15, align 8
  %87 = call i32 @SSL_CTX_use_PrivateKey(i32* %85, i32* %86)
  %88 = icmp ne i32 %87, 1
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load i8*, i8** %9, align 8
  %91 = load i32, i32* @NEVERBLEED_ERRBUF_SIZE, align 4
  %92 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %90, i32 %91, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %93

93:                                               ; preds = %89, %83
  %94 = load i32*, i32** %15, align 8
  %95 = call i32 @EVP_PKEY_free(i32* %94)
  %96 = load i32, i32* %12, align 4
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %93, %78
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local %struct.st_neverbleed_thread_data_t* @get_thread_data(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @expbuf_push_str(%struct.expbuf_t*, i8*) #1

declare dso_local i64 @expbuf_write(%struct.expbuf_t*, i32) #1

declare dso_local i32 @dief(i8*) #1

declare dso_local i32 @expbuf_dispose(%struct.expbuf_t*) #1

declare dso_local i64 @expbuf_read(%struct.expbuf_t*, i32) #1

declare dso_local i64 @expbuf_shift_num(%struct.expbuf_t*, i64*) #1

declare dso_local i8* @expbuf_shift_str(%struct.expbuf_t*) #1

declare dso_local i32* @create_pkey(i32*, i64, i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @SSL_CTX_use_PrivateKey(i32*, i32*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
