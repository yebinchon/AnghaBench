; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-eval/src/extr_eval.c_f_eval.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-eval/src/extr_eval.c_f_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RProc = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"s|ozi\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @f_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f_eval(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.RProc*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = call i32 (...) @mrb_nil_value()
  store i32 %11, i32* %7, align 4
  store i8* null, i8** %8, align 8
  store i32 1, i32* %9, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @mrb_get_args(i32* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %5, i32* %6, i32* %7, i8** %8, i32* %9)
  %14 = load i32*, i32** %3, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call %struct.RProc* @create_proc_from_string(i32* %14, i8* %15, i32 %16, i32 %17, i8* %18, i32 %19)
  store %struct.RProc* %20, %struct.RProc** %10, align 8
  %21 = load %struct.RProc*, %struct.RProc** %10, align 8
  %22 = call i32 @MRB_PROC_CFUNC_P(%struct.RProc* %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @mrb_assert(i32 %25)
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.RProc*, %struct.RProc** %10, align 8
  %30 = call i32 @exec_irep(i32* %27, i32 %28, %struct.RProc* %29)
  ret i32 %30
}

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i32 @mrb_get_args(i32*, i8*, i8**, i32*, i32*, i8**, i32*) #1

declare dso_local %struct.RProc* @create_proc_from_string(i32*, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @mrb_assert(i32) #1

declare dso_local i32 @MRB_PROC_CFUNC_P(%struct.RProc*) #1

declare dso_local i32 @exec_irep(i32*, i32, %struct.RProc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
