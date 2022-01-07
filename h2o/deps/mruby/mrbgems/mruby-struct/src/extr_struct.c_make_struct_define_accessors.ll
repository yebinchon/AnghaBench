; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-struct/src/extr_struct.c_make_struct_define_accessors.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-struct/src/extr_struct.c_make_struct_define_accessors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RClass = type { i32 }
%struct.RProc = type { i32 }

@mrb_struct_ref = common dso_local global i32 0, align 4
@mrb_struct_set_m = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.RClass*)* @make_struct_define_accessors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_struct_define_accessors(i32* %0, i32 %1, %struct.RClass* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.RClass*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.RProc*, align 8
  %16 = alloca %struct.RProc*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.RClass* %2, %struct.RClass** %6, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32* @RARRAY_PTR(i32 %17)
  store i32* %18, i32** %7, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @RARRAY_LEN(i32 %19)
  store i64 %20, i64* %9, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @mrb_gc_arena_save(i32* %21)
  store i32 %22, i32* %10, align 4
  store i64 0, i64* %8, align 8
  br label %23

23:                                               ; preds = %76, %3
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %79

27:                                               ; preds = %23
  %28 = load i32*, i32** %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @mrb_symbol(i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i8* @mrb_sym2name_len(i32* %33, i32 %34, i32* null)
  store i8* %35, i8** %12, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = call i64 @is_local_id(i32* %36, i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %27
  %41 = load i32*, i32** %4, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = call i64 @is_const_id(i32* %41, i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %75

45:                                               ; preds = %40, %27
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @mrb_fixnum_value(i64 %46)
  store i32 %47, i32* %14, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* @mrb_struct_ref, align 4
  %50 = call %struct.RProc* @mrb_proc_new_cfunc_with_env(i32* %48, i32 %49, i32 1, i32* %14)
  store %struct.RProc* %50, %struct.RProc** %15, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* @mrb_struct_set_m, align 4
  %53 = call %struct.RProc* @mrb_proc_new_cfunc_with_env(i32* %51, i32 %52, i32 1, i32* %14)
  store %struct.RProc* %53, %struct.RProc** %16, align 8
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.RProc*, %struct.RProc** %15, align 8
  %56 = call i32 @MRB_METHOD_FROM_PROC(i32 %54, %struct.RProc* %55)
  %57 = load i32*, i32** %4, align 8
  %58 = load %struct.RClass*, %struct.RClass** %6, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @mrb_define_method_raw(i32* %57, %struct.RClass* %58, i32 %59, i32 %60)
  %62 = load i32, i32* %13, align 4
  %63 = load %struct.RProc*, %struct.RProc** %16, align 8
  %64 = call i32 @MRB_METHOD_FROM_PROC(i32 %62, %struct.RProc* %63)
  %65 = load i32*, i32** %4, align 8
  %66 = load %struct.RClass*, %struct.RClass** %6, align 8
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @mrb_id_attrset(i32* %67, i32 %68)
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @mrb_define_method_raw(i32* %65, %struct.RClass* %66, i32 %69, i32 %70)
  %72 = load i32*, i32** %4, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @mrb_gc_arena_restore(i32* %72, i32 %73)
  br label %75

75:                                               ; preds = %45, %40
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %8, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %8, align 8
  br label %23

79:                                               ; preds = %23
  ret void
}

declare dso_local i32* @RARRAY_PTR(i32) #1

declare dso_local i64 @RARRAY_LEN(i32) #1

declare dso_local i32 @mrb_gc_arena_save(i32*) #1

declare dso_local i32 @mrb_symbol(i32) #1

declare dso_local i8* @mrb_sym2name_len(i32*, i32, i32*) #1

declare dso_local i64 @is_local_id(i32*, i8*) #1

declare dso_local i64 @is_const_id(i32*, i8*) #1

declare dso_local i32 @mrb_fixnum_value(i64) #1

declare dso_local %struct.RProc* @mrb_proc_new_cfunc_with_env(i32*, i32, i32, i32*) #1

declare dso_local i32 @MRB_METHOD_FROM_PROC(i32, %struct.RProc*) #1

declare dso_local i32 @mrb_define_method_raw(i32*, %struct.RClass*, i32, i32) #1

declare dso_local i32 @mrb_id_attrset(i32*, i32) #1

declare dso_local i32 @mrb_gc_arena_restore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
