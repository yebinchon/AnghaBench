; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-io/src/extr_io.c_mrb_io_syswrite.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-io/src/extr_io.c_mrb_io_syswrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrb_io = type { i32, i32, i32 }

@E_IO_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"not opened for writing\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@MRB_TT_STRING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"to_s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mrb_io_syswrite(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mrb_io*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.mrb_io* @io_get_open_fptr(i32* %10, i32 %11)
  store %struct.mrb_io* %12, %struct.mrb_io** %5, align 8
  %13 = load %struct.mrb_io*, %struct.mrb_io** %5, align 8
  %14 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* @E_IO_ERROR, align 4
  %20 = call i32 @mrb_raise(i32* %18, i32 %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %17, %2
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @mrb_get_args(i32* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @mrb_type(i32 %24)
  %26 = load i64, i64* @MRB_TT_STRING, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @mrb_funcall(i32* %29, i32 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i32 %31, i32* %7, align 4
  br label %34

32:                                               ; preds = %21
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %32, %28
  %35 = load %struct.mrb_io*, %struct.mrb_io** %5, align 8
  %36 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.mrb_io*, %struct.mrb_io** %5, align 8
  %41 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %8, align 4
  br label %47

43:                                               ; preds = %34
  %44 = load %struct.mrb_io*, %struct.mrb_io** %5, align 8
  %45 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %43, %39
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @RSTRING_PTR(i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = call i64 @RSTRING_LEN(i32 %51)
  %53 = trunc i64 %52 to i32
  %54 = call i32 @write(i32 %48, i32 %50, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %60

57:                                               ; preds = %47
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @mrb_sys_fail(i32* %58, i32 0)
  br label %60

60:                                               ; preds = %57, %47
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @mrb_fixnum_value(i32 %61)
  ret i32 %62
}

declare dso_local %struct.mrb_io* @io_get_open_fptr(i32*, i32) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*) #1

declare dso_local i64 @mrb_type(i32) #1

declare dso_local i32 @mrb_funcall(i32*, i32, i8*, i32) #1

declare dso_local i32 @write(i32, i32, i32) #1

declare dso_local i32 @RSTRING_PTR(i32) #1

declare dso_local i64 @RSTRING_LEN(i32) #1

declare dso_local i32 @mrb_sys_fail(i32*, i32) #1

declare dso_local i32 @mrb_fixnum_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
