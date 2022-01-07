; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_proc.c_env_new.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_proc.c_env_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.REnv = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }

@MRB_TT_ENV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.REnv* (%struct.TYPE_7__*, i32)* @env_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.REnv* @env_new(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.REnv*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %6, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = load i32, i32* @MRB_TT_ENV, align 4
  %15 = call i64 @mrb_obj_alloc(%struct.TYPE_7__* %13, i32 %14, i32* null)
  %16 = inttoptr i64 %15 to %struct.REnv*
  store %struct.REnv* %16, %struct.REnv** %5, align 8
  %17 = load %struct.REnv*, %struct.REnv** %5, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @MRB_ENV_SET_STACK_LEN(%struct.REnv* %17, i32 %18)
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 2, i32* %7, align 4
  br label %31

28:                                               ; preds = %2
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %28, %27
  %32 = load %struct.REnv*, %struct.REnv** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @MRB_ENV_SET_BIDX(%struct.REnv* %32, i32 %33)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.REnv*, %struct.REnv** %5, align 8
  %39 = getelementptr inbounds %struct.REnv, %struct.REnv* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.REnv*, %struct.REnv** %5, align 8
  %46 = getelementptr inbounds %struct.REnv, %struct.REnv* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load %struct.REnv*, %struct.REnv** %5, align 8
  %51 = getelementptr inbounds %struct.REnv, %struct.REnv* %50, i32 0, i32 0
  store %struct.TYPE_6__* %49, %struct.TYPE_6__** %51, align 8
  %52 = load %struct.REnv*, %struct.REnv** %5, align 8
  ret %struct.REnv* %52
}

declare dso_local i64 @mrb_obj_alloc(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @MRB_ENV_SET_STACK_LEN(%struct.REnv*, i32) #1

declare dso_local i32 @MRB_ENV_SET_BIDX(%struct.REnv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
