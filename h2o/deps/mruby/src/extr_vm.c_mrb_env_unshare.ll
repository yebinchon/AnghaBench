; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_vm.c_mrb_env_unshare.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_vm.c_mrb_env_unshare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.REnv* }
%struct.REnv = type { i32*, %struct.TYPE_7__* }
%struct.RBasic = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrb_env_unshare(%struct.TYPE_9__* %0, %struct.REnv* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.REnv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.REnv* %1, %struct.REnv** %4, align 8
  %7 = load %struct.REnv*, %struct.REnv** %4, align 8
  %8 = icmp eq %struct.REnv* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %64

10:                                               ; preds = %2
  %11 = load %struct.REnv*, %struct.REnv** %4, align 8
  %12 = call i32 @MRB_ENV_STACK_LEN(%struct.REnv* %11)
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %5, align 8
  %14 = load %struct.REnv*, %struct.REnv** %4, align 8
  %15 = call i32 @MRB_ENV_STACK_SHARED_P(%struct.REnv* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  br label %64

18:                                               ; preds = %10
  %19 = load %struct.REnv*, %struct.REnv** %4, align 8
  %20 = getelementptr inbounds %struct.REnv, %struct.REnv* %19, i32 0, i32 1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = icmp ne %struct.TYPE_7__* %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %64

27:                                               ; preds = %18
  %28 = load %struct.REnv*, %struct.REnv** %4, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load %struct.REnv*, %struct.REnv** %34, align 8
  %36 = icmp eq %struct.REnv* %28, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %64

38:                                               ; preds = %27
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = load i64, i64* %5, align 8
  %41 = mul i64 4, %40
  %42 = trunc i64 %41 to i32
  %43 = call i64 @mrb_malloc(%struct.TYPE_9__* %39, i32 %42)
  %44 = inttoptr i64 %43 to i32*
  store i32* %44, i32** %6, align 8
  %45 = load i64, i64* %5, align 8
  %46 = icmp ugt i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %38
  %48 = load i32*, i32** %6, align 8
  %49 = load %struct.REnv*, %struct.REnv** %4, align 8
  %50 = getelementptr inbounds %struct.REnv, %struct.REnv* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @stack_copy(i32* %48, i32* %51, i64 %52)
  br label %54

54:                                               ; preds = %47, %38
  %55 = load i32*, i32** %6, align 8
  %56 = load %struct.REnv*, %struct.REnv** %4, align 8
  %57 = getelementptr inbounds %struct.REnv, %struct.REnv* %56, i32 0, i32 0
  store i32* %55, i32** %57, align 8
  %58 = load %struct.REnv*, %struct.REnv** %4, align 8
  %59 = call i32 @MRB_ENV_UNSHARE_STACK(%struct.REnv* %58)
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %61 = load %struct.REnv*, %struct.REnv** %4, align 8
  %62 = bitcast %struct.REnv* %61 to %struct.RBasic*
  %63 = call i32 @mrb_write_barrier(%struct.TYPE_9__* %60, %struct.RBasic* %62)
  br label %64

64:                                               ; preds = %9, %17, %26, %37, %54
  ret void
}

declare dso_local i32 @MRB_ENV_STACK_LEN(%struct.REnv*) #1

declare dso_local i32 @MRB_ENV_STACK_SHARED_P(%struct.REnv*) #1

declare dso_local i64 @mrb_malloc(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @stack_copy(i32*, i32*, i64) #1

declare dso_local i32 @MRB_ENV_UNSHARE_STACK(%struct.REnv*) #1

declare dso_local i32 @mrb_write_barrier(%struct.TYPE_9__*, %struct.RBasic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
