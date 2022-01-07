; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-proc-ext/src/extr_proc.c_mrb_proc_inspect.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-proc-ext/src/extr_proc.c_mrb_proc_inspect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RProc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [8 x i8] c"#<Proc:\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%S:%S\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c" (lambda)\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c">\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_proc_inspect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_proc_inspect(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.RProc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.RProc* @mrb_proc_ptr(i32 %10)
  store %struct.RProc* %11, %struct.RProc** %5, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @mrb_str_new_lit(i32* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %6, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @mrb_cptr(i32 %17)
  %19 = call i32 @mrb_ptr_to_str(i32* %16, i32 %18)
  %20 = call i32 @mrb_str_concat(i32* %14, i32 %15, i32 %19)
  %21 = load %struct.RProc*, %struct.RProc** %5, align 8
  %22 = call i32 @MRB_PROC_CFUNC_P(%struct.RProc* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %62, label %24

24:                                               ; preds = %2
  %25 = load %struct.RProc*, %struct.RProc** %5, align 8
  %26 = getelementptr inbounds %struct.RProc, %struct.RProc* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %7, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @mrb_str_cat_lit(i32* %29, i32 %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32*, i32** %7, align 8
  %33 = call i8* @mrb_debug_get_filename(i32* %32, i32 0)
  store i8* %33, i8** %8, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i8*, i8** %8, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %24
  %39 = load i8*, i8** %8, align 8
  br label %41

40:                                               ; preds = %24
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i8* [ %39, %38 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %40 ]
  %43 = call i32 @mrb_str_cat_cstr(i32* %34, i32 %35, i8* %42)
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @mrb_str_cat_lit(i32* %44, i32 %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @mrb_debug_get_line(i32* %47, i32 0)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, -1
  br i1 %50, label %51, label %57

51:                                               ; preds = %41
  %52 = load i32*, i32** %3, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @mrb_fixnum_value(i32 %54)
  %56 = call i32 @mrb_format(i32* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %53, i32 %55)
  store i32 %56, i32* %6, align 4
  br label %61

57:                                               ; preds = %41
  %58 = load i32*, i32** %3, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @mrb_str_cat_lit(i32* %58, i32 %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %57, %51
  br label %62

62:                                               ; preds = %61, %2
  %63 = load %struct.RProc*, %struct.RProc** %5, align 8
  %64 = call i64 @MRB_PROC_STRICT_P(%struct.RProc* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i32*, i32** %3, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @mrb_str_cat_lit(i32* %67, i32 %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %70

70:                                               ; preds = %66, %62
  %71 = load i32*, i32** %3, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @mrb_str_cat_lit(i32* %71, i32 %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local %struct.RProc* @mrb_proc_ptr(i32) #1

declare dso_local i32 @mrb_str_new_lit(i32*, i8*) #1

declare dso_local i32 @mrb_str_concat(i32*, i32, i32) #1

declare dso_local i32 @mrb_ptr_to_str(i32*, i32) #1

declare dso_local i32 @mrb_cptr(i32) #1

declare dso_local i32 @MRB_PROC_CFUNC_P(%struct.RProc*) #1

declare dso_local i32 @mrb_str_cat_lit(i32*, i32, i8*) #1

declare dso_local i8* @mrb_debug_get_filename(i32*, i32) #1

declare dso_local i32 @mrb_str_cat_cstr(i32*, i32, i8*) #1

declare dso_local i32 @mrb_debug_get_line(i32*, i32) #1

declare dso_local i32 @mrb_format(i32*, i8*, i32, i32) #1

declare dso_local i32 @mrb_fixnum_value(i32) #1

declare dso_local i64 @MRB_PROC_STRICT_P(%struct.RProc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
