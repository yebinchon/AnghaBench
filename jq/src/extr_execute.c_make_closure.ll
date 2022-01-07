; ModuleID = '/home/carl/AnghaBench/jq/src/extr_execute.c_make_closure.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_execute.c_make_closure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jq_state = type { i32 }
%struct.closure = type { i32, i32 }
%struct.frame = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.closure }
%struct.TYPE_3__ = type { i32, i32, i32* }

@ARG_NEWCLOSURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.jq_state*, i32*)* @make_closure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @make_closure(%struct.jq_state* %0, i32* %1) #0 {
  %3 = alloca %struct.closure, align 4
  %4 = alloca %struct.jq_state*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.frame*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.jq_state* %0, %struct.jq_state** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = getelementptr inbounds i32, i32* %12, i32 1
  store i32* %13, i32** %5, align 8
  %14 = load i32, i32* %12, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %16, i32** %5, align 8
  %17 = load i32, i32* %15, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.jq_state*, %struct.jq_state** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @frame_get_level(%struct.jq_state* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.jq_state*, %struct.jq_state** %4, align 8
  %22 = getelementptr inbounds %struct.jq_state, %struct.jq_state* %21, i32 0, i32 0
  %23 = load i32, i32* %8, align 4
  %24 = call %struct.frame* @stack_block(i32* %22, i32 %23)
  store %struct.frame* %24, %struct.frame** %9, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @ARG_NEWCLOSURE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %2
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @ARG_NEWCLOSURE, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.frame*, %struct.frame** %9, align 8
  %36 = getelementptr inbounds %struct.frame, %struct.frame* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %34, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = getelementptr inbounds %struct.closure, %struct.closure* %3, i32 0, i32 0
  %44 = load %struct.frame*, %struct.frame** %9, align 8
  %45 = getelementptr inbounds %struct.frame, %struct.frame* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %43, align 4
  %53 = getelementptr inbounds %struct.closure, %struct.closure* %3, i32 0, i32 1
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %53, align 4
  br label %79

55:                                               ; preds = %2
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp sge i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.frame*, %struct.frame** %9, align 8
  %63 = getelementptr inbounds %struct.frame, %struct.frame* %62, i32 0, i32 1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %61, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load %struct.frame*, %struct.frame** %9, align 8
  %71 = getelementptr inbounds %struct.frame, %struct.frame* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = bitcast %struct.closure* %3 to i8*
  %78 = bitcast %struct.closure* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %77, i8* align 4 %78, i64 8, i1 false)
  br label %79

79:                                               ; preds = %55, %29
  %80 = bitcast %struct.closure* %3 to i64*
  %81 = load i64, i64* %80, align 4
  ret i64 %81
}

declare dso_local i32 @frame_get_level(%struct.jq_state*, i32) #1

declare dso_local %struct.frame* @stack_block(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
