; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_middleware.c_can_build_response_method.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_middleware.c_can_build_response_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_mruby_subreq_t = type { i64 }

@app_request_type = common dso_local global i32 0, align 4
@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"AppRequest#_can_build_response? wrong self\00", align 1
@INITIAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @can_build_response_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_build_response_method(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.st_mruby_subreq_t*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.st_mruby_subreq_t* @mrb_data_check_get_ptr(i32* %6, i32 %7, i32* @app_request_type)
  store %struct.st_mruby_subreq_t* %8, %struct.st_mruby_subreq_t** %5, align 8
  %9 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %5, align 8
  %10 = icmp eq %struct.st_mruby_subreq_t* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %14 = call i32 @mrb_raise(i32* %12, i32 %13, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %11, %2
  %16 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %5, align 8
  %17 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @INITIAL, align 8
  %20 = icmp ne i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @mrb_bool_value(i32 %21)
  ret i32 %22
}

declare dso_local %struct.st_mruby_subreq_t* @mrb_data_check_get_ptr(i32*, i32, i32*) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i32 @mrb_bool_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
