; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_mrdb.c_check_method_breakpoint.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_mrdb.c_check_method_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.RClass* }
%struct.RClass = type { i32 }
%struct.TYPE_18__ = type { i64* }
%struct.mrb_insn_data = type { i32, i64, i64 }
%struct.TYPE_19__ = type { i64, i64 }

@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_17__*, %struct.TYPE_18__*, i32*, i32*)* @check_method_breakpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @check_method_breakpoint(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.RClass*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.mrb_insn_data, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca %struct.mrb_insn_data, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %17 = call %struct.TYPE_19__* @mrb_debug_context_get(%struct.TYPE_17__* %16)
  store %struct.TYPE_19__* %17, %struct.TYPE_19__** %14, align 8
  %18 = load i64, i64* @FALSE, align 8
  store i64 %18, i64* %12, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %11, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load i32*, i32** %7, align 8
  call void @mrb_decode_insn(%struct.mrb_insn_data* sret %15, i32* %24)
  %25 = bitcast %struct.mrb_insn_data* %13 to i8*
  %26 = bitcast %struct.mrb_insn_data* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 24, i1 false)
  %27 = getelementptr inbounds %struct.mrb_insn_data, %struct.mrb_insn_data* %13, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %61 [
    i32 130, label %29
    i32 129, label %29
    i32 128, label %44
  ]

29:                                               ; preds = %4, %4
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds %struct.mrb_insn_data, %struct.mrb_insn_data* %13, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.RClass* @mrb_class(%struct.TYPE_17__* %30, i32 %35)
  store %struct.RClass* %36, %struct.RClass** %9, align 8
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds %struct.mrb_insn_data, %struct.mrb_insn_data* %13, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %10, align 8
  br label %62

44:                                               ; preds = %4
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load %struct.RClass*, %struct.RClass** %52, align 8
  store %struct.RClass* %53, %struct.RClass** %9, align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %10, align 8
  br label %62

61:                                               ; preds = %4
  store i64 0, i64* %10, align 8
  br label %62

62:                                               ; preds = %61, %44, %29
  %63 = load i64, i64* %10, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %62
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %68 = load %struct.RClass*, %struct.RClass** %9, align 8
  %69 = load i64, i64* %10, align 8
  %70 = call i64 @mrb_debug_check_breakpoint_method(%struct.TYPE_17__* %66, %struct.TYPE_19__* %67, %struct.RClass* %68, i64 %69, i64* %12)
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = load i64, i64* %12, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %65
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %11, align 8
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 1
  store i64 0, i64* %80, align 8
  br label %81

81:                                               ; preds = %75, %65
  br label %82

82:                                               ; preds = %81, %62
  %83 = load i64, i64* %12, align 8
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load i64, i64* %11, align 8
  ret i64 %86
}

declare dso_local %struct.TYPE_19__* @mrb_debug_context_get(%struct.TYPE_17__*) #1

declare dso_local void @mrb_decode_insn(%struct.mrb_insn_data* sret, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.RClass* @mrb_class(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @mrb_debug_check_breakpoint_method(%struct.TYPE_17__*, %struct.TYPE_19__*, %struct.RClass*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
