; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_string.c_str_new.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_string.c_str_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RString = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, %struct.TYPE_4__, i8* }
%struct.TYPE_4__ = type { i8* }

@RSTRING_EMBED_LEN_MAX = common dso_local global i64 0, align 8
@MRB_INT_MAX = common dso_local global i64 0, align 8
@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"string size too big\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.RString* (i32*, i8*, i64)* @str_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.RString* @str_new(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.RString*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.RString*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %3
  %12 = load i8*, i8** %6, align 8
  %13 = call i64 @mrb_ro_data_p(i8* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load i32*, i32** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call %struct.RString* @str_new_static(i32* %16, i8* %17, i64 %18)
  store %struct.RString* %19, %struct.RString** %4, align 8
  br label %92

20:                                               ; preds = %11, %3
  %21 = load i32*, i32** %5, align 8
  %22 = call %struct.RString* @mrb_obj_alloc_string(i32* %21)
  store %struct.RString* %22, %struct.RString** %8, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @RSTRING_EMBED_LEN_MAX, align 8
  %25 = icmp ule i64 %23, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %20
  %27 = load %struct.RString*, %struct.RString** %8, align 8
  %28 = call i32 @RSTR_SET_EMBED_FLAG(%struct.RString* %27)
  %29 = load %struct.RString*, %struct.RString** %8, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @RSTR_SET_EMBED_LEN(%struct.RString* %29, i64 %30)
  %32 = load i8*, i8** %6, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %26
  %35 = load %struct.RString*, %struct.RString** %8, align 8
  %36 = getelementptr inbounds %struct.RString, %struct.RString* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @memcpy(i8* %38, i8* %39, i64 %40)
  br label %42

42:                                               ; preds = %34, %26
  br label %86

43:                                               ; preds = %20
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @MRB_INT_MAX, align 8
  %46 = icmp uge i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %50 = call i32 @mrb_raise(i32* %48, i32 %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %47, %43
  %52 = load i32*, i32** %5, align 8
  %53 = load i64, i64* %7, align 8
  %54 = add i64 %53, 1
  %55 = call i64 @mrb_malloc(i32* %52, i64 %54)
  %56 = inttoptr i64 %55 to i8*
  %57 = load %struct.RString*, %struct.RString** %8, align 8
  %58 = getelementptr inbounds %struct.RString, %struct.RString* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i8* %56, i8** %60, align 8
  %61 = load i64, i64* %7, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = load %struct.RString*, %struct.RString** %8, align 8
  %64 = getelementptr inbounds %struct.RString, %struct.RString* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  store i8* %62, i8** %66, align 8
  %67 = load i64, i64* %7, align 8
  %68 = inttoptr i64 %67 to i8*
  %69 = load %struct.RString*, %struct.RString** %8, align 8
  %70 = getelementptr inbounds %struct.RString, %struct.RString* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i8* %68, i8** %73, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %85

76:                                               ; preds = %51
  %77 = load %struct.RString*, %struct.RString** %8, align 8
  %78 = getelementptr inbounds %struct.RString, %struct.RString* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = load i64, i64* %7, align 8
  %84 = call i32 @memcpy(i8* %81, i8* %82, i64 %83)
  br label %85

85:                                               ; preds = %76, %51
  br label %86

86:                                               ; preds = %85, %42
  %87 = load %struct.RString*, %struct.RString** %8, align 8
  %88 = call i8* @RSTR_PTR(%struct.RString* %87)
  %89 = load i64, i64* %7, align 8
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8 0, i8* %90, align 1
  %91 = load %struct.RString*, %struct.RString** %8, align 8
  store %struct.RString* %91, %struct.RString** %4, align 8
  br label %92

92:                                               ; preds = %86, %15
  %93 = load %struct.RString*, %struct.RString** %4, align 8
  ret %struct.RString* %93
}

declare dso_local i64 @mrb_ro_data_p(i8*) #1

declare dso_local %struct.RString* @str_new_static(i32*, i8*, i64) #1

declare dso_local %struct.RString* @mrb_obj_alloc_string(i32*) #1

declare dso_local i32 @RSTR_SET_EMBED_FLAG(%struct.RString*) #1

declare dso_local i32 @RSTR_SET_EMBED_LEN(%struct.RString*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i64 @mrb_malloc(i32*, i64) #1

declare dso_local i8* @RSTR_PTR(%struct.RString*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
