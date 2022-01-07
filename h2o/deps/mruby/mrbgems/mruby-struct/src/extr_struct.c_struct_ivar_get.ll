; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-struct/src/extr_struct.c_struct_ivar_get.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-struct/src/extr_struct.c_struct_ivar_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RClass = type { %struct.RClass* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @struct_ivar_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @struct_ivar_get(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.RClass*, align 8
  %9 = alloca %struct.RClass*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.RClass* @mrb_class_ptr(i32 %11)
  store %struct.RClass* %12, %struct.RClass** %8, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call %struct.RClass* @struct_class(i32* %13)
  store %struct.RClass* %14, %struct.RClass** %9, align 8
  br label %15

15:                                               ; preds = %38, %3
  %16 = load i32*, i32** %5, align 8
  %17 = load %struct.RClass*, %struct.RClass** %8, align 8
  %18 = call i32 @mrb_obj_value(%struct.RClass* %17)
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @mrb_iv_get(i32* %16, i32 %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @mrb_nil_p(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %4, align 4
  br label %39

26:                                               ; preds = %15
  %27 = load %struct.RClass*, %struct.RClass** %8, align 8
  %28 = getelementptr inbounds %struct.RClass, %struct.RClass* %27, i32 0, i32 0
  %29 = load %struct.RClass*, %struct.RClass** %28, align 8
  store %struct.RClass* %29, %struct.RClass** %8, align 8
  %30 = load %struct.RClass*, %struct.RClass** %8, align 8
  %31 = load %struct.RClass*, %struct.RClass** %9, align 8
  %32 = icmp eq %struct.RClass* %30, %31
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = load %struct.RClass*, %struct.RClass** %8, align 8
  %35 = icmp eq %struct.RClass* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %33, %26
  %37 = call i32 (...) @mrb_nil_value()
  store i32 %37, i32* %4, align 4
  br label %39

38:                                               ; preds = %33
  br label %15

39:                                               ; preds = %36, %24
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.RClass* @mrb_class_ptr(i32) #1

declare dso_local %struct.RClass* @struct_class(i32*) #1

declare dso_local i32 @mrb_iv_get(i32*, i32, i32) #1

declare dso_local i32 @mrb_obj_value(%struct.RClass*) #1

declare dso_local i32 @mrb_nil_p(i32) #1

declare dso_local i32 @mrb_nil_value(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
