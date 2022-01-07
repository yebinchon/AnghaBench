; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_apibreak.c_compare_break_method.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_apibreak.c_compare_break_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i32* }
%struct.RClass = type { i32 }

@MRB_DEBUG_OK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*, %struct.RClass*, i32, i64*)* @compare_break_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_break_method(i32* %0, %struct.TYPE_7__* %1, %struct.RClass* %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.RClass*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.RClass*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_6__*, align 8
  %19 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store %struct.RClass* %2, %struct.RClass** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i8* @mrb_sym2name(i32* %20, i32 %21)
  store i8* %22, i8** %13, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %18, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = call i64 @strcmp(i8* %28, i8* %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %118

32:                                               ; preds = %5
  %33 = load i32*, i32** %7, align 8
  %34 = load %struct.RClass*, %struct.RClass** %9, align 8
  %35 = call i8* @mrb_class_name(i32* %33, %struct.RClass* %34)
  store i8* %35, i8** %12, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %48

38:                                               ; preds = %32
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %6, align 4
  br label %120

47:                                               ; preds = %38
  br label %117

48:                                               ; preds = %32
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %116

53:                                               ; preds = %48
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @mrb_method_search_vm(i32* %54, %struct.RClass** %9, i32 %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = call i64 @MRB_METHOD_UNDEF_P(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* @MRB_DEBUG_OK, align 4
  store i32 %61, i32* %6, align 4
  br label %120

62:                                               ; preds = %53
  %63 = load i32, i32* %14, align 4
  %64 = call i64 @MRB_METHOD_CFUNC_P(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i64, i64* @TRUE, align 8
  %68 = load i64*, i64** %11, align 8
  store i64 %67, i64* %68, align 8
  br label %69

69:                                               ; preds = %66, %62
  %70 = load i32*, i32** %7, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = call i64 @mrb_class_defined(i32* %70, i32* %73)
  store i64 %74, i64* %19, align 8
  %75 = load i64, i64* %19, align 8
  %76 = load i64, i64* @FALSE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = load i32, i32* @MRB_DEBUG_OK, align 4
  store i32 %79, i32* %6, align 4
  br label %120

80:                                               ; preds = %69
  %81 = load i32*, i32** %7, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = call %struct.RClass* @mrb_class_get(i32* %81, i32* %84)
  store %struct.RClass* %85, %struct.RClass** %15, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @mrb_check_intern_cstr(i32* %86, i8* %89)
  %91 = call i32 @mrb_symbol(i32 %90)
  store i32 %91, i32* %17, align 4
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* %17, align 4
  %94 = call i32 @mrb_method_search_vm(i32* %92, %struct.RClass** %15, i32 %93)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = call i64 @MRB_METHOD_UNDEF_P(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %80
  %99 = load i32, i32* @MRB_DEBUG_OK, align 4
  store i32 %99, i32* %6, align 4
  br label %120

100:                                              ; preds = %80
  %101 = load i32*, i32** %7, align 8
  %102 = load %struct.RClass*, %struct.RClass** %9, align 8
  %103 = call i8* @mrb_class_name(i32* %101, %struct.RClass* %102)
  store i8* %103, i8** %12, align 8
  %104 = load i32*, i32** %7, align 8
  %105 = load %struct.RClass*, %struct.RClass** %15, align 8
  %106 = call i8* @mrb_class_name(i32* %104, %struct.RClass* %105)
  store i8* %106, i8** %16, align 8
  %107 = load i8*, i8** %16, align 8
  %108 = load i8*, i8** %12, align 8
  %109 = call i64 @strcmp(i8* %107, i8* %108)
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %100
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  store i32 %114, i32* %6, align 4
  br label %120

115:                                              ; preds = %100
  br label %116

116:                                              ; preds = %115, %48
  br label %117

117:                                              ; preds = %116, %47
  br label %118

118:                                              ; preds = %117, %5
  %119 = load i32, i32* @MRB_DEBUG_OK, align 4
  store i32 %119, i32* %6, align 4
  br label %120

120:                                              ; preds = %118, %111, %98, %78, %60, %43
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

declare dso_local i8* @mrb_sym2name(i32*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @mrb_class_name(i32*, %struct.RClass*) #1

declare dso_local i32 @mrb_method_search_vm(i32*, %struct.RClass**, i32) #1

declare dso_local i64 @MRB_METHOD_UNDEF_P(i32) #1

declare dso_local i64 @MRB_METHOD_CFUNC_P(i32) #1

declare dso_local i64 @mrb_class_defined(i32*, i32*) #1

declare dso_local %struct.RClass* @mrb_class_get(i32*, i32*) #1

declare dso_local i32 @mrb_symbol(i32) #1

declare dso_local i32 @mrb_check_intern_cstr(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
