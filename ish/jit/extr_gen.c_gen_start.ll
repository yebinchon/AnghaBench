; ModuleID = '/home/carl/AnghaBench/ish/jit/extr_gen.c_gen_start.c'
source_filename = "/home/carl/AnghaBench/ish/jit/extr_gen.c_gen_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gen_state = type { i32, %struct.jit_block*, i64, i64*, i8*, i64 }
%struct.jit_block = type { i8* }

@JIT_BLOCK_INITIAL_CAPACITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen_start(i8* %0, %struct.gen_state* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.gen_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.jit_block*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.gen_state* %1, %struct.gen_state** %4, align 8
  %7 = load i32, i32* @JIT_BLOCK_INITIAL_CAPACITY, align 4
  %8 = load %struct.gen_state*, %struct.gen_state** %4, align 8
  %9 = getelementptr inbounds %struct.gen_state, %struct.gen_state* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load %struct.gen_state*, %struct.gen_state** %4, align 8
  %11 = getelementptr inbounds %struct.gen_state, %struct.gen_state* %10, i32 0, i32 5
  store i64 0, i64* %11, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = load %struct.gen_state*, %struct.gen_state** %4, align 8
  %14 = getelementptr inbounds %struct.gen_state, %struct.gen_state* %13, i32 0, i32 4
  store i8* %12, i8** %14, align 8
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %25, %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp sle i32 %16, 1
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = load %struct.gen_state*, %struct.gen_state** %4, align 8
  %20 = getelementptr inbounds %struct.gen_state, %struct.gen_state* %19, i32 0, i32 3
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %15

28:                                               ; preds = %15
  %29 = load %struct.gen_state*, %struct.gen_state** %4, align 8
  %30 = getelementptr inbounds %struct.gen_state, %struct.gen_state* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.gen_state*, %struct.gen_state** %4, align 8
  %32 = getelementptr inbounds %struct.gen_state, %struct.gen_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 8
  %36 = add i64 8, %35
  %37 = trunc i64 %36 to i32
  %38 = call %struct.jit_block* @malloc(i32 %37)
  store %struct.jit_block* %38, %struct.jit_block** %6, align 8
  %39 = load %struct.jit_block*, %struct.jit_block** %6, align 8
  %40 = load %struct.gen_state*, %struct.gen_state** %4, align 8
  %41 = getelementptr inbounds %struct.gen_state, %struct.gen_state* %40, i32 0, i32 1
  store %struct.jit_block* %39, %struct.jit_block** %41, align 8
  %42 = load i8*, i8** %3, align 8
  %43 = load %struct.jit_block*, %struct.jit_block** %6, align 8
  %44 = getelementptr inbounds %struct.jit_block, %struct.jit_block* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  ret void
}

declare dso_local %struct.jit_block* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
