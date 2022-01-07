; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-method/src/extr_method.c_mrb_mruby_method_gem_init.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-method/src/extr_method.c_mrb_mruby_method_gem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.RClass*, %struct.RClass*, i32 }
%struct.RClass = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"UnboundMethod\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Method\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@unbound_method_bind = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"super_method\00", align 1
@method_super_method = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@method_eql = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"eql?\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"to_s\00", align 1
@method_to_s = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"inspect\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"arity\00", align 1
@method_arity = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"source_location\00", align 1
@method_source_location = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"parameters\00", align 1
@method_parameters = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@method_call = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"unbind\00", align 1
@method_unbind = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@mrb_kernel_method = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [16 x i8] c"instance_method\00", align 1
@mrb_module_instance_method = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrb_mruby_method_gem_init(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.RClass*, align 8
  %4 = alloca %struct.RClass*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.RClass* @mrb_define_class(%struct.TYPE_7__* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %8)
  store %struct.RClass* %9, %struct.RClass** %3, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.RClass* @mrb_define_class(%struct.TYPE_7__* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  store %struct.RClass* %14, %struct.RClass** %4, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %16 = load %struct.RClass*, %struct.RClass** %3, align 8
  %17 = call i32 @mrb_undef_class_method(%struct.TYPE_7__* %15, %struct.RClass* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = load %struct.RClass*, %struct.RClass** %3, align 8
  %20 = load i32, i32* @unbound_method_bind, align 4
  %21 = call i32 @MRB_ARGS_REQ(i32 1)
  %22 = call i32 @mrb_define_method(%struct.TYPE_7__* %18, %struct.RClass* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %24 = load %struct.RClass*, %struct.RClass** %3, align 8
  %25 = load i32, i32* @method_super_method, align 4
  %26 = call i32 (...) @MRB_ARGS_NONE()
  %27 = call i32 @mrb_define_method(%struct.TYPE_7__* %23, %struct.RClass* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %29 = load %struct.RClass*, %struct.RClass** %3, align 8
  %30 = load i32, i32* @method_eql, align 4
  %31 = call i32 @MRB_ARGS_REQ(i32 1)
  %32 = call i32 @mrb_define_method(%struct.TYPE_7__* %28, %struct.RClass* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %34 = load %struct.RClass*, %struct.RClass** %3, align 8
  %35 = call i32 @mrb_define_alias(%struct.TYPE_7__* %33, %struct.RClass* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %37 = load %struct.RClass*, %struct.RClass** %3, align 8
  %38 = load i32, i32* @method_to_s, align 4
  %39 = call i32 (...) @MRB_ARGS_NONE()
  %40 = call i32 @mrb_define_method(%struct.TYPE_7__* %36, %struct.RClass* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %42 = load %struct.RClass*, %struct.RClass** %3, align 8
  %43 = load i32, i32* @method_to_s, align 4
  %44 = call i32 (...) @MRB_ARGS_NONE()
  %45 = call i32 @mrb_define_method(%struct.TYPE_7__* %41, %struct.RClass* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %47 = load %struct.RClass*, %struct.RClass** %3, align 8
  %48 = load i32, i32* @method_arity, align 4
  %49 = call i32 (...) @MRB_ARGS_NONE()
  %50 = call i32 @mrb_define_method(%struct.TYPE_7__* %46, %struct.RClass* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %52 = load %struct.RClass*, %struct.RClass** %3, align 8
  %53 = load i32, i32* @method_source_location, align 4
  %54 = call i32 (...) @MRB_ARGS_NONE()
  %55 = call i32 @mrb_define_method(%struct.TYPE_7__* %51, %struct.RClass* %52, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %57 = load %struct.RClass*, %struct.RClass** %3, align 8
  %58 = load i32, i32* @method_parameters, align 4
  %59 = call i32 (...) @MRB_ARGS_NONE()
  %60 = call i32 @mrb_define_method(%struct.TYPE_7__* %56, %struct.RClass* %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 %58, i32 %59)
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %62 = load %struct.RClass*, %struct.RClass** %4, align 8
  %63 = call i32 @mrb_undef_class_method(%struct.TYPE_7__* %61, %struct.RClass* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %65 = load %struct.RClass*, %struct.RClass** %4, align 8
  %66 = load i32, i32* @method_eql, align 4
  %67 = call i32 @MRB_ARGS_REQ(i32 1)
  %68 = call i32 @mrb_define_method(%struct.TYPE_7__* %64, %struct.RClass* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %70 = load %struct.RClass*, %struct.RClass** %4, align 8
  %71 = call i32 @mrb_define_alias(%struct.TYPE_7__* %69, %struct.RClass* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %73 = load %struct.RClass*, %struct.RClass** %4, align 8
  %74 = load i32, i32* @method_to_s, align 4
  %75 = call i32 (...) @MRB_ARGS_NONE()
  %76 = call i32 @mrb_define_method(%struct.TYPE_7__* %72, %struct.RClass* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %74, i32 %75)
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %78 = load %struct.RClass*, %struct.RClass** %4, align 8
  %79 = load i32, i32* @method_to_s, align 4
  %80 = call i32 (...) @MRB_ARGS_NONE()
  %81 = call i32 @mrb_define_method(%struct.TYPE_7__* %77, %struct.RClass* %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %79, i32 %80)
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %83 = load %struct.RClass*, %struct.RClass** %4, align 8
  %84 = load i32, i32* @method_call, align 4
  %85 = call i32 (...) @MRB_ARGS_ANY()
  %86 = call i32 @mrb_define_method(%struct.TYPE_7__* %82, %struct.RClass* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 %84, i32 %85)
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %88 = load %struct.RClass*, %struct.RClass** %4, align 8
  %89 = call i32 @mrb_define_alias(%struct.TYPE_7__* %87, %struct.RClass* %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %91 = load %struct.RClass*, %struct.RClass** %4, align 8
  %92 = load i32, i32* @method_unbind, align 4
  %93 = call i32 (...) @MRB_ARGS_NONE()
  %94 = call i32 @mrb_define_method(%struct.TYPE_7__* %90, %struct.RClass* %91, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i32 %92, i32 %93)
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %96 = load %struct.RClass*, %struct.RClass** %4, align 8
  %97 = load i32, i32* @method_super_method, align 4
  %98 = call i32 (...) @MRB_ARGS_NONE()
  %99 = call i32 @mrb_define_method(%struct.TYPE_7__* %95, %struct.RClass* %96, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %97, i32 %98)
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %101 = load %struct.RClass*, %struct.RClass** %4, align 8
  %102 = load i32, i32* @method_arity, align 4
  %103 = call i32 (...) @MRB_ARGS_NONE()
  %104 = call i32 @mrb_define_method(%struct.TYPE_7__* %100, %struct.RClass* %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %102, i32 %103)
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %106 = load %struct.RClass*, %struct.RClass** %4, align 8
  %107 = load i32, i32* @method_source_location, align 4
  %108 = call i32 (...) @MRB_ARGS_NONE()
  %109 = call i32 @mrb_define_method(%struct.TYPE_7__* %105, %struct.RClass* %106, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %107, i32 %108)
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %111 = load %struct.RClass*, %struct.RClass** %4, align 8
  %112 = load i32, i32* @method_parameters, align 4
  %113 = call i32 (...) @MRB_ARGS_NONE()
  %114 = call i32 @mrb_define_method(%struct.TYPE_7__* %110, %struct.RClass* %111, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 %112, i32 %113)
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load %struct.RClass*, %struct.RClass** %117, align 8
  %119 = load i32, i32* @mrb_kernel_method, align 4
  %120 = call i32 @MRB_ARGS_REQ(i32 1)
  %121 = call i32 @mrb_define_method(%struct.TYPE_7__* %115, %struct.RClass* %118, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %119, i32 %120)
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load %struct.RClass*, %struct.RClass** %124, align 8
  %126 = load i32, i32* @mrb_module_instance_method, align 4
  %127 = call i32 @MRB_ARGS_REQ(i32 1)
  %128 = call i32 @mrb_define_method(%struct.TYPE_7__* %122, %struct.RClass* %125, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i32 %126, i32 %127)
  ret void
}

declare dso_local %struct.RClass* @mrb_define_class(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @mrb_undef_class_method(%struct.TYPE_7__*, %struct.RClass*, i8*) #1

declare dso_local i32 @mrb_define_method(%struct.TYPE_7__*, %struct.RClass*, i8*, i32, i32) #1

declare dso_local i32 @MRB_ARGS_REQ(i32) #1

declare dso_local i32 @MRB_ARGS_NONE(...) #1

declare dso_local i32 @mrb_define_alias(%struct.TYPE_7__*, %struct.RClass*, i8*, i8*) #1

declare dso_local i32 @MRB_ARGS_ANY(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
