; ModuleID = '/home/carl/AnghaBench/h2o/src/extr_main.c_ocsp_updater_thread.c'
source_filename = "/home/carl/AnghaBench/h2o/src/extr_main.c_ocsp_updater_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.listener_ssl_config_t = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }

@UINT_MAX = common dso_local global i64 0, align 8
@ocsp_updater_semaphore = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"[OCSP Stapling] successfully updated the response for certificate file:%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [100 x i8] c"[OCSP Stapling] OCSP stapling is temporary disabled due to repeated errors for certificate file:%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [125 x i8] c"[OCSP Stapling] reusing old response due to a temporary error occurred while fetching OCSP response for certificate file:%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"[OCSP Stapling] disabled for certificate file:%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @ocsp_updater_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ocsp_updater_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.listener_ssl_config_t*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.listener_ssl_config_t*
  store %struct.listener_ssl_config_t* %11, %struct.listener_ssl_config_t** %3, align 8
  store i64 0, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.listener_ssl_config_t*, %struct.listener_ssl_config_t** %3, align 8
  %13 = getelementptr inbounds %struct.listener_ssl_config_t, %struct.listener_ssl_config_t* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  br label %19

19:                                               ; preds = %1, %36, %93
  %20 = call i64 @time(i32* null)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = sub nsw i64 %24, %25
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @UINT_MAX, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i64, i64* %9, align 8
  %32 = trunc i64 %31 to i32
  %33 = zext i32 %32 to i64
  br label %36

34:                                               ; preds = %23
  %35 = load i64, i64* @UINT_MAX, align 8
  br label %36

36:                                               ; preds = %34, %30
  %37 = phi i64 [ %33, %30 ], [ %35, %34 ]
  %38 = trunc i64 %37 to i32
  %39 = call i32 @sleep(i32 %38)
  br label %19

40:                                               ; preds = %19
  %41 = call i32 @h2o_sem_wait(i32* @ocsp_updater_semaphore)
  %42 = load %struct.listener_ssl_config_t*, %struct.listener_ssl_config_t** %3, align 8
  %43 = getelementptr inbounds %struct.listener_ssl_config_t, %struct.listener_ssl_config_t* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.listener_ssl_config_t*, %struct.listener_ssl_config_t** %3, align 8
  %46 = getelementptr inbounds %struct.listener_ssl_config_t, %struct.listener_ssl_config_t* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @get_ocsp_response(i8* %44, i32 %48, i32** %8)
  store i32 %49, i32* %7, align 4
  %50 = call i32 @h2o_sem_post(i32* @ocsp_updater_semaphore)
  %51 = load i32, i32* %7, align 4
  switch i32 %51, label %85 [
    i32 0, label %52
    i32 128, label %61
  ]

52:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  %53 = load %struct.listener_ssl_config_t*, %struct.listener_ssl_config_t** %3, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @update_ocsp_stapling(%struct.listener_ssl_config_t* %53, i32* %54)
  %56 = load i32, i32* @stderr, align 4
  %57 = load %struct.listener_ssl_config_t*, %struct.listener_ssl_config_t** %3, align 8
  %58 = getelementptr inbounds %struct.listener_ssl_config_t, %struct.listener_ssl_config_t* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @fprintf(i32 %56, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i8* %59)
  br label %93

61:                                               ; preds = %40
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.listener_ssl_config_t*, %struct.listener_ssl_config_t** %3, align 8
  %64 = getelementptr inbounds %struct.listener_ssl_config_t, %struct.listener_ssl_config_t* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %62, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %61
  %69 = load i32, i32* @stderr, align 4
  %70 = load %struct.listener_ssl_config_t*, %struct.listener_ssl_config_t** %3, align 8
  %71 = getelementptr inbounds %struct.listener_ssl_config_t, %struct.listener_ssl_config_t* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @fprintf(i32 %69, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.1, i64 0, i64 0), i8* %72)
  %74 = load %struct.listener_ssl_config_t*, %struct.listener_ssl_config_t** %3, align 8
  %75 = call i32 @update_ocsp_stapling(%struct.listener_ssl_config_t* %74, i32* null)
  br label %84

76:                                               ; preds = %61
  %77 = load i32, i32* @stderr, align 4
  %78 = load %struct.listener_ssl_config_t*, %struct.listener_ssl_config_t** %3, align 8
  %79 = getelementptr inbounds %struct.listener_ssl_config_t, %struct.listener_ssl_config_t* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @fprintf(i32 %77, i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.2, i64 0, i64 0), i8* %80)
  %82 = load i32, i32* %6, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %76, %68
  br label %93

85:                                               ; preds = %40
  %86 = load %struct.listener_ssl_config_t*, %struct.listener_ssl_config_t** %3, align 8
  %87 = call i32 @update_ocsp_stapling(%struct.listener_ssl_config_t* %86, i32* null)
  %88 = load i32, i32* @stderr, align 4
  %89 = load %struct.listener_ssl_config_t*, %struct.listener_ssl_config_t** %3, align 8
  %90 = getelementptr inbounds %struct.listener_ssl_config_t, %struct.listener_ssl_config_t* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @fprintf(i32 %88, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i8* %91)
  br label %100

93:                                               ; preds = %84, %52
  %94 = call i64 @time(i32* null)
  %95 = load %struct.listener_ssl_config_t*, %struct.listener_ssl_config_t** %3, align 8
  %96 = getelementptr inbounds %struct.listener_ssl_config_t, %struct.listener_ssl_config_t* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %94, %98
  store i64 %99, i64* %4, align 8
  br label %19

100:                                              ; preds = %85
  ret i8* null
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @h2o_sem_wait(i32*) #1

declare dso_local i32 @get_ocsp_response(i8*, i32, i32**) #1

declare dso_local i32 @h2o_sem_post(i32*) #1

declare dso_local i32 @update_ocsp_stapling(%struct.listener_ssl_config_t*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
