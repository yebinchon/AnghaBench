; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-sprintf/src/extr_sprintf.c_mrb_fix2binstr.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-sprintf/src/extr_sprintf.c_mrb_fix2binstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"invalid radix %S\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@mrb_digitmap = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @mrb_fix2binstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_fix2binstr(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [66 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = getelementptr inbounds [66 x i8], [66 x i8]* %8, i64 0, i64 0
  %14 = getelementptr inbounds i8, i8* %13, i64 66
  store i8* %14, i8** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @mrb_fixnum(i32 %15)
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* %10, align 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 2
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @mrb_fixnum_value(i32 %24)
  %26 = call i32 @mrb_raisef(i32* %22, i32 %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %21, %3
  %28 = load i32, i32* %11, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @mrb_str_new_lit(i32* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %32, i32* %4, align 4
  br label %83

33:                                               ; preds = %27
  %34 = load i8*, i8** %9, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 -1
  store i8* %35, i8** %9, align 8
  store i8 0, i8* %35, align 1
  br label %36

36:                                               ; preds = %46, %33
  %37 = load i8*, i8** @mrb_digitmap, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %7, align 4
  %40 = srem i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %37, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = load i8*, i8** %9, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 -1
  store i8* %45, i8** %9, align 8
  store i8 %43, i8* %45, align 1
  br label %46

46:                                               ; preds = %36
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %11, align 4
  %49 = sdiv i32 %48, %47
  store i32 %49, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %36, label %51

51:                                               ; preds = %46
  %52 = load i64, i64* %10, align 8
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %79

54:                                               ; preds = %51
  %55 = load i8*, i8** %9, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i8* @remove_sign_bits(i8* %55, i32 %56)
  store i8* %57, i8** %9, align 8
  %58 = load i32, i32* %7, align 4
  switch i32 %58, label %62 [
    i32 16, label %59
    i32 8, label %60
    i32 2, label %61
  ]

59:                                               ; preds = %54
  store i8 102, i8* %12, align 1
  br label %63

60:                                               ; preds = %54
  store i8 55, i8* %12, align 1
  br label %63

61:                                               ; preds = %54
  store i8 49, i8* %12, align 1
  br label %63

62:                                               ; preds = %54
  store i8 0, i8* %12, align 1
  br label %63

63:                                               ; preds = %62, %61, %60, %59
  %64 = load i8, i8* %12, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %63
  %68 = load i8*, i8** %9, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = load i8, i8* %12, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %70, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load i8, i8* %12, align 1
  %76 = load i8*, i8** %9, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 -1
  store i8* %77, i8** %9, align 8
  store i8 %75, i8* %77, align 1
  br label %78

78:                                               ; preds = %74, %67, %63
  br label %79

79:                                               ; preds = %78, %51
  %80 = load i32*, i32** %5, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = call i32 @mrb_str_new_cstr(i32* %80, i8* %81)
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %79, %30
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i64 @mrb_fixnum(i32) #1

declare dso_local i32 @mrb_raisef(i32*, i32, i8*, i32) #1

declare dso_local i32 @mrb_fixnum_value(i32) #1

declare dso_local i32 @mrb_str_new_lit(i32*, i8*) #1

declare dso_local i8* @remove_sign_bits(i8*, i32) #1

declare dso_local i32 @mrb_str_new_cstr(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
