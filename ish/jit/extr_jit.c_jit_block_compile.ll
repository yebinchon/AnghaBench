; ModuleID = '/home/carl/AnghaBench/ish/jit/extr_jit.c_jit_block_compile.c'
source_filename = "/home/carl/AnghaBench/ish/jit/extr_jit.c_jit_block_compile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.jit_block = type { i32 }
%struct.tlb = type { i32 }
%struct.gen_state = type { i32, %struct.jit_block*, i32 }

@.str = private unnamed_addr constant [24 x i8] c"%d %08x --- compiling:\0A\00", align 1
@current = common dso_local global %struct.TYPE_2__* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.jit_block* (i32, %struct.tlb*)* @jit_block_compile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.jit_block* @jit_block_compile(i32 %0, %struct.tlb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tlb*, align 8
  %5 = alloca %struct.gen_state, align 8
  store i32 %0, i32* %3, align 4
  store %struct.tlb* %1, %struct.tlb** %4, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @gen_start(i32 %11, %struct.gen_state* %5)
  br label %13

13:                                               ; preds = %2, %28
  %14 = load %struct.tlb*, %struct.tlb** %4, align 8
  %15 = call i32 @gen_step32(%struct.gen_state* %5, %struct.tlb* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  br label %29

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.gen_state, %struct.gen_state* %5, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sub nsw i32 %20, %21
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = sub nsw i32 %23, 15
  %25 = icmp sge i32 %22, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = call i32 @gen_exit(%struct.gen_state* %5)
  br label %29

28:                                               ; preds = %18
  br label %13

29:                                               ; preds = %26, %17
  %30 = call i32 @gen_end(%struct.gen_state* %5)
  %31 = getelementptr inbounds %struct.gen_state, %struct.gen_state* %5, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sub nsw i32 %32, %33
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = icmp sle i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = getelementptr inbounds %struct.gen_state, %struct.gen_state* %5, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.gen_state, %struct.gen_state* %5, i32 0, i32 1
  %42 = load %struct.jit_block*, %struct.jit_block** %41, align 8
  %43 = getelementptr inbounds %struct.jit_block, %struct.jit_block* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  %44 = getelementptr inbounds %struct.gen_state, %struct.gen_state* %5, i32 0, i32 1
  %45 = load %struct.jit_block*, %struct.jit_block** %44, align 8
  ret %struct.jit_block* %45
}

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @gen_start(i32, %struct.gen_state*) #1

declare dso_local i32 @gen_step32(%struct.gen_state*, %struct.tlb*) #1

declare dso_local i32 @gen_exit(%struct.gen_state*) #1

declare dso_local i32 @gen_end(%struct.gen_state*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
