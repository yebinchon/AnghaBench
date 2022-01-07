; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-string-ext/src/extr_string.c_mrb_str_del_prefix_bang.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-string-ext/src/extr_string.c_mrb_str_del_prefix_bang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RString = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_str_del_prefix_bang to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_str_del_prefix_bang(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.RString*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.RString* @RSTRING(i32 %11)
  store %struct.RString* %12, %struct.RString** %10, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @mrb_get_args(i32* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %8, i64* %6)
  %15 = load %struct.RString*, %struct.RString** %10, align 8
  %16 = call i64 @RSTR_LEN(%struct.RString* %15)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = call i32 (...) @mrb_nil_value()
  store i32 %21, i32* %3, align 4
  br label %75

22:                                               ; preds = %2
  %23 = load %struct.RString*, %struct.RString** %10, align 8
  %24 = call i8* @RSTR_PTR(%struct.RString* %23)
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i64 @memcmp(i8* %25, i8* %26, i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = call i32 (...) @mrb_nil_value()
  store i32 %31, i32* %3, align 4
  br label %75

32:                                               ; preds = %22
  %33 = load %struct.RString*, %struct.RString** %10, align 8
  %34 = call i32 @MRB_FROZEN_P(%struct.RString* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %54, label %36

36:                                               ; preds = %32
  %37 = load %struct.RString*, %struct.RString** %10, align 8
  %38 = call i64 @RSTR_SHARED_P(%struct.RString* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load %struct.RString*, %struct.RString** %10, align 8
  %42 = call i64 @RSTR_FSHARED_P(%struct.RString* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %40, %36
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.RString*, %struct.RString** %10, align 8
  %47 = getelementptr inbounds %struct.RString, %struct.RString* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %45
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %49, align 4
  br label %68

54:                                               ; preds = %40, %32
  %55 = load i32*, i32** %4, align 8
  %56 = load %struct.RString*, %struct.RString** %10, align 8
  %57 = call i32 @mrb_str_modify(i32* %55, %struct.RString* %56)
  %58 = load %struct.RString*, %struct.RString** %10, align 8
  %59 = call i8* @RSTR_PTR(%struct.RString* %58)
  store i8* %59, i8** %9, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = load i64, i64* %6, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* %6, align 8
  %66 = sub nsw i64 %64, %65
  %67 = call i32 @memmove(i8* %60, i8* %63, i64 %66)
  br label %68

68:                                               ; preds = %54, %44
  %69 = load %struct.RString*, %struct.RString** %10, align 8
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* %6, align 8
  %72 = sub nsw i64 %70, %71
  %73 = call i32 @RSTR_SET_LEN(%struct.RString* %69, i64 %72)
  %74 = load i32, i32* %5, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %68, %30, %20
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.RString* @RSTRING(i32) #1

declare dso_local i32 @mrb_get_args(i32*, i8*, i8**, i64*) #1

declare dso_local i64 @RSTR_LEN(%struct.RString*) #1

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i8* @RSTR_PTR(%struct.RString*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @MRB_FROZEN_P(%struct.RString*) #1

declare dso_local i64 @RSTR_SHARED_P(%struct.RString*) #1

declare dso_local i64 @RSTR_FSHARED_P(%struct.RString*) #1

declare dso_local i32 @mrb_str_modify(i32*, %struct.RString*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @RSTR_SET_LEN(%struct.RString*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
