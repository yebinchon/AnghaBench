; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-metaprog/src/extr_metaprog.c_mrb_local_variables.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-metaprog/src/extr_metaprog.c_mrb_local_variables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.RProc* }
%struct.RProc = type { i32, %struct.RProc*, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32)* @mrb_local_variables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_local_variables(%struct.TYPE_17__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.RProc*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i64 -1
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load %struct.RProc*, %struct.RProc** %18, align 8
  store %struct.RProc* %19, %struct.RProc** %6, align 8
  %20 = load %struct.RProc*, %struct.RProc** %6, align 8
  %21 = call i64 @MRB_PROC_CFUNC_P(%struct.RProc* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %25 = call i32 @mrb_ary_new(%struct.TYPE_17__* %24)
  store i32 %25, i32* %3, align 4
  br label %111

26:                                               ; preds = %2
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %28 = call i32 @mrb_hash_new(%struct.TYPE_17__* %27)
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %106, %26
  %30 = load %struct.RProc*, %struct.RProc** %6, align 8
  %31 = icmp ne %struct.RProc* %30, null
  br i1 %31, label %32, label %107

32:                                               ; preds = %29
  %33 = load %struct.RProc*, %struct.RProc** %6, align 8
  %34 = call i64 @MRB_PROC_CFUNC_P(%struct.RProc* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %107

37:                                               ; preds = %32
  %38 = load %struct.RProc*, %struct.RProc** %6, align 8
  %39 = getelementptr inbounds %struct.RProc, %struct.RProc* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %40, align 8
  store %struct.TYPE_18__* %41, %struct.TYPE_18__** %7, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %43, align 8
  %45 = icmp ne %struct.TYPE_16__* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %37
  br label %107

47:                                               ; preds = %37
  store i64 0, i64* %9, align 8
  br label %48

48:                                               ; preds = %89, %47
  %49 = load i64, i64* %9, align 8
  %50 = add i64 %49, 1
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ult i64 %50, %53
  br i1 %54, label %55, label %92

55:                                               ; preds = %48
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %57, align 8
  %59 = load i64, i64* %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %88

64:                                               ; preds = %55
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %66, align 8
  %68 = load i64, i64* %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %10, align 4
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i8* @mrb_sym2name(%struct.TYPE_17__* %72, i32 %73)
  store i8* %74, i8** %11, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  switch i32 %78, label %80 [
    i32 42, label %79
    i32 38, label %79
  ]

79:                                               ; preds = %64, %64
  br label %87

80:                                               ; preds = %64
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @mrb_symbol_value(i32 %83)
  %85 = call i32 (...) @mrb_true_value()
  %86 = call i32 @mrb_hash_set(%struct.TYPE_17__* %81, i32 %82, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %80, %79
  br label %88

88:                                               ; preds = %87, %55
  br label %89

89:                                               ; preds = %88
  %90 = load i64, i64* %9, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %9, align 8
  br label %48

92:                                               ; preds = %48
  %93 = load %struct.RProc*, %struct.RProc** %6, align 8
  %94 = call i32 @MRB_PROC_ENV_P(%struct.RProc* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %92
  br label %107

97:                                               ; preds = %92
  %98 = load %struct.RProc*, %struct.RProc** %6, align 8
  %99 = getelementptr inbounds %struct.RProc, %struct.RProc* %98, i32 0, i32 1
  %100 = load %struct.RProc*, %struct.RProc** %99, align 8
  store %struct.RProc* %100, %struct.RProc** %6, align 8
  %101 = load %struct.RProc*, %struct.RProc** %6, align 8
  %102 = getelementptr inbounds %struct.RProc, %struct.RProc* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %97
  br label %107

106:                                              ; preds = %97
  br label %29

107:                                              ; preds = %105, %96, %46, %36, %29
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @mrb_hash_keys(%struct.TYPE_17__* %108, i32 %109)
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %107, %23
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i64 @MRB_PROC_CFUNC_P(%struct.RProc*) #1

declare dso_local i32 @mrb_ary_new(%struct.TYPE_17__*) #1

declare dso_local i32 @mrb_hash_new(%struct.TYPE_17__*) #1

declare dso_local i8* @mrb_sym2name(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @mrb_hash_set(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @mrb_symbol_value(i32) #1

declare dso_local i32 @mrb_true_value(...) #1

declare dso_local i32 @MRB_PROC_ENV_P(%struct.RProc*) #1

declare dso_local i32 @mrb_hash_keys(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
