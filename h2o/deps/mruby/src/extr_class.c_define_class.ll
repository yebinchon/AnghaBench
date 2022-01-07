; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_class.c_define_class.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_class.c_define_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RClass = type { %struct.RClass* }

@E_TYPE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"superclass mismatch for Class %S (%S not %S)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.RClass* (i32*, i32, %struct.RClass*, %struct.RClass*)* @define_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.RClass* @define_class(i32* %0, i32 %1, %struct.RClass* %2, %struct.RClass* %3) #0 {
  %5 = alloca %struct.RClass*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.RClass*, align 8
  %9 = alloca %struct.RClass*, align 8
  %10 = alloca %struct.RClass*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.RClass* %2, %struct.RClass** %8, align 8
  store %struct.RClass* %3, %struct.RClass** %9, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load %struct.RClass*, %struct.RClass** %9, align 8
  %13 = call i32 @mrb_obj_value(%struct.RClass* %12)
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @mrb_const_defined_at(i32* %11, i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %48

17:                                               ; preds = %4
  %18 = load i32*, i32** %6, align 8
  %19 = load %struct.RClass*, %struct.RClass** %9, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.RClass* @class_from_sym(i32* %18, %struct.RClass* %19, i32 %20)
  store %struct.RClass* %21, %struct.RClass** %10, align 8
  %22 = load %struct.RClass*, %struct.RClass** %10, align 8
  %23 = call i32 @MRB_CLASS_ORIGIN(%struct.RClass* %22)
  %24 = load %struct.RClass*, %struct.RClass** %8, align 8
  %25 = icmp ne %struct.RClass* %24, null
  br i1 %25, label %26, label %46

26:                                               ; preds = %17
  %27 = load %struct.RClass*, %struct.RClass** %10, align 8
  %28 = getelementptr inbounds %struct.RClass, %struct.RClass* %27, i32 0, i32 0
  %29 = load %struct.RClass*, %struct.RClass** %28, align 8
  %30 = call %struct.RClass* @mrb_class_real(%struct.RClass* %29)
  %31 = load %struct.RClass*, %struct.RClass** %8, align 8
  %32 = icmp ne %struct.RClass* %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %26
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* @E_TYPE_ERROR, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @mrb_sym2str(i32* %36, i32 %37)
  %39 = load %struct.RClass*, %struct.RClass** %10, align 8
  %40 = getelementptr inbounds %struct.RClass, %struct.RClass* %39, i32 0, i32 0
  %41 = load %struct.RClass*, %struct.RClass** %40, align 8
  %42 = call i32 @mrb_obj_value(%struct.RClass* %41)
  %43 = load %struct.RClass*, %struct.RClass** %8, align 8
  %44 = call i32 @mrb_obj_value(%struct.RClass* %43)
  %45 = call i32 @mrb_raisef(i32* %34, i32 %35, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %42, i32 %44)
  br label %46

46:                                               ; preds = %33, %26, %17
  %47 = load %struct.RClass*, %struct.RClass** %10, align 8
  store %struct.RClass* %47, %struct.RClass** %5, align 8
  br label %58

48:                                               ; preds = %4
  %49 = load i32*, i32** %6, align 8
  %50 = load %struct.RClass*, %struct.RClass** %8, align 8
  %51 = call %struct.RClass* @mrb_class_new(i32* %49, %struct.RClass* %50)
  store %struct.RClass* %51, %struct.RClass** %10, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = load %struct.RClass*, %struct.RClass** %9, align 8
  %54 = load %struct.RClass*, %struct.RClass** %10, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @setup_class(i32* %52, %struct.RClass* %53, %struct.RClass* %54, i32 %55)
  %57 = load %struct.RClass*, %struct.RClass** %10, align 8
  store %struct.RClass* %57, %struct.RClass** %5, align 8
  br label %58

58:                                               ; preds = %48, %46
  %59 = load %struct.RClass*, %struct.RClass** %5, align 8
  ret %struct.RClass* %59
}

declare dso_local i64 @mrb_const_defined_at(i32*, i32, i32) #1

declare dso_local i32 @mrb_obj_value(%struct.RClass*) #1

declare dso_local %struct.RClass* @class_from_sym(i32*, %struct.RClass*, i32) #1

declare dso_local i32 @MRB_CLASS_ORIGIN(%struct.RClass*) #1

declare dso_local %struct.RClass* @mrb_class_real(%struct.RClass*) #1

declare dso_local i32 @mrb_raisef(i32*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @mrb_sym2str(i32*, i32) #1

declare dso_local %struct.RClass* @mrb_class_new(i32*, %struct.RClass*) #1

declare dso_local i32 @setup_class(i32*, %struct.RClass*, %struct.RClass*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
