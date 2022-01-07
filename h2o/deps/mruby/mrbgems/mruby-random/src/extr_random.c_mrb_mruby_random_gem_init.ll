; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-random/src/extr_random.c_mrb_mruby_random_gem_init.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-random/src/extr_random.c_mrb_mruby_random_gem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.RClass*, %struct.RClass* }
%struct.RClass = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"rand\00", align 1
@mrb_random_g_rand = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"srand\00", align 1
@mrb_random_g_srand = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"Random\00", align 1
@MRB_TT_DATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"initialize\00", align 1
@mrb_random_init = common dso_local global i32 0, align 4
@mrb_random_rand = common dso_local global i32 0, align 4
@mrb_random_srand = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"shuffle\00", align 1
@mrb_ary_shuffle = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"shuffle!\00", align 1
@mrb_ary_shuffle_bang = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"sample\00", align 1
@mrb_ary_sample = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"DEFAULT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrb_mruby_random_gem_init(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.RClass*, align 8
  %4 = alloca %struct.RClass*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %7 = load %struct.RClass*, %struct.RClass** %6, align 8
  store %struct.RClass* %7, %struct.RClass** %4, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %11 = load %struct.RClass*, %struct.RClass** %10, align 8
  %12 = load i32, i32* @mrb_random_g_rand, align 4
  %13 = call i32 @MRB_ARGS_OPT(i32 1)
  %14 = call i32 @mrb_define_method(%struct.TYPE_9__* %8, %struct.RClass* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load %struct.RClass*, %struct.RClass** %17, align 8
  %19 = load i32, i32* @mrb_random_g_srand, align 4
  %20 = call i32 @MRB_ARGS_OPT(i32 1)
  %21 = call i32 @mrb_define_method(%struct.TYPE_9__* %15, %struct.RClass* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.RClass* @mrb_define_class(%struct.TYPE_9__* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  store %struct.RClass* %26, %struct.RClass** %3, align 8
  %27 = load %struct.RClass*, %struct.RClass** %3, align 8
  %28 = load i32, i32* @MRB_TT_DATA, align 4
  %29 = call i32 @MRB_SET_INSTANCE_TT(%struct.RClass* %27, i32 %28)
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %31 = load %struct.RClass*, %struct.RClass** %3, align 8
  %32 = load i32, i32* @mrb_random_g_rand, align 4
  %33 = call i32 @MRB_ARGS_OPT(i32 1)
  %34 = call i32 @mrb_define_class_method(%struct.TYPE_9__* %30, %struct.RClass* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %36 = load %struct.RClass*, %struct.RClass** %3, align 8
  %37 = load i32, i32* @mrb_random_g_srand, align 4
  %38 = call i32 @MRB_ARGS_OPT(i32 1)
  %39 = call i32 @mrb_define_class_method(%struct.TYPE_9__* %35, %struct.RClass* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %41 = load %struct.RClass*, %struct.RClass** %3, align 8
  %42 = load i32, i32* @mrb_random_init, align 4
  %43 = call i32 @MRB_ARGS_OPT(i32 1)
  %44 = call i32 @mrb_define_method(%struct.TYPE_9__* %40, %struct.RClass* %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %46 = load %struct.RClass*, %struct.RClass** %3, align 8
  %47 = load i32, i32* @mrb_random_rand, align 4
  %48 = call i32 @MRB_ARGS_OPT(i32 1)
  %49 = call i32 @mrb_define_method(%struct.TYPE_9__* %45, %struct.RClass* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %51 = load %struct.RClass*, %struct.RClass** %3, align 8
  %52 = load i32, i32* @mrb_random_srand, align 4
  %53 = call i32 @MRB_ARGS_OPT(i32 1)
  %54 = call i32 @mrb_define_method(%struct.TYPE_9__* %50, %struct.RClass* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %56 = load %struct.RClass*, %struct.RClass** %4, align 8
  %57 = load i32, i32* @mrb_ary_shuffle, align 4
  %58 = call i32 @MRB_ARGS_OPT(i32 1)
  %59 = call i32 @mrb_define_method(%struct.TYPE_9__* %55, %struct.RClass* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %57, i32 %58)
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %61 = load %struct.RClass*, %struct.RClass** %4, align 8
  %62 = load i32, i32* @mrb_ary_shuffle_bang, align 4
  %63 = call i32 @MRB_ARGS_OPT(i32 1)
  %64 = call i32 @mrb_define_method(%struct.TYPE_9__* %60, %struct.RClass* %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %66 = load %struct.RClass*, %struct.RClass** %4, align 8
  %67 = load i32, i32* @mrb_ary_sample, align 4
  %68 = call i32 @MRB_ARGS_OPT(i32 2)
  %69 = call i32 @mrb_define_method(%struct.TYPE_9__* %65, %struct.RClass* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %71 = load %struct.RClass*, %struct.RClass** %3, align 8
  %72 = call i32 @mrb_obj_value(%struct.RClass* %71)
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %74 = call i32 @mrb_intern_lit(%struct.TYPE_9__* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %76 = load %struct.RClass*, %struct.RClass** %3, align 8
  %77 = call i32 @mrb_obj_new(%struct.TYPE_9__* %75, %struct.RClass* %76, i32 0, i32* null)
  %78 = call i32 @mrb_const_set(%struct.TYPE_9__* %70, i32 %72, i32 %74, i32 %77)
  ret void
}

declare dso_local i32 @mrb_define_method(%struct.TYPE_9__*, %struct.RClass*, i8*, i32, i32) #1

declare dso_local i32 @MRB_ARGS_OPT(i32) #1

declare dso_local %struct.RClass* @mrb_define_class(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @MRB_SET_INSTANCE_TT(%struct.RClass*, i32) #1

declare dso_local i32 @mrb_define_class_method(%struct.TYPE_9__*, %struct.RClass*, i8*, i32, i32) #1

declare dso_local i32 @mrb_const_set(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @mrb_obj_value(%struct.RClass*) #1

declare dso_local i32 @mrb_intern_lit(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @mrb_obj_new(%struct.TYPE_9__*, %struct.RClass*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
