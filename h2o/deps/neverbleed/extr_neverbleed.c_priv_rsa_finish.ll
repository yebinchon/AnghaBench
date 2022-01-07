; ModuleID = '/home/carl/AnghaBench/h2o/deps/neverbleed/extr_neverbleed.c_priv_rsa_finish.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/neverbleed/extr_neverbleed.c_priv_rsa_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_neverbleed_rsa_exdata_t = type { i32 }
%struct.st_neverbleed_thread_data_t = type { i32 }
%struct.expbuf_t = type { i32* }

@.str = private unnamed_addr constant [12 x i8] c"del_rsa_key\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"connection closed by daemon\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"read error\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"failed to parse response\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @priv_rsa_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @priv_rsa_finish(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.st_neverbleed_rsa_exdata_t*, align 8
  %4 = alloca %struct.st_neverbleed_thread_data_t*, align 8
  %5 = alloca %struct.expbuf_t, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @get_privsep_data(i32* %7, %struct.st_neverbleed_rsa_exdata_t** %3, %struct.st_neverbleed_thread_data_t** %4)
  %9 = bitcast %struct.expbuf_t* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 8, i1 false)
  %10 = call i32 @expbuf_push_str(%struct.expbuf_t* %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.st_neverbleed_rsa_exdata_t*, %struct.st_neverbleed_rsa_exdata_t** %3, align 8
  %12 = getelementptr inbounds %struct.st_neverbleed_rsa_exdata_t, %struct.st_neverbleed_rsa_exdata_t* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @expbuf_push_num(%struct.expbuf_t* %5, i32 %13)
  %15 = load %struct.st_neverbleed_thread_data_t*, %struct.st_neverbleed_thread_data_t** %4, align 8
  %16 = getelementptr inbounds %struct.st_neverbleed_thread_data_t, %struct.st_neverbleed_thread_data_t* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @expbuf_write(%struct.expbuf_t* %5, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load i64, i64* @errno, align 8
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0)
  %25 = call i32 @dief(i8* %24)
  br label %26

26:                                               ; preds = %20, %1
  %27 = call i32 @expbuf_dispose(%struct.expbuf_t* %5)
  %28 = load %struct.st_neverbleed_thread_data_t*, %struct.st_neverbleed_thread_data_t** %4, align 8
  %29 = getelementptr inbounds %struct.st_neverbleed_thread_data_t, %struct.st_neverbleed_thread_data_t* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @expbuf_read(%struct.expbuf_t* %5, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load i64, i64* @errno, align 8
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0)
  %38 = call i32 @dief(i8* %37)
  br label %39

39:                                               ; preds = %33, %26
  %40 = call i64 @expbuf_shift_num(%struct.expbuf_t* %5, i64* %6)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  store i64 0, i64* @errno, align 8
  %43 = call i32 @dief(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %39
  %45 = call i32 @expbuf_dispose(%struct.expbuf_t* %5)
  %46 = load i64, i64* %6, align 8
  %47 = trunc i64 %46 to i32
  ret i32 %47
}

declare dso_local i32 @get_privsep_data(i32*, %struct.st_neverbleed_rsa_exdata_t**, %struct.st_neverbleed_thread_data_t**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @expbuf_push_str(%struct.expbuf_t*, i8*) #1

declare dso_local i32 @expbuf_push_num(%struct.expbuf_t*, i32) #1

declare dso_local i64 @expbuf_write(%struct.expbuf_t*, i32) #1

declare dso_local i32 @dief(i8*) #1

declare dso_local i32 @expbuf_dispose(%struct.expbuf_t*) #1

declare dso_local i64 @expbuf_read(%struct.expbuf_t*, i32) #1

declare dso_local i64 @expbuf_shift_num(%struct.expbuf_t*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
