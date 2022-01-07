; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_error.c_exc_debug_info.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_error.c_exc_debug_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_19__*, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32*, %struct.TYPE_14__*, i32* }
%struct.TYPE_14__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.RObject = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.RObject*)* @exc_debug_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exc_debug_info(%struct.TYPE_17__* %0, %struct.RObject* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.RObject*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.RObject* %1, %struct.RObject** %4, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  store %struct.TYPE_19__* %15, %struct.TYPE_19__** %5, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %6, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %20 = load %struct.RObject*, %struct.RObject** %4, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %22 = call i32 @mrb_intern_lit(%struct.TYPE_17__* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %23 = call i64 @mrb_obj_iv_defined(%struct.TYPE_17__* %19, %struct.RObject* %20, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %114

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %108, %26
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %32, align 8
  %34 = icmp uge %struct.TYPE_19__* %28, %33
  br i1 %34, label %35, label %114

35:                                               ; preds = %27
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %7, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load i32*, i32** %6, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 -1
  store i32* %46, i32** %7, align 8
  br label %47

47:                                               ; preds = %44, %41, %35
  %48 = load i32*, i32** %7, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %108

50:                                               ; preds = %47
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %52, align 8
  %54 = icmp ne %struct.TYPE_14__* %53, null
  br i1 %54, label %55, label %108

55:                                               ; preds = %50
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %57, align 8
  %59 = call i32 @MRB_PROC_CFUNC_P(%struct.TYPE_14__* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %108, label %61

61:                                               ; preds = %55
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %66, align 8
  store %struct.TYPE_18__* %67, %struct.TYPE_18__** %8, align 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = sub i64 0, %73
  %75 = getelementptr inbounds i32, i32* %69, i64 %74
  %76 = call i32 @mrb_debug_get_line(%struct.TYPE_18__* %68, i32* %75)
  store i32 %76, i32* %9, align 4
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = sub i64 0, %82
  %84 = getelementptr inbounds i32, i32* %78, i64 %83
  %85 = call i8* @mrb_debug_get_filename(%struct.TYPE_18__* %77, i32* %84)
  store i8* %85, i8** %10, align 8
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, -1
  br i1 %87, label %88, label %107

88:                                               ; preds = %61
  %89 = load i8*, i8** %10, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %107

91:                                               ; preds = %88
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %93 = load %struct.RObject*, %struct.RObject** %4, align 8
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %95 = call i32 @mrb_intern_lit(%struct.TYPE_17__* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %97 = load i8*, i8** %10, align 8
  %98 = call i32 @mrb_str_new_cstr(%struct.TYPE_17__* %96, i8* %97)
  %99 = call i32 @mrb_obj_iv_set(%struct.TYPE_17__* %92, %struct.RObject* %93, i32 %95, i32 %98)
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %101 = load %struct.RObject*, %struct.RObject** %4, align 8
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %103 = call i32 @mrb_intern_lit(%struct.TYPE_17__* %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @mrb_fixnum_value(i32 %104)
  %106 = call i32 @mrb_obj_iv_set(%struct.TYPE_17__* %100, %struct.RObject* %101, i32 %103, i32 %105)
  br label %114

107:                                              ; preds = %88, %61
  br label %108

108:                                              ; preds = %107, %55, %50, %47
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  store i32* %111, i32** %6, align 8
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 -1
  store %struct.TYPE_19__* %113, %struct.TYPE_19__** %5, align 8
  br label %27

114:                                              ; preds = %25, %91, %27
  ret void
}

declare dso_local i64 @mrb_obj_iv_defined(%struct.TYPE_17__*, %struct.RObject*, i32) #1

declare dso_local i32 @mrb_intern_lit(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @MRB_PROC_CFUNC_P(%struct.TYPE_14__*) #1

declare dso_local i32 @mrb_debug_get_line(%struct.TYPE_18__*, i32*) #1

declare dso_local i8* @mrb_debug_get_filename(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @mrb_obj_iv_set(%struct.TYPE_17__*, %struct.RObject*, i32, i32) #1

declare dso_local i32 @mrb_str_new_cstr(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @mrb_fixnum_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
