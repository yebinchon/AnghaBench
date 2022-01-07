; ModuleID = '/home/carl/AnghaBench/h2o/lib/core/extr_request.c_h2o_reprocess_request_deferred.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/core/extr_request.c_h2o_reprocess_request_deferred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_reprocess_request_deferred_t = type { i32, i32*, i8*, i8*, i32*, i8* }

@on_reprocess_request_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h2o_reprocess_request_deferred(i32* %0, i8* %1, i32* %2, i8* %3, i8* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.st_reprocess_request_deferred_t*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* @on_reprocess_request_cb, align 4
  %18 = call i64 @create_deferred_action(i32* %16, i32 48, i32 %17)
  %19 = inttoptr i64 %18 to %struct.st_reprocess_request_deferred_t*
  store %struct.st_reprocess_request_deferred_t* %19, %struct.st_reprocess_request_deferred_t** %15, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = load %struct.st_reprocess_request_deferred_t*, %struct.st_reprocess_request_deferred_t** %15, align 8
  %22 = getelementptr inbounds %struct.st_reprocess_request_deferred_t, %struct.st_reprocess_request_deferred_t* %21, i32 0, i32 5
  store i8* %20, i8** %22, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = load %struct.st_reprocess_request_deferred_t*, %struct.st_reprocess_request_deferred_t** %15, align 8
  %25 = getelementptr inbounds %struct.st_reprocess_request_deferred_t, %struct.st_reprocess_request_deferred_t* %24, i32 0, i32 4
  store i32* %23, i32** %25, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = load %struct.st_reprocess_request_deferred_t*, %struct.st_reprocess_request_deferred_t** %15, align 8
  %28 = getelementptr inbounds %struct.st_reprocess_request_deferred_t, %struct.st_reprocess_request_deferred_t* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = load %struct.st_reprocess_request_deferred_t*, %struct.st_reprocess_request_deferred_t** %15, align 8
  %31 = getelementptr inbounds %struct.st_reprocess_request_deferred_t, %struct.st_reprocess_request_deferred_t* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = load %struct.st_reprocess_request_deferred_t*, %struct.st_reprocess_request_deferred_t** %15, align 8
  %34 = getelementptr inbounds %struct.st_reprocess_request_deferred_t, %struct.st_reprocess_request_deferred_t* %33, i32 0, i32 1
  store i32* %32, i32** %34, align 8
  %35 = load i32, i32* %14, align 4
  %36 = load %struct.st_reprocess_request_deferred_t*, %struct.st_reprocess_request_deferred_t** %15, align 8
  %37 = getelementptr inbounds %struct.st_reprocess_request_deferred_t, %struct.st_reprocess_request_deferred_t* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  ret void
}

declare dso_local i64 @create_deferred_action(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
