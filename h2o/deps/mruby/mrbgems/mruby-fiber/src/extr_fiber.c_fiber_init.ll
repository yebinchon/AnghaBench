; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-fiber/src/extr_fiber.c_fiber_init.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-fiber/src/extr_fiber.c_fiber_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrb_context = type { i32, %struct.RFiber*, %struct.TYPE_16__*, i32*, %struct.TYPE_16__*, %struct.TYPE_16__*, i32*, i32*, i32 }
%struct.RFiber = type { %struct.mrb_context* }
%struct.TYPE_16__ = type { i32, %struct.RProc*, i32, i32* }
%struct.RProc = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32* }
%struct.RBasic = type { i32 }

@fiber_init.mrb_context_zero = internal constant %struct.mrb_context zeroinitializer, align 8
@.str = private unnamed_addr constant [2 x i8] c"&\00", align 1
@E_RUNTIME_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"cannot initialize twice\00", align 1
@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"tried to create Fiber object without a block\00", align 1
@E_FIBER_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"tried to create Fiber from C defined method\00", align 1
@FIBER_STACK_INIT_SIZE = common dso_local global i64 0, align 8
@FIBER_CI_INIT_SIZE = common dso_local global i32 0, align 4
@MRB_FIBER_CREATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32)* @fiber_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fiber_init(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.RFiber*, align 8
  %6 = alloca %struct.mrb_context*, align 8
  %7 = alloca %struct.RProc*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.RFiber* @fiber_ptr(i32 %11)
  store %struct.RFiber* %12, %struct.RFiber** %5, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %14 = call i32 @mrb_get_args(%struct.TYPE_15__* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %9)
  %15 = load %struct.RFiber*, %struct.RFiber** %5, align 8
  %16 = getelementptr inbounds %struct.RFiber, %struct.RFiber* %15, i32 0, i32 0
  %17 = load %struct.mrb_context*, %struct.mrb_context** %16, align 8
  %18 = icmp ne %struct.mrb_context* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %21 = load i32, i32* @E_RUNTIME_ERROR, align 4
  %22 = call i32 @mrb_raise(%struct.TYPE_15__* %20, i32 %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %19, %2
  %24 = load i32, i32* %9, align 4
  %25 = call i64 @mrb_nil_p(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %29 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %30 = call i32 @mrb_raise(%struct.TYPE_15__* %28, i32 %29, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %31

31:                                               ; preds = %27, %23
  %32 = load i32, i32* %9, align 4
  %33 = call %struct.RProc* @mrb_proc_ptr(i32 %32)
  store %struct.RProc* %33, %struct.RProc** %7, align 8
  %34 = load %struct.RProc*, %struct.RProc** %7, align 8
  %35 = call i64 @MRB_PROC_CFUNC_P(%struct.RProc* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %39 = load i32, i32* @E_FIBER_ERROR, align 4
  %40 = call i32 @mrb_raise(%struct.TYPE_15__* %38, i32 %39, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %41

41:                                               ; preds = %37, %31
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %43 = call i64 @mrb_malloc(%struct.TYPE_15__* %42, i64 72)
  %44 = inttoptr i64 %43 to %struct.mrb_context*
  store %struct.mrb_context* %44, %struct.mrb_context** %6, align 8
  %45 = load %struct.mrb_context*, %struct.mrb_context** %6, align 8
  %46 = bitcast %struct.mrb_context* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 bitcast (%struct.mrb_context* @fiber_init.mrb_context_zero to i8*), i64 72, i1 false)
  %47 = load %struct.mrb_context*, %struct.mrb_context** %6, align 8
  %48 = load %struct.RFiber*, %struct.RFiber** %5, align 8
  %49 = getelementptr inbounds %struct.RFiber, %struct.RFiber* %48, i32 0, i32 0
  store %struct.mrb_context* %47, %struct.mrb_context** %49, align 8
  %50 = load i64, i64* @FIBER_STACK_INIT_SIZE, align 8
  store i64 %50, i64* %10, align 8
  %51 = load %struct.RProc*, %struct.RProc** %7, align 8
  %52 = getelementptr inbounds %struct.RProc, %struct.RProc* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %10, align 8
  %58 = icmp ugt i64 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %41
  %60 = load %struct.RProc*, %struct.RProc** %7, align 8
  %61 = getelementptr inbounds %struct.RProc, %struct.RProc* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %10, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %10, align 8
  br label %68

68:                                               ; preds = %59, %41
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %70 = load i64, i64* %10, align 8
  %71 = mul i64 %70, 4
  %72 = call i64 @mrb_malloc(%struct.TYPE_15__* %69, i64 %71)
  %73 = inttoptr i64 %72 to i32*
  %74 = load %struct.mrb_context*, %struct.mrb_context** %6, align 8
  %75 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %74, i32 0, i32 6
  store i32* %73, i32** %75, align 8
  %76 = load %struct.mrb_context*, %struct.mrb_context** %6, align 8
  %77 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %76, i32 0, i32 6
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* %10, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load %struct.mrb_context*, %struct.mrb_context** %6, align 8
  %82 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %81, i32 0, i32 7
  store i32* %80, i32** %82, align 8
  %83 = load %struct.mrb_context*, %struct.mrb_context** %6, align 8
  %84 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %83, i32 0, i32 6
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.mrb_context*, %struct.mrb_context** %6, align 8
  %87 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %86, i32 0, i32 3
  store i32* %85, i32** %87, align 8
  %88 = load %struct.mrb_context*, %struct.mrb_context** %6, align 8
  %89 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %88, i32 0, i32 6
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* %10, align 8
  %92 = mul i64 %91, 4
  %93 = call i32 @memset(i32* %90, i32 0, i64 %92)
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.mrb_context*, %struct.mrb_context** %6, align 8
  %102 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  store i32 %100, i32* %104, align 4
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %106 = load i32, i32* @FIBER_CI_INIT_SIZE, align 4
  %107 = call i64 @mrb_calloc(%struct.TYPE_15__* %105, i32 %106, i32 32)
  %108 = inttoptr i64 %107 to %struct.TYPE_16__*
  %109 = load %struct.mrb_context*, %struct.mrb_context** %6, align 8
  %110 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %109, i32 0, i32 4
  store %struct.TYPE_16__* %108, %struct.TYPE_16__** %110, align 8
  %111 = load %struct.mrb_context*, %struct.mrb_context** %6, align 8
  %112 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %111, i32 0, i32 4
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %112, align 8
  %114 = load i32, i32* @FIBER_CI_INIT_SIZE, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i64 %115
  %117 = load %struct.mrb_context*, %struct.mrb_context** %6, align 8
  %118 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %117, i32 0, i32 5
  store %struct.TYPE_16__* %116, %struct.TYPE_16__** %118, align 8
  %119 = load %struct.mrb_context*, %struct.mrb_context** %6, align 8
  %120 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %119, i32 0, i32 4
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %120, align 8
  %122 = load %struct.mrb_context*, %struct.mrb_context** %6, align 8
  %123 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %122, i32 0, i32 2
  store %struct.TYPE_16__* %121, %struct.TYPE_16__** %123, align 8
  %124 = load %struct.mrb_context*, %struct.mrb_context** %6, align 8
  %125 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %124, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.mrb_context*, %struct.mrb_context** %6, align 8
  %128 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %127, i32 0, i32 2
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 3
  store i32* %126, i32** %130, align 8
  %131 = load %struct.mrb_context*, %struct.mrb_context** %6, align 8
  %132 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %131, i32 0, i32 2
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %132, align 8
  store %struct.TYPE_16__* %133, %struct.TYPE_16__** %8, align 8
  %134 = load %struct.RProc*, %struct.RProc** %7, align 8
  %135 = call i32 @MRB_PROC_TARGET_CLASS(%struct.RProc* %134)
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  %138 = load %struct.RProc*, %struct.RProc** %7, align 8
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 1
  store %struct.RProc* %138, %struct.RProc** %140, align 8
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %142 = load i32, i32* %4, align 4
  %143 = call i64 @mrb_obj_ptr(i32 %142)
  %144 = inttoptr i64 %143 to %struct.RBasic*
  %145 = load %struct.RProc*, %struct.RProc** %7, align 8
  %146 = bitcast %struct.RProc* %145 to %struct.RBasic*
  %147 = call i32 @mrb_field_write_barrier(%struct.TYPE_15__* %141, %struct.RBasic* %144, %struct.RBasic* %146)
  %148 = load %struct.RProc*, %struct.RProc** %7, align 8
  %149 = getelementptr inbounds %struct.RProc, %struct.RProc* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i64 1
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i64 0
  %160 = bitcast %struct.TYPE_16__* %157 to i8*
  %161 = bitcast %struct.TYPE_16__* %159 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %160, i8* align 8 %161, i64 32, i1 false)
  %162 = load %struct.mrb_context*, %struct.mrb_context** %6, align 8
  %163 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %162, i32 0, i32 2
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 1
  store %struct.TYPE_16__* %165, %struct.TYPE_16__** %163, align 8
  %166 = load %struct.RFiber*, %struct.RFiber** %5, align 8
  %167 = load %struct.mrb_context*, %struct.mrb_context** %6, align 8
  %168 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %167, i32 0, i32 1
  store %struct.RFiber* %166, %struct.RFiber** %168, align 8
  %169 = load i32, i32* @MRB_FIBER_CREATED, align 4
  %170 = load %struct.mrb_context*, %struct.mrb_context** %6, align 8
  %171 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 8
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local %struct.RFiber* @fiber_ptr(i32) #1

declare dso_local i32 @mrb_get_args(%struct.TYPE_15__*, i8*, i32*) #1

declare dso_local i32 @mrb_raise(%struct.TYPE_15__*, i32, i8*) #1

declare dso_local i64 @mrb_nil_p(i32) #1

declare dso_local %struct.RProc* @mrb_proc_ptr(i32) #1

declare dso_local i64 @MRB_PROC_CFUNC_P(%struct.RProc*) #1

declare dso_local i64 @mrb_malloc(%struct.TYPE_15__*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i64 @mrb_calloc(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @MRB_PROC_TARGET_CLASS(%struct.RProc*) #1

declare dso_local i32 @mrb_field_write_barrier(%struct.TYPE_15__*, %struct.RBasic*, %struct.RBasic*) #1

declare dso_local i64 @mrb_obj_ptr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
