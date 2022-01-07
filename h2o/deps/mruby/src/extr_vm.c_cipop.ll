; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_vm.c_cipop.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_vm.c_cipop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.mrb_context* }
%struct.mrb_context = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.REnv* }
%struct.REnv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @cipop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cipop(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.mrb_context*, align 8
  %4 = alloca %struct.REnv*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load %struct.mrb_context*, %struct.mrb_context** %6, align 8
  store %struct.mrb_context* %7, %struct.mrb_context** %3, align 8
  %8 = load %struct.mrb_context*, %struct.mrb_context** %3, align 8
  %9 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.REnv*, %struct.REnv** %11, align 8
  store %struct.REnv* %12, %struct.REnv** %4, align 8
  %13 = load %struct.mrb_context*, %struct.mrb_context** %3, align 8
  %14 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 -1
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %14, align 8
  %17 = load %struct.REnv*, %struct.REnv** %4, align 8
  %18 = icmp ne %struct.REnv* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %21 = load %struct.REnv*, %struct.REnv** %4, align 8
  %22 = call i32 @mrb_env_unshare(%struct.TYPE_6__* %20, %struct.REnv* %21)
  br label %23

23:                                               ; preds = %19, %1
  ret void
}

declare dso_local i32 @mrb_env_unshare(%struct.TYPE_6__*, %struct.REnv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
