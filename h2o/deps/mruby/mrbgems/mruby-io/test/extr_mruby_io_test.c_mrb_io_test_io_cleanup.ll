; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-io/test/extr_mruby_io_test.c_mrb_io_test_io_cleanup.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-io/test/extr_mruby_io_test.c_mrb_io_test_io_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"$mrbtest_io_rfname\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"$mrbtest_io_wfname\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"$mrbtest_io_symlinkname\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"$mrbtest_io_socketname\00", align 1
@MRB_TT_STRING = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"$mrbtest_io_msg\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_io_test_io_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_io_test_io_cleanup(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @mrb_intern_cstr(i32* %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @mrb_gv_get(i32* %9, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @mrb_intern_cstr(i32* %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i32 @mrb_gv_get(i32* %13, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @mrb_intern_cstr(i32* %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %20 = call i32 @mrb_gv_get(i32* %17, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @mrb_intern_cstr(i32* %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %24 = call i32 @mrb_gv_get(i32* %21, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @mrb_type(i32 %25)
  %27 = load i64, i64* @MRB_TT_STRING, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @RSTRING_PTR(i32 %30)
  %32 = call i32 @remove(i32 %31)
  br label %33

33:                                               ; preds = %29, %2
  %34 = load i32, i32* %6, align 4
  %35 = call i64 @mrb_type(i32 %34)
  %36 = load i64, i64* @MRB_TT_STRING, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @RSTRING_PTR(i32 %39)
  %41 = call i32 @remove(i32 %40)
  br label %42

42:                                               ; preds = %38, %33
  %43 = load i32, i32* %7, align 4
  %44 = call i64 @mrb_type(i32 %43)
  %45 = load i64, i64* @MRB_TT_STRING, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @RSTRING_PTR(i32 %48)
  %50 = call i32 @remove(i32 %49)
  br label %51

51:                                               ; preds = %47, %42
  %52 = load i32, i32* %8, align 4
  %53 = call i64 @mrb_type(i32 %52)
  %54 = load i64, i64* @MRB_TT_STRING, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @RSTRING_PTR(i32 %57)
  %59 = call i32 @remove(i32 %58)
  br label %60

60:                                               ; preds = %56, %51
  %61 = load i32*, i32** %3, align 8
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @mrb_intern_cstr(i32* %62, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %64 = call i32 (...) @mrb_nil_value()
  %65 = call i32 @mrb_gv_set(i32* %61, i32 %63, i32 %64)
  %66 = load i32*, i32** %3, align 8
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @mrb_intern_cstr(i32* %67, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %69 = call i32 (...) @mrb_nil_value()
  %70 = call i32 @mrb_gv_set(i32* %66, i32 %68, i32 %69)
  %71 = load i32*, i32** %3, align 8
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 @mrb_intern_cstr(i32* %72, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %74 = call i32 (...) @mrb_nil_value()
  %75 = call i32 @mrb_gv_set(i32* %71, i32 %73, i32 %74)
  %76 = load i32*, i32** %3, align 8
  %77 = load i32*, i32** %3, align 8
  %78 = call i32 @mrb_intern_cstr(i32* %77, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %79 = call i32 (...) @mrb_nil_value()
  %80 = call i32 @mrb_gv_set(i32* %76, i32 %78, i32 %79)
  %81 = load i32*, i32** %3, align 8
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @mrb_intern_cstr(i32* %82, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %84 = call i32 (...) @mrb_nil_value()
  %85 = call i32 @mrb_gv_set(i32* %81, i32 %83, i32 %84)
  %86 = call i32 (...) @mrb_nil_value()
  ret i32 %86
}

declare dso_local i32 @mrb_gv_get(i32*, i32) #1

declare dso_local i32 @mrb_intern_cstr(i32*, i8*) #1

declare dso_local i64 @mrb_type(i32) #1

declare dso_local i32 @remove(i32) #1

declare dso_local i32 @RSTRING_PTR(i32) #1

declare dso_local i32 @mrb_gv_set(i32*, i32, i32) #1

declare dso_local i32 @mrb_nil_value(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
