; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_........libhandlerfile.c_h2o_file_register_file.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_........libhandlerfile.c_h2o_file_register_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.st_h2o_specific_file_handler_t = type { i32, %struct.TYPE_3__, i32*, i32 }

@specific_handler_on_context_init = common dso_local global i32 0, align 4
@specific_handler_on_context_dispose = common dso_local global i32 0, align 4
@specific_handler_on_dispose = common dso_local global i32 0, align 4
@specific_handler_on_req = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_3__* @h2o_file_register_file(i32* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.st_h2o_specific_file_handler_t*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = call i64 @h2o_create_handler(i32* %10, i32 40)
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.st_h2o_specific_file_handler_t*
  store %struct.st_h2o_specific_file_handler_t* %13, %struct.st_h2o_specific_file_handler_t** %9, align 8
  %14 = load i32, i32* @specific_handler_on_context_init, align 4
  %15 = load %struct.st_h2o_specific_file_handler_t*, %struct.st_h2o_specific_file_handler_t** %9, align 8
  %16 = getelementptr inbounds %struct.st_h2o_specific_file_handler_t, %struct.st_h2o_specific_file_handler_t* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  store i32 %14, i32* %17, align 4
  %18 = load i32, i32* @specific_handler_on_context_dispose, align 4
  %19 = load %struct.st_h2o_specific_file_handler_t*, %struct.st_h2o_specific_file_handler_t** %9, align 8
  %20 = getelementptr inbounds %struct.st_h2o_specific_file_handler_t, %struct.st_h2o_specific_file_handler_t* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* @specific_handler_on_dispose, align 4
  %23 = load %struct.st_h2o_specific_file_handler_t*, %struct.st_h2o_specific_file_handler_t** %9, align 8
  %24 = getelementptr inbounds %struct.st_h2o_specific_file_handler_t, %struct.st_h2o_specific_file_handler_t* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @specific_handler_on_req, align 4
  %27 = load %struct.st_h2o_specific_file_handler_t*, %struct.st_h2o_specific_file_handler_t** %9, align 8
  %28 = getelementptr inbounds %struct.st_h2o_specific_file_handler_t, %struct.st_h2o_specific_file_handler_t* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* @SIZE_MAX, align 4
  %32 = call i32 @h2o_strdup(i32* null, i8* %30, i32 %31)
  %33 = load %struct.st_h2o_specific_file_handler_t*, %struct.st_h2o_specific_file_handler_t** %9, align 8
  %34 = getelementptr inbounds %struct.st_h2o_specific_file_handler_t, %struct.st_h2o_specific_file_handler_t* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @h2o_mem_addref_shared(i32* %35)
  %37 = load i32*, i32** %7, align 8
  %38 = load %struct.st_h2o_specific_file_handler_t*, %struct.st_h2o_specific_file_handler_t** %9, align 8
  %39 = getelementptr inbounds %struct.st_h2o_specific_file_handler_t, %struct.st_h2o_specific_file_handler_t* %38, i32 0, i32 2
  store i32* %37, i32** %39, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.st_h2o_specific_file_handler_t*, %struct.st_h2o_specific_file_handler_t** %9, align 8
  %42 = getelementptr inbounds %struct.st_h2o_specific_file_handler_t, %struct.st_h2o_specific_file_handler_t* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.st_h2o_specific_file_handler_t*, %struct.st_h2o_specific_file_handler_t** %9, align 8
  %44 = getelementptr inbounds %struct.st_h2o_specific_file_handler_t, %struct.st_h2o_specific_file_handler_t* %43, i32 0, i32 1
  ret %struct.TYPE_3__* %44
}

declare dso_local i64 @h2o_create_handler(i32*, i32) #1

declare dso_local i32 @h2o_strdup(i32*, i8*, i32) #1

declare dso_local i32 @h2o_mem_addref_shared(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
