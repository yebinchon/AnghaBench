; ModuleID = '/home/carl/AnghaBench/linux/arch/um/kernel/extr_irq.c_from_irq_stack.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/kernel/extr_irq.c_from_irq_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.thread_info* }
%struct.thread_info = type { %struct.thread_info* }

@pending_mask = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @from_irq_stack(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.thread_info*, align 8
  %4 = alloca %struct.thread_info*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = call %struct.thread_info* (...) @current_thread_info()
  store %struct.thread_info* %6, %struct.thread_info** %3, align 8
  store i32 1, i32* @pending_mask, align 4
  %7 = load %struct.thread_info*, %struct.thread_info** %3, align 8
  %8 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %7, i32 0, i32 0
  %9 = load %struct.thread_info*, %struct.thread_info** %8, align 8
  store %struct.thread_info* %9, %struct.thread_info** %4, align 8
  %10 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.thread_info* %10, %struct.thread_info** %12, align 8
  %13 = load %struct.thread_info*, %struct.thread_info** %3, align 8
  %14 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %13, i32 0, i32 0
  store %struct.thread_info* null, %struct.thread_info** %14, align 8
  %15 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %16 = load %struct.thread_info*, %struct.thread_info** %3, align 8
  %17 = bitcast %struct.thread_info* %15 to i8*
  %18 = bitcast %struct.thread_info* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 8, i1 false)
  %19 = call i64 @xchg(i32* @pending_mask, i32 0)
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = and i64 %20, -2
  ret i64 %21
}

declare dso_local %struct.thread_info* @current_thread_info(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @xchg(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
