; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-proc-ext/src/extr_proc.c_mrb_proc_parameters.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-proc-ext/src/extr_proc.c_mrb_proc_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parameters_type = type { i64, i8*, i32 }
%struct.RProc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mrb_irep* }
%struct.mrb_irep = type { i64*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"req\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"opt\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"rest\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@__const.mrb_proc_parameters.parameters_list = private unnamed_addr constant [6 x %struct.parameters_type] [%struct.parameters_type { i64 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 0 }, %struct.parameters_type { i64 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 0 }, %struct.parameters_type { i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 0 }, %struct.parameters_type { i64 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 0 }, %struct.parameters_type { i64 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 0 }, %struct.parameters_type zeroinitializer], align 16
@OP_ENTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_proc_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_proc_parameters(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.parameters_type*, align 8
  %7 = alloca [6 x %struct.parameters_type], align 16
  %8 = alloca %struct.RProc*, align 8
  %9 = alloca %struct.mrb_irep*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %19 = bitcast [6 x %struct.parameters_type]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %19, i8* align 16 bitcast ([6 x %struct.parameters_type]* @__const.mrb_proc_parameters.parameters_list to i8*), i64 144, i1 false)
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.RProc* @mrb_proc_ptr(i32 %20)
  store %struct.RProc* %21, %struct.RProc** %8, align 8
  %22 = load %struct.RProc*, %struct.RProc** %8, align 8
  %23 = getelementptr inbounds %struct.RProc, %struct.RProc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.mrb_irep*, %struct.mrb_irep** %24, align 8
  store %struct.mrb_irep* %25, %struct.mrb_irep** %9, align 8
  store i32 -1, i32* %14, align 4
  %26 = load %struct.RProc*, %struct.RProc** %8, align 8
  %27 = call i64 @MRB_PROC_CFUNC_P(%struct.RProc* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @mrb_ary_new(i32* %30)
  store i32 %31, i32* %3, align 4
  br label %188

32:                                               ; preds = %2
  %33 = load %struct.mrb_irep*, %struct.mrb_irep** %9, align 8
  %34 = icmp ne %struct.mrb_irep* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @mrb_ary_new(i32* %36)
  store i32 %37, i32* %3, align 4
  br label %188

38:                                               ; preds = %32
  %39 = load %struct.mrb_irep*, %struct.mrb_irep** %9, align 8
  %40 = getelementptr inbounds %struct.mrb_irep, %struct.mrb_irep* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = icmp ne %struct.TYPE_4__* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @mrb_ary_new(i32* %44)
  store i32 %45, i32* %3, align 4
  br label %188

46:                                               ; preds = %38
  %47 = load %struct.mrb_irep*, %struct.mrb_irep** %9, align 8
  %48 = getelementptr inbounds %struct.mrb_irep, %struct.mrb_irep* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @OP_ENTER, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @mrb_ary_new(i32* %54)
  store i32 %55, i32* %3, align 4
  br label %188

56:                                               ; preds = %46
  %57 = load %struct.RProc*, %struct.RProc** %8, align 8
  %58 = call i32 @MRB_PROC_STRICT_P(%struct.RProc* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds [6 x %struct.parameters_type], [6 x %struct.parameters_type]* %7, i64 0, i64 0
  %62 = getelementptr inbounds %struct.parameters_type, %struct.parameters_type* %61, i32 0, i32 0
  store i64 3, i64* %62, align 16
  %63 = getelementptr inbounds [6 x %struct.parameters_type], [6 x %struct.parameters_type]* %7, i64 0, i64 0
  %64 = getelementptr inbounds %struct.parameters_type, %struct.parameters_type* %63, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %64, align 8
  %65 = getelementptr inbounds [6 x %struct.parameters_type], [6 x %struct.parameters_type]* %7, i64 0, i64 3
  %66 = getelementptr inbounds %struct.parameters_type, %struct.parameters_type* %65, i32 0, i32 0
  store i64 3, i64* %66, align 8
  %67 = getelementptr inbounds [6 x %struct.parameters_type], [6 x %struct.parameters_type]* %7, i64 0, i64 3
  %68 = getelementptr inbounds %struct.parameters_type, %struct.parameters_type* %67, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %68, align 8
  br label %69

69:                                               ; preds = %60, %56
  %70 = load %struct.mrb_irep*, %struct.mrb_irep** %9, align 8
  %71 = getelementptr inbounds %struct.mrb_irep, %struct.mrb_irep* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 1
  %74 = call i32 @PEEK_W(i64* %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @MRB_ASPEC_REQ(i32 %75)
  %77 = getelementptr inbounds [6 x %struct.parameters_type], [6 x %struct.parameters_type]* %7, i64 0, i64 0
  %78 = getelementptr inbounds %struct.parameters_type, %struct.parameters_type* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 16
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @MRB_ASPEC_OPT(i32 %79)
  %81 = getelementptr inbounds [6 x %struct.parameters_type], [6 x %struct.parameters_type]* %7, i64 0, i64 1
  %82 = getelementptr inbounds %struct.parameters_type, %struct.parameters_type* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @MRB_ASPEC_REST(i32 %83)
  %85 = getelementptr inbounds [6 x %struct.parameters_type], [6 x %struct.parameters_type]* %7, i64 0, i64 2
  %86 = getelementptr inbounds %struct.parameters_type, %struct.parameters_type* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 16
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @MRB_ASPEC_POST(i32 %87)
  %89 = getelementptr inbounds [6 x %struct.parameters_type], [6 x %struct.parameters_type]* %7, i64 0, i64 3
  %90 = getelementptr inbounds %struct.parameters_type, %struct.parameters_type* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @MRB_ASPEC_BLOCK(i32 %91)
  %93 = getelementptr inbounds [6 x %struct.parameters_type], [6 x %struct.parameters_type]* %7, i64 0, i64 4
  %94 = getelementptr inbounds %struct.parameters_type, %struct.parameters_type* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 16
  %95 = load i32*, i32** %4, align 8
  %96 = load %struct.mrb_irep*, %struct.mrb_irep** %9, align 8
  %97 = getelementptr inbounds %struct.mrb_irep, %struct.mrb_irep* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = sub nsw i32 %98, 1
  %100 = call i32 @mrb_ary_new_capa(i32* %95, i32 %99)
  store i32 %100, i32* %11, align 4
  %101 = load %struct.mrb_irep*, %struct.mrb_irep** %9, align 8
  %102 = getelementptr inbounds %struct.mrb_irep, %struct.mrb_irep* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = sub nsw i32 %103, 1
  store i32 %104, i32* %14, align 4
  store i32 0, i32* %12, align 4
  %105 = getelementptr inbounds [6 x %struct.parameters_type], [6 x %struct.parameters_type]* %7, i64 0, i64 0
  store %struct.parameters_type* %105, %struct.parameters_type** %6, align 8
  br label %106

106:                                              ; preds = %183, %69
  %107 = load %struct.parameters_type*, %struct.parameters_type** %6, align 8
  %108 = getelementptr inbounds %struct.parameters_type, %struct.parameters_type* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %186

111:                                              ; preds = %106
  %112 = load i32*, i32** %4, align 8
  %113 = load %struct.parameters_type*, %struct.parameters_type** %6, align 8
  %114 = getelementptr inbounds %struct.parameters_type, %struct.parameters_type* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = load %struct.parameters_type*, %struct.parameters_type** %6, align 8
  %117 = getelementptr inbounds %struct.parameters_type, %struct.parameters_type* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = trunc i64 %118 to i32
  %120 = call i32 @mrb_intern_static(i32* %112, i8* %115, i32 %119)
  %121 = call i32 @mrb_symbol_value(i32 %120)
  store i32 %121, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %122

122:                                              ; preds = %177, %111
  %123 = load i32, i32* %13, align 4
  %124 = load %struct.parameters_type*, %struct.parameters_type** %6, align 8
  %125 = getelementptr inbounds %struct.parameters_type, %struct.parameters_type* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = icmp slt i32 %123, %126
  br i1 %127, label %128, label %182

128:                                              ; preds = %122
  %129 = load i32*, i32** %4, align 8
  %130 = call i32 @mrb_ary_new(i32* %129)
  store i32 %130, i32* %16, align 4
  %131 = load i32*, i32** %4, align 8
  %132 = load i32, i32* %16, align 4
  %133 = load i32, i32* %15, align 4
  %134 = call i32 @mrb_ary_push(i32* %131, i32 %132, i32 %133)
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* %14, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %172

138:                                              ; preds = %128
  %139 = load %struct.mrb_irep*, %struct.mrb_irep** %9, align 8
  %140 = getelementptr inbounds %struct.mrb_irep, %struct.mrb_irep* %139, i32 0, i32 2
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = load i32, i32* %12, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %172

148:                                              ; preds = %138
  %149 = load %struct.mrb_irep*, %struct.mrb_irep** %9, align 8
  %150 = getelementptr inbounds %struct.mrb_irep, %struct.mrb_irep* %149, i32 0, i32 2
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = load i32, i32* %12, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %17, align 4
  %157 = load i32*, i32** %4, align 8
  %158 = load i32, i32* %17, align 4
  %159 = call i8* @mrb_sym2name(i32* %157, i32 %158)
  store i8* %159, i8** %18, align 8
  %160 = load i8*, i8** %18, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 0
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  switch i32 %163, label %165 [
    i32 42, label %164
    i32 38, label %164
  ]

164:                                              ; preds = %148, %148
  br label %171

165:                                              ; preds = %148
  %166 = load i32*, i32** %4, align 8
  %167 = load i32, i32* %16, align 4
  %168 = load i32, i32* %17, align 4
  %169 = call i32 @mrb_symbol_value(i32 %168)
  %170 = call i32 @mrb_ary_push(i32* %166, i32 %167, i32 %169)
  br label %171

171:                                              ; preds = %165, %164
  br label %172

172:                                              ; preds = %171, %138, %128
  %173 = load i32*, i32** %4, align 8
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* %16, align 4
  %176 = call i32 @mrb_ary_push(i32* %173, i32 %174, i32 %175)
  br label %177

177:                                              ; preds = %172
  %178 = load i32, i32* %12, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %12, align 4
  %180 = load i32, i32* %13, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %13, align 4
  br label %122

182:                                              ; preds = %122
  br label %183

183:                                              ; preds = %182
  %184 = load %struct.parameters_type*, %struct.parameters_type** %6, align 8
  %185 = getelementptr inbounds %struct.parameters_type, %struct.parameters_type* %184, i32 1
  store %struct.parameters_type* %185, %struct.parameters_type** %6, align 8
  br label %106

186:                                              ; preds = %106
  %187 = load i32, i32* %11, align 4
  store i32 %187, i32* %3, align 4
  br label %188

188:                                              ; preds = %186, %53, %43, %35, %29
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.RProc* @mrb_proc_ptr(i32) #2

declare dso_local i64 @MRB_PROC_CFUNC_P(%struct.RProc*) #2

declare dso_local i32 @mrb_ary_new(i32*) #2

declare dso_local i32 @MRB_PROC_STRICT_P(%struct.RProc*) #2

declare dso_local i32 @PEEK_W(i64*) #2

declare dso_local i32 @MRB_ASPEC_REQ(i32) #2

declare dso_local i32 @MRB_ASPEC_OPT(i32) #2

declare dso_local i32 @MRB_ASPEC_REST(i32) #2

declare dso_local i32 @MRB_ASPEC_POST(i32) #2

declare dso_local i32 @MRB_ASPEC_BLOCK(i32) #2

declare dso_local i32 @mrb_ary_new_capa(i32*, i32) #2

declare dso_local i32 @mrb_symbol_value(i32) #2

declare dso_local i32 @mrb_intern_static(i32*, i8*, i32) #2

declare dso_local i32 @mrb_ary_push(i32*, i32, i32) #2

declare dso_local i8* @mrb_sym2name(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
