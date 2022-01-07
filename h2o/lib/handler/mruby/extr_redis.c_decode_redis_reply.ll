; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_redis.c_decode_redis_reply.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_redis.c_decode_redis_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i32, i32, %struct.TYPE_3__** }

@.str = private unnamed_addr constant [13 x i8] c"CommandError\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"FIXME\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i32)* @decode_redis_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_redis_reply(i32* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %76 [
    i32 128, label %13
    i32 129, label %13
    i32 133, label %22
    i32 131, label %52
    i32 130, label %58
    i32 132, label %60
  ]

13:                                               ; preds = %3, %3
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @mrb_str_new(i32* %14, i32 %17, i32 %20)
  store i32 %21, i32* %7, align 4
  br label %78

22:                                               ; preds = %3
  %23 = load i32*, i32** %4, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @mrb_ary_new_capa(i32* %23, i64 %26)
  store i32 %27, i32* %7, align 4
  store i64 0, i64* %8, align 8
  br label %28

28:                                               ; preds = %48, %22
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %28
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i64, i64* %8, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 5
  %41 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %41, i64 %42
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @decode_redis_reply(i32* %38, %struct.TYPE_3__* %44, i32 %45)
  %47 = call i32 @mrb_ary_set(i32* %35, i32 %36, i64 %37, i32 %46)
  br label %48

48:                                               ; preds = %34
  %49 = load i64, i64* %8, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %8, align 8
  br label %28

51:                                               ; preds = %28
  br label %78

52:                                               ; preds = %3
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = call i32 @mrb_fixnum_value(i64 %56)
  store i32 %57, i32* %7, align 4
  br label %78

58:                                               ; preds = %3
  %59 = call i32 (...) @mrb_nil_value()
  store i32 %59, i32* %7, align 4
  br label %78

60:                                               ; preds = %3
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @get_error_class(i32* %61, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %63 = call i32 @mrb_obj_value(i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32*, i32** %4, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i32*, i32** %4, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @mrb_str_new(i32* %66, i32 %69, i32 %72)
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @mrb_funcall(i32* %64, i32 %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 2, i32 %73, i32 %74)
  store i32 %75, i32* %7, align 4
  br label %78

76:                                               ; preds = %3
  %77 = call i32 @assert(i32 0)
  br label %78

78:                                               ; preds = %76, %60, %58, %52, %51, %13
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local i32 @mrb_str_new(i32*, i32, i32) #1

declare dso_local i32 @mrb_ary_new_capa(i32*, i64) #1

declare dso_local i32 @mrb_ary_set(i32*, i32, i64, i32) #1

declare dso_local i32 @mrb_fixnum_value(i64) #1

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i32 @mrb_obj_value(i32) #1

declare dso_local i32 @get_error_class(i32*, i8*) #1

declare dso_local i32 @mrb_funcall(i32*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
