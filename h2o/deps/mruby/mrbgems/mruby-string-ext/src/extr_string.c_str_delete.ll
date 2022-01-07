; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-string-ext/src/extr_string.c_str_delete.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-string-ext/src/extr_string.c_str_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tr_pattern = type { i32 }

@STATIC_TR_PATTERN = common dso_local global %struct.tr_pattern zeroinitializer, align 4
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i32)* @str_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @str_delete(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tr_pattern, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [32 x i32], align 16
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = bitcast %struct.tr_pattern* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.tr_pattern* @STATIC_TR_PATTERN to i8*), i64 4, i1 false)
  %15 = load i64, i64* @FALSE, align 8
  store i64 %15, i64* %12, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @mrb_str_ptr(i32 %17)
  %19 = call i32 @mrb_str_modify(i32* %16, i32 %18)
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i64, i64* @TRUE, align 8
  %23 = call i32 @tr_parse_pattern(i32* %20, %struct.tr_pattern* %7, i32 %21, i64 %22)
  %24 = load i32, i32* %6, align 4
  %25 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 0
  %26 = call i32 @tr_compile_pattern(%struct.tr_pattern* %7, i32 %24, i32* %25)
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @tr_free_pattern(i32* %27, %struct.tr_pattern* %7)
  %29 = load i32, i32* %5, align 4
  %30 = call i8* @RSTRING_PTR(i32 %29)
  store i8* %30, i8** %10, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @RSTRING_LEN(i32 %31)
  store i64 %32, i64* %11, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %8, align 8
  br label %33

33:                                               ; preds = %62, %3
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %11, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %67

37:                                               ; preds = %33
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp ugt i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load i8*, i8** %10, align 8
  %43 = load i64, i64* %8, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = load i8*, i8** %10, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8 %45, i8* %48, align 1
  br label %49

49:                                               ; preds = %41, %37
  %50 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 0
  %51 = load i8*, i8** %10, align 8
  %52 = load i64, i64* %8, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = call i64 @tr_bitmap_detect(i32* %50, i8 signext %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  %58 = load i64, i64* @TRUE, align 8
  store i64 %58, i64* %12, align 8
  %59 = load i64, i64* %9, align 8
  %60 = add i64 %59, -1
  store i64 %60, i64* %9, align 8
  br label %61

61:                                               ; preds = %57, %49
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %8, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %8, align 8
  %65 = load i64, i64* %9, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %9, align 8
  br label %33

67:                                               ; preds = %33
  %68 = load i64, i64* %12, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %67
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @RSTRING(i32 %71)
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @RSTR_SET_LEN(i32 %72, i64 %73)
  %75 = load i32, i32* %5, align 4
  %76 = call i8* @RSTRING_PTR(i32 %75)
  %77 = load i64, i64* %9, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  store i8 0, i8* %78, align 1
  br label %79

79:                                               ; preds = %70, %67
  %80 = load i64, i64* %12, align 8
  ret i64 %80
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mrb_str_modify(i32*, i32) #2

declare dso_local i32 @mrb_str_ptr(i32) #2

declare dso_local i32 @tr_parse_pattern(i32*, %struct.tr_pattern*, i32, i64) #2

declare dso_local i32 @tr_compile_pattern(%struct.tr_pattern*, i32, i32*) #2

declare dso_local i32 @tr_free_pattern(i32*, %struct.tr_pattern*) #2

declare dso_local i8* @RSTRING_PTR(i32) #2

declare dso_local i64 @RSTRING_LEN(i32) #2

declare dso_local i64 @tr_bitmap_detect(i32*, i8 signext) #2

declare dso_local i32 @RSTR_SET_LEN(i32, i64) #2

declare dso_local i32 @RSTRING(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
