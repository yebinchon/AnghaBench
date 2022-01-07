; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_backtrace.c_mrb_unpack_backtrace.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_backtrace.c_mrb_unpack_backtrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backtrace_location = type { i64, i32, i32* }
%struct.TYPE_2__ = type { i64 }

@bt_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%S:%S\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c":in \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mrb_unpack_backtrace(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.backtrace_location*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.backtrace_location*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @mrb_nil_p(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %32, %15
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @mrb_ary_new_capa(i32* %17, i64 0)
  store i32 %18, i32* %3, align 4
  br label %97

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @mrb_array_p(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %3, align 4
  br label %97

25:                                               ; preds = %19
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @mrb_data_check_get_ptr(i32* %26, i32 %27, i32* @bt_type)
  %29 = inttoptr i64 %28 to %struct.backtrace_location*
  store %struct.backtrace_location* %29, %struct.backtrace_location** %6, align 8
  %30 = load %struct.backtrace_location*, %struct.backtrace_location** %6, align 8
  %31 = icmp eq %struct.backtrace_location* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %16

33:                                               ; preds = %25
  %34 = load i32, i32* %5, align 4
  %35 = call %struct.TYPE_2__* @RDATA(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %7, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @mrb_ary_new_capa(i32* %38, i64 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @mrb_gc_arena_save(i32* %41)
  store i32 %42, i32* %9, align 4
  store i64 0, i64* %8, align 8
  br label %43

43:                                               ; preds = %92, %33
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %95

47:                                               ; preds = %43
  %48 = load %struct.backtrace_location*, %struct.backtrace_location** %6, align 8
  %49 = load i64, i64* %8, align 8
  %50 = getelementptr inbounds %struct.backtrace_location, %struct.backtrace_location* %48, i64 %49
  store %struct.backtrace_location* %50, %struct.backtrace_location** %10, align 8
  %51 = load %struct.backtrace_location*, %struct.backtrace_location** %10, align 8
  %52 = getelementptr inbounds %struct.backtrace_location, %struct.backtrace_location* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %92

56:                                               ; preds = %47
  %57 = load i32*, i32** %4, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = load %struct.backtrace_location*, %struct.backtrace_location** %10, align 8
  %60 = getelementptr inbounds %struct.backtrace_location, %struct.backtrace_location* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @mrb_str_new_cstr(i32* %58, i32* %61)
  %63 = load %struct.backtrace_location*, %struct.backtrace_location** %10, align 8
  %64 = getelementptr inbounds %struct.backtrace_location, %struct.backtrace_location* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @mrb_fixnum_value(i32 %65)
  %67 = call i32 @mrb_format(i32* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %66)
  store i32 %67, i32* %11, align 4
  %68 = load %struct.backtrace_location*, %struct.backtrace_location** %10, align 8
  %69 = getelementptr inbounds %struct.backtrace_location, %struct.backtrace_location* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %56
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @mrb_str_cat_lit(i32* %73, i32 %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32*, i32** %4, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load i32*, i32** %4, align 8
  %79 = load %struct.backtrace_location*, %struct.backtrace_location** %10, align 8
  %80 = getelementptr inbounds %struct.backtrace_location, %struct.backtrace_location* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @mrb_sym2name(i32* %78, i64 %81)
  %83 = call i32 @mrb_str_cat_cstr(i32* %76, i32 %77, i32 %82)
  br label %84

84:                                               ; preds = %72, %56
  %85 = load i32*, i32** %4, align 8
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @mrb_ary_push(i32* %85, i32 %86, i32 %87)
  %89 = load i32*, i32** %4, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @mrb_gc_arena_restore(i32* %89, i32 %90)
  br label %92

92:                                               ; preds = %84, %55
  %93 = load i64, i64* %8, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %8, align 8
  br label %43

95:                                               ; preds = %43
  %96 = load i32, i32* %5, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %95, %23, %16
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i64 @mrb_nil_p(i32) #1

declare dso_local i32 @mrb_ary_new_capa(i32*, i64) #1

declare dso_local i64 @mrb_array_p(i32) #1

declare dso_local i64 @mrb_data_check_get_ptr(i32*, i32, i32*) #1

declare dso_local %struct.TYPE_2__* @RDATA(i32) #1

declare dso_local i32 @mrb_gc_arena_save(i32*) #1

declare dso_local i32 @mrb_format(i32*, i8*, i32, i32) #1

declare dso_local i32 @mrb_str_new_cstr(i32*, i32*) #1

declare dso_local i32 @mrb_fixnum_value(i32) #1

declare dso_local i32 @mrb_str_cat_lit(i32*, i32, i8*) #1

declare dso_local i32 @mrb_str_cat_cstr(i32*, i32, i32) #1

declare dso_local i32 @mrb_sym2name(i32*, i64) #1

declare dso_local i32 @mrb_ary_push(i32*, i32, i32) #1

declare dso_local i32 @mrb_gc_arena_restore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
