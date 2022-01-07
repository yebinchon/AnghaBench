; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_compress.c_test_gzip_simple.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_compress.c_test_gzip_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Z_BEST_SPEED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"hello world\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_gzip_simple() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = call i32 @h2o_mem_init_pool(i32* %1)
  %7 = load i32, i32* @Z_BEST_SPEED, align 4
  %8 = call i32* @h2o_compress_gzip_open(i32* %1, i32 %7)
  store i32* %8, i32** %5, align 8
  %9 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @h2o_sendvec_init_raw(i32* %2, i32 %9)
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @h2o_compress_transform(i32* %11, i32* null, i32* %2, i32 1, i32 1, i32** %3, i64* %4)
  %13 = load i32*, i32** %3, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @check_result(i32* %13, i64 %14, i32 %15)
  %17 = call i32 @h2o_mem_clear_pool(i32* %1)
  ret void
}

declare dso_local i32 @h2o_mem_init_pool(i32*) #1

declare dso_local i32* @h2o_compress_gzip_open(i32*, i32) #1

declare dso_local i32 @h2o_sendvec_init_raw(i32*, i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

declare dso_local i32 @h2o_compress_transform(i32*, i32*, i32*, i32, i32, i32**, i64*) #1

declare dso_local i32 @check_result(i32*, i64, i32) #1

declare dso_local i32 @h2o_mem_clear_pool(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
