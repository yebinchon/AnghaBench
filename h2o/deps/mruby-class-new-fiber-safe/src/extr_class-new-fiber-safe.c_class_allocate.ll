; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-class-new-fiber-safe/src/extr_class-new-fiber-safe.c_class_allocate.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-class-new-fiber-safe/src/extr_class-new-fiber-safe.c_class_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RClass = type { i64 }
%struct.RObject = type { i32 }

@MRB_TT_SCLASS = common dso_local global i64 0, align 8
@E_TYPE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"can't create instance of singleton class\00", align 1
@MRB_TT_OBJECT = common dso_local global i32 0, align 4
@MRB_TT_CPTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"can't create instance of %S\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @class_allocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @class_allocate(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.RClass*, align 8
  %6 = alloca %struct.RObject*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.RClass* @mrb_class_ptr(i32 %8)
  store %struct.RClass* %9, %struct.RClass** %5, align 8
  %10 = load %struct.RClass*, %struct.RClass** %5, align 8
  %11 = call i32 @MRB_INSTANCE_TT(%struct.RClass* %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.RClass*, %struct.RClass** %5, align 8
  %13 = getelementptr inbounds %struct.RClass, %struct.RClass* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MRB_TT_SCLASS, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* @E_TYPE_ERROR, align 4
  %20 = call i32 @mrb_raise(i32* %18, i32 %19, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %17, %2
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @MRB_TT_OBJECT, align 4
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %24, %21
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @MRB_TT_CPTR, align 4
  %29 = icmp ule i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* @E_TYPE_ERROR, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @mrb_raisef(i32* %31, i32 %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %30, %26
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.RClass*, %struct.RClass** %5, align 8
  %39 = call i64 @mrb_obj_alloc(i32* %36, i32 %37, %struct.RClass* %38)
  %40 = inttoptr i64 %39 to %struct.RObject*
  store %struct.RObject* %40, %struct.RObject** %6, align 8
  %41 = load %struct.RObject*, %struct.RObject** %6, align 8
  %42 = call i32 @mrb_obj_value(%struct.RObject* %41)
  ret i32 %42
}

declare dso_local %struct.RClass* @mrb_class_ptr(i32) #1

declare dso_local i32 @MRB_INSTANCE_TT(%struct.RClass*) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i32 @mrb_raisef(i32*, i32, i8*, i32) #1

declare dso_local i64 @mrb_obj_alloc(i32*, i32, %struct.RClass*) #1

declare dso_local i32 @mrb_obj_value(%struct.RObject*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
