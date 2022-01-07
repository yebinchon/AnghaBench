; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-compiler/core/extr_codegen.c_gen_addsub.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-compiler/core/extr_codegen.c_gen_addsub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.mrb_insn_data = type { i32, i32 }

@OP_ADD = common dso_local global i32 0, align 4
@OP_SUB = common dso_local global i32 0, align 4
@OP_ADDI = common dso_local global i32 0, align 4
@OP_SUBI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i32)* @gen_addsub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_addsub(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mrb_insn_data, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = call i64 @no_peephole(%struct.TYPE_7__* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  br label %12

12:                                               ; preds = %68, %43, %11
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @genop_1(%struct.TYPE_7__* %13, i32 %14, i32 %15)
  br label %70

17:                                               ; preds = %3
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = call i64 @mrb_last_insn(%struct.TYPE_7__* %18)
  %20 = bitcast %struct.mrb_insn_data* %7 to i64*
  store i64 %19, i64* %20, align 4
  %21 = getelementptr inbounds %struct.mrb_insn_data, %struct.mrb_insn_data* %7, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %68 [
    i32 128, label %23
    i32 136, label %33
    i32 135, label %33
    i32 134, label %33
    i32 133, label %33
    i32 132, label %33
    i32 131, label %33
    i32 130, label %33
    i32 129, label %33
    i32 137, label %38
  ]

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @OP_ADD, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @OP_SUB, align 4
  store i32 %28, i32* %5, align 4
  br label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @OP_ADD, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = getelementptr inbounds %struct.mrb_insn_data, %struct.mrb_insn_data* %7, i32 0, i32 1
  store i32 1, i32* %32, align 4
  br label %39

33:                                               ; preds = %17, %17, %17, %17, %17, %17, %17, %17
  %34 = getelementptr inbounds %struct.mrb_insn_data, %struct.mrb_insn_data* %7, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %35, 136
  %37 = getelementptr inbounds %struct.mrb_insn_data, %struct.mrb_insn_data* %7, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %17, %33
  br label %39

39:                                               ; preds = %38, %31
  %40 = getelementptr inbounds %struct.mrb_insn_data, %struct.mrb_insn_data* %7, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp sge i32 %41, 128
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %12

44:                                               ; preds = %39
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @OP_ADD, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %44
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = load i32, i32* @OP_ADDI, align 4
  %56 = load i32, i32* %6, align 4
  %57 = getelementptr inbounds %struct.mrb_insn_data, %struct.mrb_insn_data* %7, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @genop_2(%struct.TYPE_7__* %54, i32 %55, i32 %56, i32 %58)
  br label %67

60:                                               ; preds = %44
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = load i32, i32* @OP_SUBI, align 4
  %63 = load i32, i32* %6, align 4
  %64 = getelementptr inbounds %struct.mrb_insn_data, %struct.mrb_insn_data* %7, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @genop_2(%struct.TYPE_7__* %61, i32 %62, i32 %63, i32 %65)
  br label %67

67:                                               ; preds = %60, %53
  br label %69

68:                                               ; preds = %17
  br label %12

69:                                               ; preds = %67
  br label %70

70:                                               ; preds = %12, %69
  ret void
}

declare dso_local i64 @no_peephole(%struct.TYPE_7__*) #1

declare dso_local i32 @genop_1(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i64 @mrb_last_insn(%struct.TYPE_7__*) #1

declare dso_local i32 @genop_2(%struct.TYPE_7__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
