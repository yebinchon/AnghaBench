; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/compress/extr_gzip.c_gzip_open.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/compress/extr_gzip.c_gzip_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_gzip_context_t = type { i32, i32, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32*, i32, i32 }
%struct.TYPE_4__ = type { i32*, i32*, i32 }

@do_free = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"gzip\00", align 1
@alloc_cb = common dso_local global i32 0, align 4
@free_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.st_gzip_context_t* (i32*)* @gzip_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.st_gzip_context_t* @gzip_open(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.st_gzip_context_t*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = load i32, i32* @do_free, align 4
  %6 = call %struct.st_gzip_context_t* @h2o_mem_alloc_shared(i32* %4, i32 48, i32 %5)
  store %struct.st_gzip_context_t* %6, %struct.st_gzip_context_t** %3, align 8
  %7 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @h2o_iovec_init(i32 %7)
  %9 = load %struct.st_gzip_context_t*, %struct.st_gzip_context_t** %3, align 8
  %10 = getelementptr inbounds %struct.st_gzip_context_t, %struct.st_gzip_context_t* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  store i32 %8, i32* %11, align 8
  %12 = load %struct.st_gzip_context_t*, %struct.st_gzip_context_t** %3, align 8
  %13 = getelementptr inbounds %struct.st_gzip_context_t, %struct.st_gzip_context_t* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store i32* null, i32** %14, align 8
  %15 = load %struct.st_gzip_context_t*, %struct.st_gzip_context_t** %3, align 8
  %16 = getelementptr inbounds %struct.st_gzip_context_t, %struct.st_gzip_context_t* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32* null, i32** %17, align 8
  %18 = load i32, i32* @alloc_cb, align 4
  %19 = load %struct.st_gzip_context_t*, %struct.st_gzip_context_t** %3, align 8
  %20 = getelementptr inbounds %struct.st_gzip_context_t, %struct.st_gzip_context_t* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* @free_cb, align 4
  %23 = load %struct.st_gzip_context_t*, %struct.st_gzip_context_t** %3, align 8
  %24 = getelementptr inbounds %struct.st_gzip_context_t, %struct.st_gzip_context_t* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 8
  %26 = load %struct.st_gzip_context_t*, %struct.st_gzip_context_t** %3, align 8
  %27 = getelementptr inbounds %struct.st_gzip_context_t, %struct.st_gzip_context_t* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  %29 = load %struct.st_gzip_context_t*, %struct.st_gzip_context_t** %3, align 8
  %30 = getelementptr inbounds %struct.st_gzip_context_t, %struct.st_gzip_context_t* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.st_gzip_context_t*, %struct.st_gzip_context_t** %3, align 8
  %32 = getelementptr inbounds %struct.st_gzip_context_t, %struct.st_gzip_context_t* %31, i32 0, i32 1
  %33 = call i32 @memset(i32* %32, i32 0, i32 4)
  %34 = load %struct.st_gzip_context_t*, %struct.st_gzip_context_t** %3, align 8
  %35 = call i32 @expand_buf(%struct.st_gzip_context_t* %34)
  %36 = load %struct.st_gzip_context_t*, %struct.st_gzip_context_t** %3, align 8
  ret %struct.st_gzip_context_t* %36
}

declare dso_local %struct.st_gzip_context_t* @h2o_mem_alloc_shared(i32*, i32, i32) #1

declare dso_local i32 @h2o_iovec_init(i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @expand_buf(%struct.st_gzip_context_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
