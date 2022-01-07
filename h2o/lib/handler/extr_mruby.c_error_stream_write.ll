; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/extr_mruby.c_error_stream_write.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/extr_mruby.c_error_stream_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_21__*, %struct.TYPE_16__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32 (i32, i32, i32)* }
%struct.TYPE_24__ = type { i32 }

@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"ErrorStream#write wrong self\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @error_stream_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @error_stream_write(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_24__, align 4
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_24__, align 4
  %10 = alloca %struct.TYPE_24__, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.TYPE_23__* @h2o_mruby_get_error_stream(i32* %11, i32 %12)
  store %struct.TYPE_23__* %13, %struct.TYPE_23__** %5, align 8
  %14 = icmp eq %struct.TYPE_23__* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %18 = call i32 @mrb_raise(i32* %16, i32 %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %15, %2
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @mrb_get_args(i32* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @h2o_mruby_to_str(i32* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32* @RSTRING_PTR(i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @RSTRING_LEN(i32 %27)
  %29 = call i32 @h2o_iovec_init(i32* %26, i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  %34 = icmp ne %struct.TYPE_16__* %33, null
  br i1 %34, label %35, label %56

35:                                               ; preds = %19
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %39, align 8
  store %struct.TYPE_22__* %40, %struct.TYPE_22__** %8, align 8
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 1
  %44 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %43, align 8
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @h2o_iovec_init(i32* null, i32 0)
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 0
  store i32 %49, i32* %50, align 4
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 %44(i32 %48, i32 %52, i32 %54)
  br label %77

56:                                               ; preds = %19
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %56
  %69 = call i32 @h2o_iovec_init(i32* null, i32 0)
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 0
  store i32 %69, i32* %70, align 4
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @h2o_write_error_log(i32 %72, i32 %74)
  br label %76

76:                                               ; preds = %68, %56
  br label %77

77:                                               ; preds = %76, %35
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @mrb_fixnum_value(i32 %79)
  ret i32 %80
}

declare dso_local %struct.TYPE_23__* @h2o_mruby_get_error_stream(i32*, i32) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*) #1

declare dso_local i32 @h2o_mruby_to_str(i32*, i32) #1

declare dso_local i32 @h2o_iovec_init(i32*, i32) #1

declare dso_local i32* @RSTRING_PTR(i32) #1

declare dso_local i32 @RSTRING_LEN(i32) #1

declare dso_local i32 @h2o_write_error_log(i32, i32) #1

declare dso_local i32 @mrb_fixnum_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
