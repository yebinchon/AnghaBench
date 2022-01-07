; ModuleID = '/home/carl/AnghaBench/japronto/src/japronto/extr_capsule.c_get_ptr_from_mod.c'
source_filename = "/home/carl/AnghaBench/japronto/src/japronto/extr_capsule.c_get_ptr_from_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_ptr_from_mod(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32* @PyImport_ImportModule(i8* %10)
  store i32* %11, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %30

15:                                               ; preds = %3
  %16 = load i32*, i32** %8, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32* @PyObject_GetAttrString(i32* %16, i8* %17)
  store i32* %18, i32** %9, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  br label %30

22:                                               ; preds = %15
  %23 = load i32*, i32** %9, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i8* @PyCapsule_GetPointer(i32* %23, i8* %24)
  store i8* %25, i8** %7, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  br label %30

29:                                               ; preds = %22
  br label %31

30:                                               ; preds = %28, %21, %14
  store i8* null, i8** %7, align 8
  br label %31

31:                                               ; preds = %30, %29
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @Py_XDECREF(i32* %32)
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @Py_XDECREF(i32* %34)
  %36 = load i8*, i8** %7, align 8
  ret i8* %36
}

declare dso_local i32* @PyImport_ImportModule(i8*) #1

declare dso_local i32* @PyObject_GetAttrString(i32*, i8*) #1

declare dso_local i8* @PyCapsule_GetPointer(i32*, i8*) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
