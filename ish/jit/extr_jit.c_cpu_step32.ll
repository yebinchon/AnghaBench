; ModuleID = '/home/carl/AnghaBench/ish/jit/extr_jit.c_cpu_step32.c'
source_filename = "/home/carl/AnghaBench/ish/jit/extr_jit.c_cpu_step32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_state = type { i32 }
%struct.tlb = type { i32 }
%struct.gen_state = type { %struct.jit_block* }
%struct.jit_block = type { i32 }
%struct.jit_frame = type { %struct.cpu_state }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpu_step32(%struct.cpu_state* %0, %struct.tlb* %1) #0 {
  %3 = alloca %struct.cpu_state*, align 8
  %4 = alloca %struct.tlb*, align 8
  %5 = alloca %struct.gen_state, align 8
  %6 = alloca %struct.jit_block*, align 8
  %7 = alloca %struct.jit_frame, align 4
  %8 = alloca i32, align 4
  store %struct.cpu_state* %0, %struct.cpu_state** %3, align 8
  store %struct.tlb* %1, %struct.tlb** %4, align 8
  %9 = load %struct.cpu_state*, %struct.cpu_state** %3, align 8
  %10 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @gen_start(i32 %11, %struct.gen_state* %5)
  %13 = load %struct.tlb*, %struct.tlb** %4, align 8
  %14 = call i32 @gen_step32(%struct.gen_state* %5, %struct.tlb* %13)
  %15 = call i32 @gen_exit(%struct.gen_state* %5)
  %16 = call i32 @gen_end(%struct.gen_state* %5)
  %17 = getelementptr inbounds %struct.gen_state, %struct.gen_state* %5, i32 0, i32 0
  %18 = load %struct.jit_block*, %struct.jit_block** %17, align 8
  store %struct.jit_block* %18, %struct.jit_block** %6, align 8
  %19 = getelementptr inbounds %struct.jit_frame, %struct.jit_frame* %7, i32 0, i32 0
  %20 = load %struct.cpu_state*, %struct.cpu_state** %3, align 8
  %21 = bitcast %struct.cpu_state* %19 to i8*
  %22 = bitcast %struct.cpu_state* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 4, i1 false)
  %23 = load %struct.jit_block*, %struct.jit_block** %6, align 8
  %24 = load %struct.tlb*, %struct.tlb** %4, align 8
  %25 = call i32 @jit_enter(%struct.jit_block* %23, %struct.jit_frame* %7, %struct.tlb* %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.cpu_state*, %struct.cpu_state** %3, align 8
  %27 = getelementptr inbounds %struct.jit_frame, %struct.jit_frame* %7, i32 0, i32 0
  %28 = bitcast %struct.cpu_state* %26 to i8*
  %29 = bitcast %struct.cpu_state* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 4, i1 false)
  %30 = load %struct.jit_block*, %struct.jit_block** %6, align 8
  %31 = call i32 @jit_block_free(i32* null, %struct.jit_block* %30)
  %32 = load i32, i32* %8, align 4
  ret i32 %32
}

declare dso_local i32 @gen_start(i32, %struct.gen_state*) #1

declare dso_local i32 @gen_step32(%struct.gen_state*, %struct.tlb*) #1

declare dso_local i32 @gen_exit(%struct.gen_state*) #1

declare dso_local i32 @gen_end(%struct.gen_state*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @jit_enter(%struct.jit_block*, %struct.jit_frame*, %struct.tlb*) #1

declare dso_local i32 @jit_block_free(i32*, %struct.jit_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
