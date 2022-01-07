; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_init.c_mrb_init_core.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_init.c_mrb_init_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrb_init_core(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @mrb_init_symtbl(i32* %3)
  %5 = load i32, i32* @DONE, align 4
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @mrb_init_class(i32* %6)
  %8 = load i32, i32* @DONE, align 4
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @mrb_init_object(i32* %9)
  %11 = load i32, i32* @DONE, align 4
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @mrb_init_kernel(i32* %12)
  %14 = load i32, i32* @DONE, align 4
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @mrb_init_comparable(i32* %15)
  %17 = load i32, i32* @DONE, align 4
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @mrb_init_enumerable(i32* %18)
  %20 = load i32, i32* @DONE, align 4
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @mrb_init_symbol(i32* %21)
  %23 = load i32, i32* @DONE, align 4
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @mrb_init_string(i32* %24)
  %26 = load i32, i32* @DONE, align 4
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @mrb_init_exception(i32* %27)
  %29 = load i32, i32* @DONE, align 4
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @mrb_init_proc(i32* %30)
  %32 = load i32, i32* @DONE, align 4
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @mrb_init_array(i32* %33)
  %35 = load i32, i32* @DONE, align 4
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @mrb_init_hash(i32* %36)
  %38 = load i32, i32* @DONE, align 4
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @mrb_init_numeric(i32* %39)
  %41 = load i32, i32* @DONE, align 4
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @mrb_init_range(i32* %42)
  %44 = load i32, i32* @DONE, align 4
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @mrb_init_gc(i32* %45)
  %47 = load i32, i32* @DONE, align 4
  %48 = load i32*, i32** %2, align 8
  %49 = call i32 @mrb_init_version(i32* %48)
  %50 = load i32, i32* @DONE, align 4
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @mrb_init_mrblib(i32* %51)
  %53 = load i32, i32* @DONE, align 4
  ret void
}

declare dso_local i32 @mrb_init_symtbl(i32*) #1

declare dso_local i32 @mrb_init_class(i32*) #1

declare dso_local i32 @mrb_init_object(i32*) #1

declare dso_local i32 @mrb_init_kernel(i32*) #1

declare dso_local i32 @mrb_init_comparable(i32*) #1

declare dso_local i32 @mrb_init_enumerable(i32*) #1

declare dso_local i32 @mrb_init_symbol(i32*) #1

declare dso_local i32 @mrb_init_string(i32*) #1

declare dso_local i32 @mrb_init_exception(i32*) #1

declare dso_local i32 @mrb_init_proc(i32*) #1

declare dso_local i32 @mrb_init_array(i32*) #1

declare dso_local i32 @mrb_init_hash(i32*) #1

declare dso_local i32 @mrb_init_numeric(i32*) #1

declare dso_local i32 @mrb_init_range(i32*) #1

declare dso_local i32 @mrb_init_gc(i32*) #1

declare dso_local i32 @mrb_init_version(i32*) #1

declare dso_local i32 @mrb_init_mrblib(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
