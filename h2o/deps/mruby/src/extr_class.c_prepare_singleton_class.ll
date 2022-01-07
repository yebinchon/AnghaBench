; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_class.c_prepare_singleton_class.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_class.c_prepare_singleton_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.RClass* }
%struct.RClass = type { i64, %struct.RClass*, %struct.RClass*, i64, i32, i32 }
%struct.RBasic = type { i64, %struct.RClass* }
%struct.RObject = type { i32 }

@MRB_TT_SCLASS = common dso_local global i64 0, align 8
@MRB_FL_CLASS_IS_INHERITED = common dso_local global i32 0, align 4
@mt = common dso_local global i32 0, align 4
@MRB_TT_CLASS = common dso_local global i64 0, align 8
@MRB_TT_ICLASS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"__attached__\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.RBasic*)* @prepare_singleton_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_singleton_class(%struct.TYPE_9__* %0, %struct.RBasic* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.RBasic*, align 8
  %5 = alloca %struct.RClass*, align 8
  %6 = alloca %struct.RClass*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.RBasic* %1, %struct.RBasic** %4, align 8
  %7 = load %struct.RBasic*, %struct.RBasic** %4, align 8
  %8 = getelementptr inbounds %struct.RBasic, %struct.RBasic* %7, i32 0, i32 1
  %9 = load %struct.RClass*, %struct.RClass** %8, align 8
  %10 = getelementptr inbounds %struct.RClass, %struct.RClass* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MRB_TT_SCLASS, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %128

15:                                               ; preds = %2
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = load i64, i64* @MRB_TT_SCLASS, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.RClass*, %struct.RClass** %19, align 8
  %21 = call i64 @mrb_obj_alloc(%struct.TYPE_9__* %16, i64 %17, %struct.RClass* %20)
  %22 = inttoptr i64 %21 to %struct.RClass*
  store %struct.RClass* %22, %struct.RClass** %5, align 8
  %23 = load i32, i32* @MRB_FL_CLASS_IS_INHERITED, align 4
  %24 = load %struct.RClass*, %struct.RClass** %5, align 8
  %25 = getelementptr inbounds %struct.RClass, %struct.RClass* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* @mt, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = call i32 @kh_init(i32 %28, %struct.TYPE_9__* %29)
  %31 = load %struct.RClass*, %struct.RClass** %5, align 8
  %32 = getelementptr inbounds %struct.RClass, %struct.RClass* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  %33 = load %struct.RClass*, %struct.RClass** %5, align 8
  %34 = getelementptr inbounds %struct.RClass, %struct.RClass* %33, i32 0, i32 3
  store i64 0, i64* %34, align 8
  %35 = load %struct.RBasic*, %struct.RBasic** %4, align 8
  %36 = getelementptr inbounds %struct.RBasic, %struct.RBasic* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MRB_TT_CLASS, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %62

40:                                               ; preds = %15
  %41 = load %struct.RBasic*, %struct.RBasic** %4, align 8
  %42 = bitcast %struct.RBasic* %41 to %struct.RClass*
  store %struct.RClass* %42, %struct.RClass** %6, align 8
  %43 = load %struct.RClass*, %struct.RClass** %6, align 8
  %44 = getelementptr inbounds %struct.RClass, %struct.RClass* %43, i32 0, i32 1
  %45 = load %struct.RClass*, %struct.RClass** %44, align 8
  %46 = icmp ne %struct.RClass* %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %40
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load %struct.RClass*, %struct.RClass** %49, align 8
  %51 = load %struct.RClass*, %struct.RClass** %5, align 8
  %52 = getelementptr inbounds %struct.RClass, %struct.RClass* %51, i32 0, i32 1
  store %struct.RClass* %50, %struct.RClass** %52, align 8
  br label %61

53:                                               ; preds = %40
  %54 = load %struct.RClass*, %struct.RClass** %6, align 8
  %55 = getelementptr inbounds %struct.RClass, %struct.RClass* %54, i32 0, i32 1
  %56 = load %struct.RClass*, %struct.RClass** %55, align 8
  %57 = getelementptr inbounds %struct.RClass, %struct.RClass* %56, i32 0, i32 2
  %58 = load %struct.RClass*, %struct.RClass** %57, align 8
  %59 = load %struct.RClass*, %struct.RClass** %5, align 8
  %60 = getelementptr inbounds %struct.RClass, %struct.RClass* %59, i32 0, i32 1
  store %struct.RClass* %58, %struct.RClass** %60, align 8
  br label %61

61:                                               ; preds = %53, %47
  br label %106

62:                                               ; preds = %15
  %63 = load %struct.RBasic*, %struct.RBasic** %4, align 8
  %64 = getelementptr inbounds %struct.RBasic, %struct.RBasic* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @MRB_TT_SCLASS, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %96

68:                                               ; preds = %62
  %69 = load %struct.RBasic*, %struct.RBasic** %4, align 8
  %70 = bitcast %struct.RBasic* %69 to %struct.RClass*
  store %struct.RClass* %70, %struct.RClass** %6, align 8
  br label %71

71:                                               ; preds = %79, %68
  %72 = load %struct.RClass*, %struct.RClass** %6, align 8
  %73 = getelementptr inbounds %struct.RClass, %struct.RClass* %72, i32 0, i32 1
  %74 = load %struct.RClass*, %struct.RClass** %73, align 8
  %75 = getelementptr inbounds %struct.RClass, %struct.RClass* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @MRB_TT_ICLASS, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %71
  %80 = load %struct.RClass*, %struct.RClass** %6, align 8
  %81 = getelementptr inbounds %struct.RClass, %struct.RClass* %80, i32 0, i32 1
  %82 = load %struct.RClass*, %struct.RClass** %81, align 8
  store %struct.RClass* %82, %struct.RClass** %6, align 8
  br label %71

83:                                               ; preds = %71
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %85 = load %struct.RClass*, %struct.RClass** %6, align 8
  %86 = getelementptr inbounds %struct.RClass, %struct.RClass* %85, i32 0, i32 1
  %87 = load %struct.RClass*, %struct.RClass** %86, align 8
  %88 = call i32 @make_metaclass(%struct.TYPE_9__* %84, %struct.RClass* %87)
  %89 = load %struct.RClass*, %struct.RClass** %6, align 8
  %90 = getelementptr inbounds %struct.RClass, %struct.RClass* %89, i32 0, i32 1
  %91 = load %struct.RClass*, %struct.RClass** %90, align 8
  %92 = getelementptr inbounds %struct.RClass, %struct.RClass* %91, i32 0, i32 2
  %93 = load %struct.RClass*, %struct.RClass** %92, align 8
  %94 = load %struct.RClass*, %struct.RClass** %5, align 8
  %95 = getelementptr inbounds %struct.RClass, %struct.RClass* %94, i32 0, i32 1
  store %struct.RClass* %93, %struct.RClass** %95, align 8
  br label %105

96:                                               ; preds = %62
  %97 = load %struct.RBasic*, %struct.RBasic** %4, align 8
  %98 = getelementptr inbounds %struct.RBasic, %struct.RBasic* %97, i32 0, i32 1
  %99 = load %struct.RClass*, %struct.RClass** %98, align 8
  %100 = load %struct.RClass*, %struct.RClass** %5, align 8
  %101 = getelementptr inbounds %struct.RClass, %struct.RClass* %100, i32 0, i32 1
  store %struct.RClass* %99, %struct.RClass** %101, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %103 = load %struct.RClass*, %struct.RClass** %5, align 8
  %104 = bitcast %struct.RClass* %103 to %struct.RBasic*
  call void @prepare_singleton_class(%struct.TYPE_9__* %102, %struct.RBasic* %104)
  br label %105

105:                                              ; preds = %96, %83
  br label %106

106:                                              ; preds = %105, %61
  %107 = load %struct.RClass*, %struct.RClass** %5, align 8
  %108 = load %struct.RBasic*, %struct.RBasic** %4, align 8
  %109 = getelementptr inbounds %struct.RBasic, %struct.RBasic* %108, i32 0, i32 1
  store %struct.RClass* %107, %struct.RClass** %109, align 8
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %111 = load %struct.RBasic*, %struct.RBasic** %4, align 8
  %112 = load %struct.RClass*, %struct.RClass** %5, align 8
  %113 = bitcast %struct.RClass* %112 to %struct.RBasic*
  %114 = call i32 @mrb_field_write_barrier(%struct.TYPE_9__* %110, %struct.RBasic* %111, %struct.RBasic* %113)
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %116 = load %struct.RClass*, %struct.RClass** %5, align 8
  %117 = bitcast %struct.RClass* %116 to %struct.RBasic*
  %118 = load %struct.RBasic*, %struct.RBasic** %4, align 8
  %119 = call i32 @mrb_field_write_barrier(%struct.TYPE_9__* %115, %struct.RBasic* %117, %struct.RBasic* %118)
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %121 = load %struct.RClass*, %struct.RClass** %5, align 8
  %122 = bitcast %struct.RClass* %121 to %struct.RObject*
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %124 = call i32 @mrb_intern_lit(%struct.TYPE_9__* %123, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %125 = load %struct.RBasic*, %struct.RBasic** %4, align 8
  %126 = call i32 @mrb_obj_value(%struct.RBasic* %125)
  %127 = call i32 @mrb_obj_iv_set(%struct.TYPE_9__* %120, %struct.RObject* %122, i32 %124, i32 %126)
  br label %128

128:                                              ; preds = %106, %14
  ret void
}

declare dso_local i64 @mrb_obj_alloc(%struct.TYPE_9__*, i64, %struct.RClass*) #1

declare dso_local i32 @kh_init(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @make_metaclass(%struct.TYPE_9__*, %struct.RClass*) #1

declare dso_local i32 @mrb_field_write_barrier(%struct.TYPE_9__*, %struct.RBasic*, %struct.RBasic*) #1

declare dso_local i32 @mrb_obj_iv_set(%struct.TYPE_9__*, %struct.RObject*, i32, i32) #1

declare dso_local i32 @mrb_intern_lit(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @mrb_obj_value(%struct.RBasic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
