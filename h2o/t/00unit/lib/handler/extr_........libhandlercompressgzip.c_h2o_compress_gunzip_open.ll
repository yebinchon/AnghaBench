; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_........libhandlercompressgzip.c_h2o_compress_gunzip_open.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_........libhandlercompressgzip.c_h2o_compress_gunzip_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32 }
%struct.st_gzip_context_t = type { %struct.TYPE_3__, i32 }

@.str = private unnamed_addr constant [7 x i8] c"gunzip\00", align 1
@do_decompress = common dso_local global i32 0, align 4
@WINDOW_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_3__* @h2o_compress_gunzip_open(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.st_gzip_context_t*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call %struct.st_gzip_context_t* @gzip_open(i32* %4)
  store %struct.st_gzip_context_t* %5, %struct.st_gzip_context_t** %3, align 8
  %6 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @h2o_iovec_init(i32 %6)
  %8 = load %struct.st_gzip_context_t*, %struct.st_gzip_context_t** %3, align 8
  %9 = getelementptr inbounds %struct.st_gzip_context_t, %struct.st_gzip_context_t* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  store i32 %7, i32* %10, align 4
  %11 = load i32, i32* @do_decompress, align 4
  %12 = load %struct.st_gzip_context_t*, %struct.st_gzip_context_t** %3, align 8
  %13 = getelementptr inbounds %struct.st_gzip_context_t, %struct.st_gzip_context_t* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  store i32 %11, i32* %14, align 8
  %15 = load %struct.st_gzip_context_t*, %struct.st_gzip_context_t** %3, align 8
  %16 = getelementptr inbounds %struct.st_gzip_context_t, %struct.st_gzip_context_t* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32* null, i32** %17, align 8
  %18 = load %struct.st_gzip_context_t*, %struct.st_gzip_context_t** %3, align 8
  %19 = getelementptr inbounds %struct.st_gzip_context_t, %struct.st_gzip_context_t* %18, i32 0, i32 1
  %20 = load i32, i32* @WINDOW_BITS, align 4
  %21 = call i32 @inflateInit2(i32* %19, i32 %20)
  %22 = load %struct.st_gzip_context_t*, %struct.st_gzip_context_t** %3, align 8
  %23 = getelementptr inbounds %struct.st_gzip_context_t, %struct.st_gzip_context_t* %22, i32 0, i32 0
  ret %struct.TYPE_3__* %23
}

declare dso_local %struct.st_gzip_context_t* @gzip_open(i32*) #1

declare dso_local i32 @h2o_iovec_init(i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

declare dso_local i32 @inflateInit2(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
