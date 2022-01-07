; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-method/src/extr_method.c_method_search_vm.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-method/src/extr_method.c_method_search_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RProc = type { i32 }
%struct.RClass = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.RProc* (i32*, %struct.RClass**, i32)* @method_search_vm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.RProc* @method_search_vm(i32* %0, %struct.RClass** %1, i32 %2) #0 {
  %4 = alloca %struct.RProc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.RClass**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.RClass** %1, %struct.RClass*** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = load %struct.RClass**, %struct.RClass*** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @mrb_method_search_vm(i32* %9, %struct.RClass** %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i64 @MRB_METHOD_UNDEF_P(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store %struct.RProc* null, %struct.RProc** %4, align 8
  br label %29

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  %19 = call i64 @MRB_METHOD_PROC_P(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* %8, align 4
  %23 = call %struct.RProc* @MRB_METHOD_PROC(i32 %22)
  store %struct.RProc* %23, %struct.RProc** %4, align 8
  br label %29

24:                                               ; preds = %17
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @MRB_METHOD_FUNC(i32 %26)
  %28 = call %struct.RProc* @mrb_proc_new_cfunc(i32* %25, i32 %27)
  store %struct.RProc* %28, %struct.RProc** %4, align 8
  br label %29

29:                                               ; preds = %24, %21, %16
  %30 = load %struct.RProc*, %struct.RProc** %4, align 8
  ret %struct.RProc* %30
}

declare dso_local i32 @mrb_method_search_vm(i32*, %struct.RClass**, i32) #1

declare dso_local i64 @MRB_METHOD_UNDEF_P(i32) #1

declare dso_local i64 @MRB_METHOD_PROC_P(i32) #1

declare dso_local %struct.RProc* @MRB_METHOD_PROC(i32) #1

declare dso_local %struct.RProc* @mrb_proc_new_cfunc(i32*, i32) #1

declare dso_local i32 @MRB_METHOD_FUNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
