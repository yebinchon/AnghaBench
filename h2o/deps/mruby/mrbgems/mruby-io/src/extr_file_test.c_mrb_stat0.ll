; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-io/src/extr_file_test.c_mrb_stat0.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-io/src/extr_file_test.c_mrb_stat0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.mrb_io = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"IO\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"String\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"is_a?\00", align 1
@mrb_io_type = common dso_local global i32 0, align 4
@E_IO_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"closed stream\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.stat*, i32)* @mrb_stat0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_stat0(i32* %0, i32 %1, %struct.stat* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mrb_io*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.stat* %2, %struct.stat** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @mrb_class_get(i32* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @mrb_obj_value(i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @mrb_class_get(i32* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i32 @mrb_obj_value(i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @mrb_funcall(i32* %22, i32 %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 1, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i64 @mrb_test(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %51

29:                                               ; preds = %4
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i64 @mrb_get_datatype(i32* %30, i32 %31, i32* @mrb_io_type)
  %33 = inttoptr i64 %32 to %struct.mrb_io*
  store %struct.mrb_io* %33, %struct.mrb_io** %13, align 8
  %34 = load %struct.mrb_io*, %struct.mrb_io** %13, align 8
  %35 = icmp ne %struct.mrb_io* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %29
  %37 = load %struct.mrb_io*, %struct.mrb_io** %13, align 8
  %38 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sge i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.mrb_io*, %struct.mrb_io** %13, align 8
  %43 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.stat*, %struct.stat** %8, align 8
  %46 = call i32 @fstat(i64 %44, %struct.stat* %45)
  store i32 %46, i32* %5, align 4
  br label %79

47:                                               ; preds = %36, %29
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* @E_IO_ERROR, align 4
  %50 = call i32 @mrb_raise(i32* %48, i32 %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %79

51:                                               ; preds = %4
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @mrb_funcall(i32* %52, i32 %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 1, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i64 @mrb_test(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %78

59:                                               ; preds = %51
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @mrb_str_to_cstr(i32* %60, i32 %61)
  %63 = call i8* @mrb_locale_from_utf8(i32 %62, i32 -1)
  store i8* %63, i8** %14, align 8
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load i8*, i8** %14, align 8
  %68 = load %struct.stat*, %struct.stat** %8, align 8
  %69 = call i32 @LSTAT(i8* %67, %struct.stat* %68)
  store i32 %69, i32* %15, align 4
  br label %74

70:                                               ; preds = %59
  %71 = load i8*, i8** %14, align 8
  %72 = load %struct.stat*, %struct.stat** %8, align 8
  %73 = call i32 @stat(i8* %71, %struct.stat* %72)
  store i32 %73, i32* %15, align 4
  br label %74

74:                                               ; preds = %70, %66
  %75 = load i8*, i8** %14, align 8
  %76 = call i32 @mrb_locale_free(i8* %75)
  %77 = load i32, i32* %15, align 4
  store i32 %77, i32* %5, align 4
  br label %79

78:                                               ; preds = %51
  store i32 -1, i32* %5, align 4
  br label %79

79:                                               ; preds = %78, %74, %47, %41
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @mrb_obj_value(i32) #1

declare dso_local i32 @mrb_class_get(i32*, i8*) #1

declare dso_local i32 @mrb_funcall(i32*, i32, i8*, i32, i32) #1

declare dso_local i64 @mrb_test(i32) #1

declare dso_local i64 @mrb_get_datatype(i32*, i32, i32*) #1

declare dso_local i32 @fstat(i64, %struct.stat*) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i8* @mrb_locale_from_utf8(i32, i32) #1

declare dso_local i32 @mrb_str_to_cstr(i32*, i32) #1

declare dso_local i32 @LSTAT(i8*, %struct.stat*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @mrb_locale_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
