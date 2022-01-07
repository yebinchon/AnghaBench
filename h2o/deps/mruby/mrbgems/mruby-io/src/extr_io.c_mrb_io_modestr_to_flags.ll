; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-io/src/extr_io.c_mrb_io_modestr_to_flags.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-io/src/extr_io.c_mrb_io_modestr_to_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FMODE_READABLE = common dso_local global i32 0, align 4
@FMODE_WRITABLE = common dso_local global i32 0, align 4
@FMODE_CREATE = common dso_local global i32 0, align 4
@FMODE_TRUNC = common dso_local global i32 0, align 4
@FMODE_APPEND = common dso_local global i32 0, align 4
@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"illegal access mode %S\00", align 1
@FMODE_BINMODE = common dso_local global i32 0, align 4
@FMODE_READWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @mrb_io_modestr_to_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_io_modestr_to_flags(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  store i8* %7, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %9, i8** %6, align 8
  %10 = load i8, i8* %8, align 1
  %11 = sext i8 %10 to i32
  switch i32 %11, label %32 [
    i32 114, label %12
    i32 119, label %16
    i32 97, label %24
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* @FMODE_READABLE, align 4
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %5, align 4
  br label %39

16:                                               ; preds = %2
  %17 = load i32, i32* @FMODE_WRITABLE, align 4
  %18 = load i32, i32* @FMODE_CREATE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @FMODE_TRUNC, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  br label %39

24:                                               ; preds = %2
  %25 = load i32, i32* @FMODE_WRITABLE, align 4
  %26 = load i32, i32* @FMODE_APPEND, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @FMODE_CREATE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %39

32:                                               ; preds = %2
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %35 = load i32*, i32** %3, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @mrb_str_new_cstr(i32* %35, i8* %36)
  %38 = call i32 @mrb_raisef(i32* %33, i32 %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %32, %24, %16, %12
  br label %40

40:                                               ; preds = %65, %39
  %41 = load i8*, i8** %6, align 8
  %42 = load i8, i8* %41, align 1
  %43 = icmp ne i8 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %40
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %6, align 8
  %47 = load i8, i8* %45, align 1
  %48 = sext i8 %47 to i32
  switch i32 %48, label %58 [
    i32 98, label %49
    i32 43, label %53
    i32 58, label %57
  ]

49:                                               ; preds = %44
  %50 = load i32, i32* @FMODE_BINMODE, align 4
  %51 = load i32, i32* %5, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %5, align 4
  br label %65

53:                                               ; preds = %44
  %54 = load i32, i32* @FMODE_READWRITE, align 4
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  br label %65

57:                                               ; preds = %44
  br label %58

58:                                               ; preds = %44, %57
  %59 = load i32*, i32** %3, align 8
  %60 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %61 = load i32*, i32** %3, align 8
  %62 = load i8*, i8** %4, align 8
  %63 = call i32 @mrb_str_new_cstr(i32* %61, i8* %62)
  %64 = call i32 @mrb_raisef(i32* %59, i32 %60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %58, %53, %49
  br label %40

66:                                               ; preds = %40
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @mrb_raisef(i32*, i32, i8*, i32) #1

declare dso_local i32 @mrb_str_new_cstr(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
