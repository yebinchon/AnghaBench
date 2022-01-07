; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-numeric-ext/src/extr_numeric_ext.c_mrb_mruby_numeric_ext_gem_init.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-numeric-ext/src/extr_numeric_ext.c_mrb_mruby_numeric_ext_gem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RClass = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"Integral\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"chr\00", align 1
@mrb_int_chr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"allbits?\00", align 1
@mrb_int_allbits = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"anybits?\00", align 1
@mrb_int_anybits = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"nobits?\00", align 1
@mrb_int_nobits = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrb_mruby_numeric_ext_gem_init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.RClass*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call %struct.RClass* @mrb_module_get(i32* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.RClass* %5, %struct.RClass** %3, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = load %struct.RClass*, %struct.RClass** %3, align 8
  %8 = load i32, i32* @mrb_int_chr, align 4
  %9 = call i32 (...) @MRB_ARGS_NONE()
  %10 = call i32 @mrb_define_method(i32* %6, %struct.RClass* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %8, i32 %9)
  %11 = load i32*, i32** %2, align 8
  %12 = load %struct.RClass*, %struct.RClass** %3, align 8
  %13 = load i32, i32* @mrb_int_allbits, align 4
  %14 = call i32 @MRB_ARGS_REQ(i32 1)
  %15 = call i32 @mrb_define_method(i32* %11, %struct.RClass* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load i32*, i32** %2, align 8
  %17 = load %struct.RClass*, %struct.RClass** %3, align 8
  %18 = load i32, i32* @mrb_int_anybits, align 4
  %19 = call i32 @MRB_ARGS_REQ(i32 1)
  %20 = call i32 @mrb_define_method(i32* %16, %struct.RClass* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load i32*, i32** %2, align 8
  %22 = load %struct.RClass*, %struct.RClass** %3, align 8
  %23 = load i32, i32* @mrb_int_nobits, align 4
  %24 = call i32 @MRB_ARGS_REQ(i32 1)
  %25 = call i32 @mrb_define_method(i32* %21, %struct.RClass* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %23, i32 %24)
  ret void
}

declare dso_local %struct.RClass* @mrb_module_get(i32*, i8*) #1

declare dso_local i32 @mrb_define_method(i32*, %struct.RClass*, i8*, i32, i32) #1

declare dso_local i32 @MRB_ARGS_NONE(...) #1

declare dso_local i32 @MRB_ARGS_REQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
