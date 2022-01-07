; ModuleID = '/home/carl/AnghaBench/h2o/deps/neverbleed/extr_neverbleed.c_priv_encdec_proxy.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/neverbleed/extr_neverbleed.c_priv_encdec_proxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_neverbleed_rsa_exdata_t = type { i32 }
%struct.st_neverbleed_thread_data_t = type { i32 }
%struct.expbuf_t = type { i32* }

@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"connection closed by daemon\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"read error\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to parse response\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i8*, i32*, i32)* @priv_encdec_proxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @priv_encdec_proxy(i8* %0, i32 %1, i8* %2, i8* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.st_neverbleed_rsa_exdata_t*, align 8
  %14 = alloca %struct.st_neverbleed_thread_data_t*, align 8
  %15 = alloca %struct.expbuf_t, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %19 = bitcast %struct.expbuf_t* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 8, i1 false)
  %20 = load i32*, i32** %11, align 8
  %21 = call i32 @get_privsep_data(i32* %20, %struct.st_neverbleed_rsa_exdata_t** %13, %struct.st_neverbleed_thread_data_t** %14)
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @expbuf_push_str(%struct.expbuf_t* %15, i8* %22)
  %24 = load i8*, i8** %9, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @expbuf_push_bytes(%struct.expbuf_t* %15, i8* %24, i32 %25)
  %27 = load %struct.st_neverbleed_rsa_exdata_t*, %struct.st_neverbleed_rsa_exdata_t** %13, align 8
  %28 = getelementptr inbounds %struct.st_neverbleed_rsa_exdata_t, %struct.st_neverbleed_rsa_exdata_t* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @expbuf_push_num(%struct.expbuf_t* %15, i32 %29)
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @expbuf_push_num(%struct.expbuf_t* %15, i32 %31)
  %33 = load %struct.st_neverbleed_thread_data_t*, %struct.st_neverbleed_thread_data_t** %14, align 8
  %34 = getelementptr inbounds %struct.st_neverbleed_thread_data_t, %struct.st_neverbleed_thread_data_t* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @expbuf_write(%struct.expbuf_t* %15, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %6
  %39 = load i64, i64* @errno, align 8
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0)
  %43 = call i32 @dief(i8* %42)
  br label %44

44:                                               ; preds = %38, %6
  %45 = call i32 @expbuf_dispose(%struct.expbuf_t* %15)
  %46 = load %struct.st_neverbleed_thread_data_t*, %struct.st_neverbleed_thread_data_t** %14, align 8
  %47 = getelementptr inbounds %struct.st_neverbleed_thread_data_t, %struct.st_neverbleed_thread_data_t* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @expbuf_read(%struct.expbuf_t* %15, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = load i64, i64* @errno, align 8
  %53 = icmp ne i64 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0)
  %56 = call i32 @dief(i8* %55)
  br label %57

57:                                               ; preds = %51, %44
  %58 = call i64 @expbuf_shift_num(%struct.expbuf_t* %15, i64* %16)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = call i8* @expbuf_shift_bytes(%struct.expbuf_t* %15, i64* %18)
  store i8* %61, i8** %17, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %60, %57
  store i64 0, i64* @errno, align 8
  %64 = call i32 @dief(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %60
  %66 = load i8*, i8** %10, align 8
  %67 = load i8*, i8** %17, align 8
  %68 = load i64, i64* %18, align 8
  %69 = call i32 @memcpy(i8* %66, i8* %67, i64 %68)
  %70 = call i32 @expbuf_dispose(%struct.expbuf_t* %15)
  %71 = load i64, i64* %16, align 8
  %72 = trunc i64 %71 to i32
  ret i32 %72
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @get_privsep_data(i32*, %struct.st_neverbleed_rsa_exdata_t**, %struct.st_neverbleed_thread_data_t**) #2

declare dso_local i32 @expbuf_push_str(%struct.expbuf_t*, i8*) #2

declare dso_local i32 @expbuf_push_bytes(%struct.expbuf_t*, i8*, i32) #2

declare dso_local i32 @expbuf_push_num(%struct.expbuf_t*, i32) #2

declare dso_local i64 @expbuf_write(%struct.expbuf_t*, i32) #2

declare dso_local i32 @dief(i8*) #2

declare dso_local i32 @expbuf_dispose(%struct.expbuf_t*) #2

declare dso_local i64 @expbuf_read(%struct.expbuf_t*, i32) #2

declare dso_local i64 @expbuf_shift_num(%struct.expbuf_t*, i64*) #2

declare dso_local i8* @expbuf_shift_bytes(%struct.expbuf_t*, i64*) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
