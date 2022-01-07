; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_redis.c_connect_method.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_redis.c_connect_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_mruby_redis_client_t = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@H2O_REDIS_CONNECTION_STATE_CLOSED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"@host\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"@port\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @connect_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connect_method(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.st_h2o_mruby_redis_client_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.st_h2o_mruby_redis_client_t* @DATA_PTR(i32 %11)
  store %struct.st_h2o_mruby_redis_client_t* %12, %struct.st_h2o_mruby_redis_client_t** %6, align 8
  %13 = load %struct.st_h2o_mruby_redis_client_t*, %struct.st_h2o_mruby_redis_client_t** %6, align 8
  %14 = getelementptr inbounds %struct.st_h2o_mruby_redis_client_t, %struct.st_h2o_mruby_redis_client_t* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @H2O_REDIS_CONNECTION_STATE_CLOSED, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %3, align 4
  br label %42

21:                                               ; preds = %2
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @mrb_intern_lit(i32* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 @mrb_iv_get(i32* %22, i32 %23, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @mrb_intern_lit(i32* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %31 = call i32 @mrb_iv_get(i32* %27, i32 %28, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = call i8* @mrb_string_value_cstr(i32* %32, i32* %7)
  store i8* %33, i8** %9, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @mrb_fixnum(i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load %struct.st_h2o_mruby_redis_client_t*, %struct.st_h2o_mruby_redis_client_t** %6, align 8
  %37 = getelementptr inbounds %struct.st_h2o_mruby_redis_client_t, %struct.st_h2o_mruby_redis_client_t* %36, i32 0, i32 0
  %38 = load i8*, i8** %9, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @h2o_redis_connect(%struct.TYPE_2__* %37, i8* %38, i32 %39)
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %21, %19
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.st_h2o_mruby_redis_client_t* @DATA_PTR(i32) #1

declare dso_local i32 @mrb_iv_get(i32*, i32, i32) #1

declare dso_local i32 @mrb_intern_lit(i32*, i8*) #1

declare dso_local i8* @mrb_string_value_cstr(i32*, i32*) #1

declare dso_local i32 @mrb_fixnum(i32) #1

declare dso_local i32 @h2o_redis_connect(%struct.TYPE_2__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
