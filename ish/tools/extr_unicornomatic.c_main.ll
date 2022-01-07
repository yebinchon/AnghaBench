; ModuleID = '/home/carl/AnghaBench/ish/tools/extr_unicornomatic.c_main.c'
source_filename = "/home/carl/AnghaBench/ish/tools/extr_unicornomatic.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.cpu_state, %struct.TYPE_3__* }
%struct.cpu_state = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.tlb = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@current = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"resetting cpu\0A\00", align 1
@debugger = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.cpu_state*, align 8
  %9 = alloca %struct.tlb, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.cpu_state, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32 @xX_main_Xx(i32 %12, i8** %13, i32* null)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load i32, i32* @stderr, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sub nsw i32 0, %19
  %21 = call i8* @strerror(i32 %20)
  %22 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = load i32, i32* %6, align 4
  ret i32 %23

24:                                               ; preds = %2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = call i32* @start_unicorn(%struct.cpu_state* %26, i32* %30)
  store i32* %31, i32** %7, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store %struct.cpu_state* %33, %struct.cpu_state** %8, align 8
  %34 = load %struct.cpu_state*, %struct.cpu_state** %8, align 8
  %35 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @tlb_init(%struct.tlb* %9, i32 %36)
  store i32 0, i32* %10, align 4
  %38 = load %struct.cpu_state*, %struct.cpu_state** %8, align 8
  %39 = bitcast %struct.cpu_state* %11 to i8*
  %40 = bitcast %struct.cpu_state* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 4, i1 false)
  br label %41

41:                                               ; preds = %24, %56
  br label %42

42:                                               ; preds = %48, %41
  %43 = load %struct.cpu_state*, %struct.cpu_state** %8, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i64 @compare_cpus(%struct.cpu_state* %43, %struct.tlb* %9, i32* %44, i32 %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  %49 = call i32 @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.cpu_state*, %struct.cpu_state** %8, align 8
  %51 = bitcast %struct.cpu_state* %50 to i8*
  %52 = bitcast %struct.cpu_state* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 %52, i64 4, i1 false)
  %53 = load i32, i32* @debugger, align 4
  %54 = load %struct.cpu_state*, %struct.cpu_state** %8, align 8
  %55 = call i32 @cpu_step32(%struct.cpu_state* %54, %struct.tlb* %9)
  br label %42

56:                                               ; preds = %42
  %57 = load %struct.cpu_state*, %struct.cpu_state** %8, align 8
  %58 = call i32 @undefined_flags_mask(%struct.cpu_state* %57, %struct.tlb* %9)
  store i32 %58, i32* %10, align 4
  %59 = load %struct.cpu_state*, %struct.cpu_state** %8, align 8
  %60 = bitcast %struct.cpu_state* %11 to i8*
  %61 = bitcast %struct.cpu_state* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 4 %61, i64 4, i1 false)
  %62 = load %struct.cpu_state*, %struct.cpu_state** %8, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @step_tracing(%struct.cpu_state* %62, %struct.tlb* %9, i32* %63)
  br label %41
}

declare dso_local i32 @xX_main_Xx(i32, i8**, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32* @start_unicorn(%struct.cpu_state*, i32*) #1

declare dso_local i32 @tlb_init(%struct.tlb*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @compare_cpus(%struct.cpu_state*, %struct.tlb*, i32*, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @cpu_step32(%struct.cpu_state*, %struct.tlb*) #1

declare dso_local i32 @undefined_flags_mask(%struct.cpu_state*, %struct.tlb*) #1

declare dso_local i32 @step_tracing(%struct.cpu_state*, %struct.tlb*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
