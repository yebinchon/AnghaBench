; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_sender.c_send_chunk_method.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_sender.c_send_chunk_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.st_h2o_mruby_callback_sender_t = type { %struct.TYPE_13__*, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_14__ = type { i32* }

@.str = private unnamed_addr constant [3 x i8] c"so\00", align 1
@SIZE_MAX = common dso_local global i64 0, align 8
@E_RUNTIME_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to allocate memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @send_chunk_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_chunk_method(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.st_h2o_mruby_callback_sender_t*, align 8
  %11 = alloca %struct.TYPE_14__, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @mrb_get_args(i32* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %5, i64* %6, i32* %7)
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.TYPE_11__* @h2o_mruby_get_generator(i32* %15, i32 %16)
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %8, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %20 = call i32 @check_precond(i32* %18, %struct.TYPE_11__* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @mrb_nil_p(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @mrb_exc_raise(i32* %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %2
  %29 = load i64, i64* %6, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %116

31:                                               ; preds = %28
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = bitcast i8* %35 to %struct.st_h2o_mruby_callback_sender_t*
  store %struct.st_h2o_mruby_callback_sender_t* %36, %struct.st_h2o_mruby_callback_sender_t** %10, align 8
  %37 = load %struct.st_h2o_mruby_callback_sender_t*, %struct.st_h2o_mruby_callback_sender_t** %10, align 8
  %38 = getelementptr inbounds %struct.st_h2o_mruby_callback_sender_t, %struct.st_h2o_mruby_callback_sender_t* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SIZE_MAX, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %31
  %44 = load %struct.st_h2o_mruby_callback_sender_t*, %struct.st_h2o_mruby_callback_sender_t** %10, align 8
  %45 = getelementptr inbounds %struct.st_h2o_mruby_callback_sender_t, %struct.st_h2o_mruby_callback_sender_t* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %6, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load %struct.st_h2o_mruby_callback_sender_t*, %struct.st_h2o_mruby_callback_sender_t** %10, align 8
  %52 = getelementptr inbounds %struct.st_h2o_mruby_callback_sender_t, %struct.st_h2o_mruby_callback_sender_t* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %6, align 8
  br label %55

55:                                               ; preds = %50, %43, %31
  %56 = load i64, i64* %6, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %115

58:                                               ; preds = %55
  %59 = load %struct.st_h2o_mruby_callback_sender_t*, %struct.st_h2o_mruby_callback_sender_t** %10, align 8
  %60 = getelementptr inbounds %struct.st_h2o_mruby_callback_sender_t, %struct.st_h2o_mruby_callback_sender_t* %59, i32 0, i32 0
  %61 = load i64, i64* %6, align 8
  %62 = call i32* @h2o_buffer_try_reserve(%struct.TYPE_13__** %60, i64 %61)
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  store i32* %62, i32** %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %58
  %68 = load i32*, i32** %3, align 8
  %69 = load i32, i32* @E_RUNTIME_ERROR, align 4
  %70 = call i32 @mrb_exc_new_str_lit(i32* %68, i32 %69, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 %70, i32* %12, align 4
  %71 = load i32*, i32** %3, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @mrb_exc_raise(i32* %71, i32 %72)
  br label %74

74:                                               ; preds = %67, %58
  %75 = load %struct.st_h2o_mruby_callback_sender_t*, %struct.st_h2o_mruby_callback_sender_t** %10, align 8
  %76 = getelementptr inbounds %struct.st_h2o_mruby_callback_sender_t, %struct.st_h2o_mruby_callback_sender_t* %75, i32 0, i32 0
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.st_h2o_mruby_callback_sender_t*, %struct.st_h2o_mruby_callback_sender_t** %10, align 8
  %81 = getelementptr inbounds %struct.st_h2o_mruby_callback_sender_t, %struct.st_h2o_mruby_callback_sender_t* %80, i32 0, i32 0
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %79, %84
  %86 = load i8*, i8** %5, align 8
  %87 = load i64, i64* %6, align 8
  %88 = call i32 @memcpy(i64 %85, i8* %86, i64 %87)
  %89 = load i64, i64* %6, align 8
  %90 = load %struct.st_h2o_mruby_callback_sender_t*, %struct.st_h2o_mruby_callback_sender_t** %10, align 8
  %91 = getelementptr inbounds %struct.st_h2o_mruby_callback_sender_t, %struct.st_h2o_mruby_callback_sender_t* %90, i32 0, i32 0
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, %89
  store i64 %95, i64* %93, align 8
  %96 = load %struct.st_h2o_mruby_callback_sender_t*, %struct.st_h2o_mruby_callback_sender_t** %10, align 8
  %97 = getelementptr inbounds %struct.st_h2o_mruby_callback_sender_t, %struct.st_h2o_mruby_callback_sender_t* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %114, label %101

101:                                              ; preds = %74
  %102 = load %struct.st_h2o_mruby_callback_sender_t*, %struct.st_h2o_mruby_callback_sender_t** %10, align 8
  %103 = getelementptr inbounds %struct.st_h2o_mruby_callback_sender_t, %struct.st_h2o_mruby_callback_sender_t* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %101
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %109 = load %struct.st_h2o_mruby_callback_sender_t*, %struct.st_h2o_mruby_callback_sender_t** %10, align 8
  %110 = getelementptr inbounds %struct.st_h2o_mruby_callback_sender_t, %struct.st_h2o_mruby_callback_sender_t* %109, i32 0, i32 1
  %111 = load %struct.st_h2o_mruby_callback_sender_t*, %struct.st_h2o_mruby_callback_sender_t** %10, align 8
  %112 = getelementptr inbounds %struct.st_h2o_mruby_callback_sender_t, %struct.st_h2o_mruby_callback_sender_t* %111, i32 0, i32 0
  %113 = call i32 @h2o_mruby_sender_do_send_buffer(%struct.TYPE_11__* %108, %struct.TYPE_12__* %110, %struct.TYPE_13__** %112, i32 0)
  br label %114

114:                                              ; preds = %107, %101, %74
  br label %115

115:                                              ; preds = %114, %55
  br label %116

116:                                              ; preds = %115, %28
  %117 = call i32 (...) @mrb_nil_value()
  ret i32 %117
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i8**, i64*, i32*) #1

declare dso_local %struct.TYPE_11__* @h2o_mruby_get_generator(i32*, i32) #1

declare dso_local i32 @check_precond(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @mrb_nil_p(i32) #1

declare dso_local i32 @mrb_exc_raise(i32*, i32) #1

declare dso_local i32* @h2o_buffer_try_reserve(%struct.TYPE_13__**, i64) #1

declare dso_local i32 @mrb_exc_new_str_lit(i32*, i32, i8*) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i32 @h2o_mruby_sender_do_send_buffer(%struct.TYPE_11__*, %struct.TYPE_12__*, %struct.TYPE_13__**, i32) #1

declare dso_local i32 @mrb_nil_value(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
