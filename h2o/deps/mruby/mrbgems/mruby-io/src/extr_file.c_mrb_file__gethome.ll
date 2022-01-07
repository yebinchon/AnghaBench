; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-io/src/extr_file.c_mrb_file__gethome.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-io/src/extr_file.c_mrb_file__gethome.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"|S\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"non-absolute home\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"non-absolute home of ~%S\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_file__gethome to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_file__gethome(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.passwd*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = call i64 @mrb_get_args(i32* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %9)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %2
  %17 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i32 (...) @mrb_nil_value()
  store i32 %21, i32* %3, align 4
  br label %63

22:                                               ; preds = %16
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @mrb_file_is_absolute_path(i8* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %29 = call i32 @mrb_raise(i32* %27, i32 %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %30

30:                                               ; preds = %26, %22
  br label %54

31:                                               ; preds = %2
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i8* @mrb_str_to_cstr(i32* %32, i32 %33)
  store i8* %34, i8** %10, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = call %struct.passwd* @getpwnam(i8* %35)
  store %struct.passwd* %36, %struct.passwd** %11, align 8
  %37 = load %struct.passwd*, %struct.passwd** %11, align 8
  %38 = icmp eq %struct.passwd* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = call i32 (...) @mrb_nil_value()
  store i32 %40, i32* %3, align 4
  br label %63

41:                                               ; preds = %31
  %42 = load %struct.passwd*, %struct.passwd** %11, align 8
  %43 = getelementptr inbounds %struct.passwd, %struct.passwd* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %7, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @mrb_file_is_absolute_path(i8* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %41
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @mrb_raisef(i32* %49, i32 %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %48, %41
  br label %54

54:                                               ; preds = %53, %30
  %55 = load i8*, i8** %7, align 8
  %56 = call i8* @mrb_locale_from_utf8(i8* %55, i32 -1)
  store i8* %56, i8** %7, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @mrb_str_new_cstr(i32* %57, i8* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @mrb_locale_free(i8* %60)
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %54, %39, %20
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @mrb_get_args(i32*, i8*, i32*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i32 @mrb_file_is_absolute_path(i8*) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i8* @mrb_str_to_cstr(i32*, i32) #1

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local i32 @mrb_raisef(i32*, i32, i8*, i32) #1

declare dso_local i8* @mrb_locale_from_utf8(i8*, i32) #1

declare dso_local i32 @mrb_str_new_cstr(i32*, i8*) #1

declare dso_local i32 @mrb_locale_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
