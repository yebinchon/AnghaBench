; ModuleID = '/home/carl/AnghaBench/h2o/deps/neverbleed/extr_neverbleed.c_neverbleed_setuidgid.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/neverbleed/extr_neverbleed.c_neverbleed_setuidgid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_neverbleed_thread_data_t = type { i32 }
%struct.expbuf_t = type { i32* }

@.str = private unnamed_addr constant [10 x i8] c"setuidgid\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"connection closed by daemon\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"read error\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"failed to parse response\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @neverbleed_setuidgid(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.st_neverbleed_thread_data_t*, align 8
  %8 = alloca %struct.expbuf_t, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call %struct.st_neverbleed_thread_data_t* @get_thread_data(i32* %10)
  store %struct.st_neverbleed_thread_data_t* %11, %struct.st_neverbleed_thread_data_t** %7, align 8
  %12 = bitcast %struct.expbuf_t* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 8, i1 false)
  %13 = call i32 @expbuf_push_str(%struct.expbuf_t* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @expbuf_push_str(%struct.expbuf_t* %8, i8* %14)
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @expbuf_push_num(%struct.expbuf_t* %8, i32 %16)
  %18 = load %struct.st_neverbleed_thread_data_t*, %struct.st_neverbleed_thread_data_t** %7, align 8
  %19 = getelementptr inbounds %struct.st_neverbleed_thread_data_t, %struct.st_neverbleed_thread_data_t* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @expbuf_write(%struct.expbuf_t* %8, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load i64, i64* @errno, align 8
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0)
  %28 = call i32 @dief(i8* %27)
  br label %29

29:                                               ; preds = %23, %3
  %30 = call i32 @expbuf_dispose(%struct.expbuf_t* %8)
  %31 = load %struct.st_neverbleed_thread_data_t*, %struct.st_neverbleed_thread_data_t** %7, align 8
  %32 = getelementptr inbounds %struct.st_neverbleed_thread_data_t, %struct.st_neverbleed_thread_data_t* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @expbuf_read(%struct.expbuf_t* %8, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load i64, i64* @errno, align 8
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0)
  %41 = call i32 @dief(i8* %40)
  br label %42

42:                                               ; preds = %36, %29
  %43 = call i64 @expbuf_shift_num(%struct.expbuf_t* %8, i64* %9)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  store i64 0, i64* @errno, align 8
  %46 = call i32 @dief(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %42
  %48 = call i32 @expbuf_dispose(%struct.expbuf_t* %8)
  %49 = load i64, i64* %9, align 8
  %50 = trunc i64 %49 to i32
  ret i32 %50
}

declare dso_local %struct.st_neverbleed_thread_data_t* @get_thread_data(i32*) #1

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
