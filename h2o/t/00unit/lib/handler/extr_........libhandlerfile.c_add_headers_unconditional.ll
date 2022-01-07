; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_........libhandlerfile.c_add_headers_unconditional.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_........libhandlerfile.c_add_headers_unconditional.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_sendfile_generator_t = type { i64, %struct.TYPE_8__, %struct.TYPE_7__, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }

@H2O_TOKEN_ETAG = common dso_local global i32 0, align 4
@H2O_TOKEN_VARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"accept-encoding\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_h2o_sendfile_generator_t*, %struct.TYPE_9__*)* @add_headers_unconditional to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_headers_unconditional(%struct.st_h2o_sendfile_generator_t* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.st_h2o_sendfile_generator_t*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  store %struct.st_h2o_sendfile_generator_t* %0, %struct.st_h2o_sendfile_generator_t** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %6 = load %struct.st_h2o_sendfile_generator_t*, %struct.st_h2o_sendfile_generator_t** %3, align 8
  %7 = getelementptr inbounds %struct.st_h2o_sendfile_generator_t, %struct.st_h2o_sendfile_generator_t* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %2
  %11 = load %struct.st_h2o_sendfile_generator_t*, %struct.st_h2o_sendfile_generator_t** %3, align 8
  %12 = getelementptr inbounds %struct.st_h2o_sendfile_generator_t, %struct.st_h2o_sendfile_generator_t* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.st_h2o_sendfile_generator_t*, %struct.st_h2o_sendfile_generator_t** %3, align 8
  %16 = getelementptr inbounds %struct.st_h2o_sendfile_generator_t, %struct.st_h2o_sendfile_generator_t* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @h2o_filecache_get_etag(i32 %14, i32 %18)
  store i64 %19, i64* %5, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* @H2O_TOKEN_ETAG, align 4
  %26 = load %struct.st_h2o_sendfile_generator_t*, %struct.st_h2o_sendfile_generator_t** %3, align 8
  %27 = getelementptr inbounds %struct.st_h2o_sendfile_generator_t, %struct.st_h2o_sendfile_generator_t* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @h2o_add_header(i32* %21, i32* %24, i32 %25, i32* null, i32 %29, i64 %30)
  br label %32

32:                                               ; preds = %10, %2
  %33 = load %struct.st_h2o_sendfile_generator_t*, %struct.st_h2o_sendfile_generator_t** %3, align 8
  %34 = getelementptr inbounds %struct.st_h2o_sendfile_generator_t, %struct.st_h2o_sendfile_generator_t* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* @H2O_TOKEN_VARY, align 4
  %44 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %45 = call i32 @h2o_set_header_token(i32* %39, i32* %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %37, %32
  ret void
}

declare dso_local i64 @h2o_filecache_get_etag(i32, i32) #1

declare dso_local i32 @h2o_add_header(i32*, i32*, i32, i32*, i32, i64) #1

declare dso_local i32 @h2o_set_header_token(i32*, i32*, i32, i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
