; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_vm.c_cipush.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_vm.c_cipush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.mrb_context* }
%struct.mrb_context = type { i32, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__* }

@cipush.ci_zero = internal constant %struct.TYPE_8__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_7__*)* @cipush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @cipush(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.mrb_context*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load %struct.mrb_context*, %struct.mrb_context** %8, align 8
  store %struct.mrb_context* %9, %struct.mrb_context** %3, align 8
  %10 = load %struct.mrb_context*, %struct.mrb_context** %3, align 8
  %11 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %10, i32 0, i32 1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %4, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i64 1
  %18 = load %struct.mrb_context*, %struct.mrb_context** %3, align 8
  %19 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %18, i32 0, i32 3
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = icmp eq %struct.TYPE_8__* %17, %20
  br i1 %21, label %22, label %62

22:                                               ; preds = %1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = load %struct.mrb_context*, %struct.mrb_context** %3, align 8
  %25 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %24, i32 0, i32 2
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = ptrtoint %struct.TYPE_8__* %23 to i64
  %28 = ptrtoint %struct.TYPE_8__* %26 to i64
  %29 = sub i64 %27, %28
  %30 = sdiv exact i64 %29, 12
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %6, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %33 = load %struct.mrb_context*, %struct.mrb_context** %3, align 8
  %34 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %33, i32 0, i32 2
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 12, %37
  %39 = mul i64 %38, 2
  %40 = trunc i64 %39 to i32
  %41 = call i64 @mrb_realloc(%struct.TYPE_7__* %32, %struct.TYPE_8__* %35, i32 %40)
  %42 = inttoptr i64 %41 to %struct.TYPE_8__*
  %43 = load %struct.mrb_context*, %struct.mrb_context** %3, align 8
  %44 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %43, i32 0, i32 2
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %44, align 8
  %45 = load %struct.mrb_context*, %struct.mrb_context** %3, align 8
  %46 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %45, i32 0, i32 2
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i64 %49
  %51 = load %struct.mrb_context*, %struct.mrb_context** %3, align 8
  %52 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %51, i32 0, i32 1
  store %struct.TYPE_8__* %50, %struct.TYPE_8__** %52, align 8
  %53 = load %struct.mrb_context*, %struct.mrb_context** %3, align 8
  %54 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %53, i32 0, i32 2
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = mul nsw i32 %56, 2
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i64 %58
  %60 = load %struct.mrb_context*, %struct.mrb_context** %3, align 8
  %61 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %60, i32 0, i32 3
  store %struct.TYPE_8__* %59, %struct.TYPE_8__** %61, align 8
  br label %62

62:                                               ; preds = %22, %1
  %63 = load %struct.mrb_context*, %struct.mrb_context** %3, align 8
  %64 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %63, i32 0, i32 1
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 1
  store %struct.TYPE_8__* %66, %struct.TYPE_8__** %64, align 8
  store %struct.TYPE_8__* %66, %struct.TYPE_8__** %4, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %68 = bitcast %struct.TYPE_8__* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %68, i8* align 4 bitcast (%struct.TYPE_8__* @cipush.ci_zero to i8*), i64 12, i1 false)
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load %struct.mrb_context*, %struct.mrb_context** %70, align 8
  %72 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  ret %struct.TYPE_8__* %79
}

declare dso_local i64 @mrb_realloc(%struct.TYPE_7__*, %struct.TYPE_8__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
