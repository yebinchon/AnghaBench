; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-math/src/extr_math.c_mrb_mruby_math_gem_init.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-math/src/extr_math.c_mrb_mruby_math_gem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.RClass = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"Math\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"DomainError\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"PI\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"TOLERANCE\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"sin\00", align 1
@math_sin = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"cos\00", align 1
@math_cos = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"tan\00", align 1
@math_tan = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"asin\00", align 1
@math_asin = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"acos\00", align 1
@math_acos = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"atan\00", align 1
@math_atan = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"atan2\00", align 1
@math_atan2 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"sinh\00", align 1
@math_sinh = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"cosh\00", align 1
@math_cosh = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"tanh\00", align 1
@math_tanh = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"asinh\00", align 1
@math_asinh = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"acosh\00", align 1
@math_acosh = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"atanh\00", align 1
@math_atanh = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [4 x i8] c"exp\00", align 1
@math_exp = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@math_log = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [5 x i8] c"log2\00", align 1
@math_log2 = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [6 x i8] c"log10\00", align 1
@math_log10 = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [5 x i8] c"sqrt\00", align 1
@math_sqrt = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [5 x i8] c"cbrt\00", align 1
@math_cbrt = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [6 x i8] c"frexp\00", align 1
@math_frexp = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [6 x i8] c"ldexp\00", align 1
@math_ldexp = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [6 x i8] c"hypot\00", align 1
@math_hypot = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [4 x i8] c"erf\00", align 1
@math_erf = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [5 x i8] c"erfc\00", align 1
@math_erfc = common dso_local global i32 0, align 4
@M_E = common dso_local global i32 0, align 4
@M_PI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrb_mruby_math_gem_init(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.RClass*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = call %struct.RClass* @mrb_define_module(%struct.TYPE_8__* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.RClass* %5, %struct.RClass** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %7 = load %struct.RClass*, %struct.RClass** %3, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @mrb_define_class_under(%struct.TYPE_8__* %6, %struct.RClass* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %10)
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %13 = load %struct.RClass*, %struct.RClass** %3, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %15 = call double @atan(double 1.000000e+00) #3
  %16 = fmul double %15, 4.000000e+00
  %17 = fptosi double %16 to i32
  %18 = call i32 @mrb_float_value(%struct.TYPE_8__* %14, i32 %17)
  %19 = call i32 @mrb_define_const(%struct.TYPE_8__* %12, %struct.RClass* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %21 = load %struct.RClass*, %struct.RClass** %3, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = call i32 @exp(double 1.000000e+00)
  %24 = call i32 @mrb_float_value(%struct.TYPE_8__* %22, i32 %23)
  %25 = call i32 @mrb_define_const(%struct.TYPE_8__* %20, %struct.RClass* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %24)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %27 = load %struct.RClass*, %struct.RClass** %3, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %29 = call i32 @mrb_float_value(%struct.TYPE_8__* %28, i32 0)
  %30 = call i32 @mrb_define_const(%struct.TYPE_8__* %26, %struct.RClass* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %29)
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %32 = load %struct.RClass*, %struct.RClass** %3, align 8
  %33 = load i32, i32* @math_sin, align 4
  %34 = call i32 @MRB_ARGS_REQ(i32 1)
  %35 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %31, %struct.RClass* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %37 = load %struct.RClass*, %struct.RClass** %3, align 8
  %38 = load i32, i32* @math_cos, align 4
  %39 = call i32 @MRB_ARGS_REQ(i32 1)
  %40 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %36, %struct.RClass* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %42 = load %struct.RClass*, %struct.RClass** %3, align 8
  %43 = load i32, i32* @math_tan, align 4
  %44 = call i32 @MRB_ARGS_REQ(i32 1)
  %45 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %41, %struct.RClass* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %47 = load %struct.RClass*, %struct.RClass** %3, align 8
  %48 = load i32, i32* @math_asin, align 4
  %49 = call i32 @MRB_ARGS_REQ(i32 1)
  %50 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %46, %struct.RClass* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %52 = load %struct.RClass*, %struct.RClass** %3, align 8
  %53 = load i32, i32* @math_acos, align 4
  %54 = call i32 @MRB_ARGS_REQ(i32 1)
  %55 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %51, %struct.RClass* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %57 = load %struct.RClass*, %struct.RClass** %3, align 8
  %58 = load i32, i32* @math_atan, align 4
  %59 = call i32 @MRB_ARGS_REQ(i32 1)
  %60 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %56, %struct.RClass* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %58, i32 %59)
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %62 = load %struct.RClass*, %struct.RClass** %3, align 8
  %63 = load i32, i32* @math_atan2, align 4
  %64 = call i32 @MRB_ARGS_REQ(i32 2)
  %65 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %61, %struct.RClass* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %63, i32 %64)
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %67 = load %struct.RClass*, %struct.RClass** %3, align 8
  %68 = load i32, i32* @math_sinh, align 4
  %69 = call i32 @MRB_ARGS_REQ(i32 1)
  %70 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %66, %struct.RClass* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 %68, i32 %69)
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %72 = load %struct.RClass*, %struct.RClass** %3, align 8
  %73 = load i32, i32* @math_cosh, align 4
  %74 = call i32 @MRB_ARGS_REQ(i32 1)
  %75 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %71, %struct.RClass* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 %73, i32 %74)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %77 = load %struct.RClass*, %struct.RClass** %3, align 8
  %78 = load i32, i32* @math_tanh, align 4
  %79 = call i32 @MRB_ARGS_REQ(i32 1)
  %80 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %76, %struct.RClass* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %78, i32 %79)
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %82 = load %struct.RClass*, %struct.RClass** %3, align 8
  %83 = load i32, i32* @math_asinh, align 4
  %84 = call i32 @MRB_ARGS_REQ(i32 1)
  %85 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %81, %struct.RClass* %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 %83, i32 %84)
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %87 = load %struct.RClass*, %struct.RClass** %3, align 8
  %88 = load i32, i32* @math_acosh, align 4
  %89 = call i32 @MRB_ARGS_REQ(i32 1)
  %90 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %86, %struct.RClass* %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 %88, i32 %89)
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %92 = load %struct.RClass*, %struct.RClass** %3, align 8
  %93 = load i32, i32* @math_atanh, align 4
  %94 = call i32 @MRB_ARGS_REQ(i32 1)
  %95 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %91, %struct.RClass* %92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i32 %93, i32 %94)
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %97 = load %struct.RClass*, %struct.RClass** %3, align 8
  %98 = load i32, i32* @math_exp, align 4
  %99 = call i32 @MRB_ARGS_REQ(i32 1)
  %100 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %96, %struct.RClass* %97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32 %98, i32 %99)
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %102 = load %struct.RClass*, %struct.RClass** %3, align 8
  %103 = load i32, i32* @math_log, align 4
  %104 = call i32 @MRB_ARGS_REQ(i32 1)
  %105 = call i32 @MRB_ARGS_OPT(i32 1)
  %106 = or i32 %104, %105
  %107 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %101, %struct.RClass* %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i32 %103, i32 %106)
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %109 = load %struct.RClass*, %struct.RClass** %3, align 8
  %110 = load i32, i32* @math_log2, align 4
  %111 = call i32 @MRB_ARGS_REQ(i32 1)
  %112 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %108, %struct.RClass* %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i32 %110, i32 %111)
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %114 = load %struct.RClass*, %struct.RClass** %3, align 8
  %115 = load i32, i32* @math_log10, align 4
  %116 = call i32 @MRB_ARGS_REQ(i32 1)
  %117 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %113, %struct.RClass* %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i32 %115, i32 %116)
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %119 = load %struct.RClass*, %struct.RClass** %3, align 8
  %120 = load i32, i32* @math_sqrt, align 4
  %121 = call i32 @MRB_ARGS_REQ(i32 1)
  %122 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %118, %struct.RClass* %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i32 %120, i32 %121)
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %124 = load %struct.RClass*, %struct.RClass** %3, align 8
  %125 = load i32, i32* @math_cbrt, align 4
  %126 = call i32 @MRB_ARGS_REQ(i32 1)
  %127 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %123, %struct.RClass* %124, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i32 %125, i32 %126)
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %129 = load %struct.RClass*, %struct.RClass** %3, align 8
  %130 = load i32, i32* @math_frexp, align 4
  %131 = call i32 @MRB_ARGS_REQ(i32 1)
  %132 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %128, %struct.RClass* %129, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i32 %130, i32 %131)
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %134 = load %struct.RClass*, %struct.RClass** %3, align 8
  %135 = load i32, i32* @math_ldexp, align 4
  %136 = call i32 @MRB_ARGS_REQ(i32 2)
  %137 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %133, %struct.RClass* %134, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i32 %135, i32 %136)
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %139 = load %struct.RClass*, %struct.RClass** %3, align 8
  %140 = load i32, i32* @math_hypot, align 4
  %141 = call i32 @MRB_ARGS_REQ(i32 2)
  %142 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %138, %struct.RClass* %139, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), i32 %140, i32 %141)
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %144 = load %struct.RClass*, %struct.RClass** %3, align 8
  %145 = load i32, i32* @math_erf, align 4
  %146 = call i32 @MRB_ARGS_REQ(i32 1)
  %147 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %143, %struct.RClass* %144, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i32 %145, i32 %146)
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %149 = load %struct.RClass*, %struct.RClass** %3, align 8
  %150 = load i32, i32* @math_erfc, align 4
  %151 = call i32 @MRB_ARGS_REQ(i32 1)
  %152 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %148, %struct.RClass* %149, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i32 %150, i32 %151)
  ret void
}

declare dso_local %struct.RClass* @mrb_define_module(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @mrb_define_class_under(%struct.TYPE_8__*, %struct.RClass*, i8*, i32) #1

declare dso_local i32 @mrb_define_const(%struct.TYPE_8__*, %struct.RClass*, i8*, i32) #1

declare dso_local i32 @mrb_float_value(%struct.TYPE_8__*, i32) #1

; Function Attrs: nounwind
declare dso_local double @atan(double) #2

declare dso_local i32 @exp(double) #1

declare dso_local i32 @mrb_define_module_function(%struct.TYPE_8__*, %struct.RClass*, i8*, i32, i32) #1

declare dso_local i32 @MRB_ARGS_REQ(i32) #1

declare dso_local i32 @MRB_ARGS_OPT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
