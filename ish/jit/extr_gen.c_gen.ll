; ModuleID = '/home/carl/AnghaBench/ish/jit/extr_gen.c_gen.c'
source_filename = "/home/carl/AnghaBench/ish/jit/extr_gen.c_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gen_state = type { i32, i32, %struct.jit_block* }
%struct.jit_block = type { i64* }

@.str = private unnamed_addr constant [28 x i8] c"out of memory while jitting\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gen_state*, i64)* @gen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen(%struct.gen_state* %0, i64 %1) #0 {
  %3 = alloca %struct.gen_state*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.jit_block*, align 8
  store %struct.gen_state* %0, %struct.gen_state** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.gen_state*, %struct.gen_state** %3, align 8
  %7 = getelementptr inbounds %struct.gen_state, %struct.gen_state* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.gen_state*, %struct.gen_state** %3, align 8
  %10 = getelementptr inbounds %struct.gen_state, %struct.gen_state* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp sle i32 %8, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.gen_state*, %struct.gen_state** %3, align 8
  %16 = getelementptr inbounds %struct.gen_state, %struct.gen_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.gen_state*, %struct.gen_state** %3, align 8
  %19 = getelementptr inbounds %struct.gen_state, %struct.gen_state* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp sge i32 %17, %20
  br i1 %21, label %22, label %46

22:                                               ; preds = %2
  %23 = load %struct.gen_state*, %struct.gen_state** %3, align 8
  %24 = getelementptr inbounds %struct.gen_state, %struct.gen_state* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %25, 2
  store i32 %26, i32* %24, align 4
  %27 = load %struct.gen_state*, %struct.gen_state** %3, align 8
  %28 = getelementptr inbounds %struct.gen_state, %struct.gen_state* %27, i32 0, i32 2
  %29 = load %struct.jit_block*, %struct.jit_block** %28, align 8
  %30 = load %struct.gen_state*, %struct.gen_state** %3, align 8
  %31 = getelementptr inbounds %struct.gen_state, %struct.gen_state* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 8
  %35 = add i64 8, %34
  %36 = trunc i64 %35 to i32
  %37 = call %struct.jit_block* @realloc(%struct.jit_block* %29, i32 %36)
  store %struct.jit_block* %37, %struct.jit_block** %5, align 8
  %38 = load %struct.jit_block*, %struct.jit_block** %5, align 8
  %39 = icmp eq %struct.jit_block* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %22
  %41 = call i32 @die(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %22
  %43 = load %struct.jit_block*, %struct.jit_block** %5, align 8
  %44 = load %struct.gen_state*, %struct.gen_state** %3, align 8
  %45 = getelementptr inbounds %struct.gen_state, %struct.gen_state* %44, i32 0, i32 2
  store %struct.jit_block* %43, %struct.jit_block** %45, align 8
  br label %46

46:                                               ; preds = %42, %2
  %47 = load %struct.gen_state*, %struct.gen_state** %3, align 8
  %48 = getelementptr inbounds %struct.gen_state, %struct.gen_state* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.gen_state*, %struct.gen_state** %3, align 8
  %51 = getelementptr inbounds %struct.gen_state, %struct.gen_state* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %49, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load i64, i64* %4, align 8
  %57 = load %struct.gen_state*, %struct.gen_state** %3, align 8
  %58 = getelementptr inbounds %struct.gen_state, %struct.gen_state* %57, i32 0, i32 2
  %59 = load %struct.jit_block*, %struct.jit_block** %58, align 8
  %60 = getelementptr inbounds %struct.jit_block, %struct.jit_block* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = load %struct.gen_state*, %struct.gen_state** %3, align 8
  %63 = getelementptr inbounds %struct.gen_state, %struct.gen_state* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i64, i64* %61, i64 %66
  store i64 %56, i64* %67, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.jit_block* @realloc(%struct.jit_block*, i32) #1

declare dso_local i32 @die(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
