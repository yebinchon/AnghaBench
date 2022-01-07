; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-struct/src/extr_struct.c_make_struct.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-struct/src/extr_struct.c_make_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RClass = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"identifier %S needs to be constant\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"redefining constant Struct::%S\00", align 1
@MRB_TT_ARRAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"__members__\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@mrb_instance_new = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"members\00", align 1
@mrb_struct_s_members_m = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, %struct.RClass*)* @make_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_struct(i32* %0, i32 %1, i32 %2, %struct.RClass* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.RClass*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.RClass*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.RClass* %3, %struct.RClass** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @mrb_nil_p(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i32*, i32** %5, align 8
  %17 = load %struct.RClass*, %struct.RClass** %8, align 8
  %18 = call %struct.RClass* @mrb_class_new(i32* %16, %struct.RClass* %17)
  store %struct.RClass* %18, %struct.RClass** %11, align 8
  br label %60

19:                                               ; preds = %4
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @mrb_to_str(i32* %20, i32 %21)
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @mrb_obj_to_sym(i32* %23, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @mrb_sym2name_len(i32* %27, i32 %28, i32* null)
  %30 = call i32 @is_const_id(i32* %26, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %19
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @mrb_name_error(i32* %33, i32 %34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %32, %19
  %38 = load i32*, i32** %5, align 8
  %39 = load %struct.RClass*, %struct.RClass** %8, align 8
  %40 = call i32 @mrb_obj_value(%struct.RClass* %39)
  %41 = load i32, i32* %10, align 4
  %42 = call i64 @mrb_const_defined_at(i32* %38, i32 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %37
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @mrb_warn(i32* %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32*, i32** %5, align 8
  %49 = load %struct.RClass*, %struct.RClass** %8, align 8
  %50 = call i32 @mrb_obj_value(%struct.RClass* %49)
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @mrb_const_remove(i32* %48, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %44, %37
  %54 = load i32*, i32** %5, align 8
  %55 = load %struct.RClass*, %struct.RClass** %8, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @RSTRING_PTR(i32 %56)
  %58 = load %struct.RClass*, %struct.RClass** %8, align 8
  %59 = call %struct.RClass* @mrb_define_class_under(i32* %54, %struct.RClass* %55, i32 %57, %struct.RClass* %58)
  store %struct.RClass* %59, %struct.RClass** %11, align 8
  br label %60

60:                                               ; preds = %53, %15
  %61 = load %struct.RClass*, %struct.RClass** %11, align 8
  %62 = load i32, i32* @MRB_TT_ARRAY, align 4
  %63 = call i32 @MRB_SET_INSTANCE_TT(%struct.RClass* %61, i32 %62)
  %64 = load %struct.RClass*, %struct.RClass** %11, align 8
  %65 = call i32 @mrb_obj_value(%struct.RClass* %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @mrb_intern_lit(i32* %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @mrb_iv_set(i32* %66, i32 %67, i32 %69, i32 %70)
  %72 = load i32*, i32** %5, align 8
  %73 = load %struct.RClass*, %struct.RClass** %11, align 8
  %74 = load i32, i32* @mrb_instance_new, align 4
  %75 = call i32 (...) @MRB_ARGS_ANY()
  %76 = call i32 @mrb_define_class_method(i32* %72, %struct.RClass* %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %74, i32 %75)
  %77 = load i32*, i32** %5, align 8
  %78 = load %struct.RClass*, %struct.RClass** %11, align 8
  %79 = load i32, i32* @mrb_instance_new, align 4
  %80 = call i32 (...) @MRB_ARGS_ANY()
  %81 = call i32 @mrb_define_class_method(i32* %77, %struct.RClass* %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %79, i32 %80)
  %82 = load i32*, i32** %5, align 8
  %83 = load %struct.RClass*, %struct.RClass** %11, align 8
  %84 = load i32, i32* @mrb_struct_s_members_m, align 4
  %85 = call i32 (...) @MRB_ARGS_NONE()
  %86 = call i32 @mrb_define_class_method(i32* %82, %struct.RClass* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %84, i32 %85)
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.RClass*, %struct.RClass** %11, align 8
  %90 = call i32 @make_struct_define_accessors(i32* %87, i32 %88, %struct.RClass* %89)
  %91 = load i32, i32* %9, align 4
  ret i32 %91
}

declare dso_local i64 @mrb_nil_p(i32) #1

declare dso_local %struct.RClass* @mrb_class_new(i32*, %struct.RClass*) #1

declare dso_local i32 @mrb_to_str(i32*, i32) #1

declare dso_local i32 @mrb_obj_to_sym(i32*, i32) #1

declare dso_local i32 @is_const_id(i32*, i32) #1

declare dso_local i32 @mrb_sym2name_len(i32*, i32, i32*) #1

declare dso_local i32 @mrb_name_error(i32*, i32, i8*, i32) #1

declare dso_local i64 @mrb_const_defined_at(i32*, i32, i32) #1

declare dso_local i32 @mrb_obj_value(%struct.RClass*) #1

declare dso_local i32 @mrb_warn(i32*, i8*, i32) #1

declare dso_local i32 @mrb_const_remove(i32*, i32, i32) #1

declare dso_local %struct.RClass* @mrb_define_class_under(i32*, %struct.RClass*, i32, %struct.RClass*) #1

declare dso_local i32 @RSTRING_PTR(i32) #1

declare dso_local i32 @MRB_SET_INSTANCE_TT(%struct.RClass*, i32) #1

declare dso_local i32 @mrb_iv_set(i32*, i32, i32, i32) #1

declare dso_local i32 @mrb_intern_lit(i32*, i8*) #1

declare dso_local i32 @mrb_define_class_method(i32*, %struct.RClass*, i8*, i32, i32) #1

declare dso_local i32 @MRB_ARGS_ANY(...) #1

declare dso_local i32 @MRB_ARGS_NONE(...) #1

declare dso_local i32 @make_struct_define_accessors(i32*, i32, %struct.RClass*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
