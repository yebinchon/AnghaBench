; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-compiler/core/extr_codegen.c_gen_return.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-compiler/core/extr_codegen.c_gen_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.mrb_insn_data = type { i64, i64, i64 }

@OP_MOVE = common dso_local global i64 0, align 8
@OP_RETURN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, i64)* @gen_return to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_return(%struct.TYPE_6__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.mrb_insn_data, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = call i64 @no_peephole(%struct.TYPE_6__* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @genop_1(%struct.TYPE_6__* %12, i32 %13, i64 %14)
  br label %50

16:                                               ; preds = %3
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  call void @mrb_last_insn(%struct.mrb_insn_data* sret %7, %struct.TYPE_6__* %17)
  %18 = getelementptr inbounds %struct.mrb_insn_data, %struct.mrb_insn_data* %7, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @OP_MOVE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %16
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds %struct.mrb_insn_data, %struct.mrb_insn_data* %7, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %23, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = getelementptr inbounds %struct.mrb_insn_data, %struct.mrb_insn_data* %7, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @genop_1(%struct.TYPE_6__* %33, i32 %34, i64 %36)
  br label %49

38:                                               ; preds = %22, %16
  %39 = getelementptr inbounds %struct.mrb_insn_data, %struct.mrb_insn_data* %7, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @OP_RETURN, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @genop_1(%struct.TYPE_6__* %44, i32 %45, i64 %46)
  br label %48

48:                                               ; preds = %43, %38
  br label %49

49:                                               ; preds = %48, %27
  br label %50

50:                                               ; preds = %49, %11
  ret void
}

declare dso_local i64 @no_peephole(%struct.TYPE_6__*) #1

declare dso_local i32 @genop_1(%struct.TYPE_6__*, i32, i64) #1

declare dso_local void @mrb_last_insn(%struct.mrb_insn_data* sret, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
