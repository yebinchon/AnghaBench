; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_if_then_else_handler.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_if_then_else_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_formatting_stack = type { i32, i64, %struct.ref_formatting_stack* }
%struct.if_then_else = type { i64, i64, i32 }

@.str = private unnamed_addr constant [49 x i8] c"format: %%(if) atom used without a %%(then) atom\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ref_formatting_stack**)* @if_then_else_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @if_then_else_handler(%struct.ref_formatting_stack** %0) #0 {
  %2 = alloca %struct.ref_formatting_stack**, align 8
  %3 = alloca %struct.ref_formatting_stack*, align 8
  %4 = alloca %struct.ref_formatting_stack*, align 8
  %5 = alloca %struct.if_then_else*, align 8
  store %struct.ref_formatting_stack** %0, %struct.ref_formatting_stack*** %2, align 8
  %6 = load %struct.ref_formatting_stack**, %struct.ref_formatting_stack*** %2, align 8
  %7 = load %struct.ref_formatting_stack*, %struct.ref_formatting_stack** %6, align 8
  store %struct.ref_formatting_stack* %7, %struct.ref_formatting_stack** %3, align 8
  %8 = load %struct.ref_formatting_stack*, %struct.ref_formatting_stack** %3, align 8
  %9 = getelementptr inbounds %struct.ref_formatting_stack, %struct.ref_formatting_stack* %8, i32 0, i32 2
  %10 = load %struct.ref_formatting_stack*, %struct.ref_formatting_stack** %9, align 8
  store %struct.ref_formatting_stack* %10, %struct.ref_formatting_stack** %4, align 8
  %11 = load %struct.ref_formatting_stack*, %struct.ref_formatting_stack** %3, align 8
  %12 = getelementptr inbounds %struct.ref_formatting_stack, %struct.ref_formatting_stack* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.if_then_else*
  store %struct.if_then_else* %14, %struct.if_then_else** %5, align 8
  %15 = load %struct.if_then_else*, %struct.if_then_else** %5, align 8
  %16 = getelementptr inbounds %struct.if_then_else, %struct.if_then_else* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @die(i32 %20)
  br label %22

22:                                               ; preds = %19, %1
  %23 = load %struct.if_then_else*, %struct.if_then_else** %5, align 8
  %24 = getelementptr inbounds %struct.if_then_else, %struct.if_then_else* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %22
  %28 = load %struct.if_then_else*, %struct.if_then_else** %5, align 8
  %29 = getelementptr inbounds %struct.if_then_else, %struct.if_then_else* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.ref_formatting_stack*, %struct.ref_formatting_stack** %3, align 8
  %34 = getelementptr inbounds %struct.ref_formatting_stack, %struct.ref_formatting_stack* %33, i32 0, i32 0
  %35 = call i32 @strbuf_reset(i32* %34)
  %36 = call i32 @pop_stack_element(%struct.ref_formatting_stack** %3)
  br label %47

37:                                               ; preds = %27
  %38 = load %struct.ref_formatting_stack*, %struct.ref_formatting_stack** %3, align 8
  %39 = getelementptr inbounds %struct.ref_formatting_stack, %struct.ref_formatting_stack* %38, i32 0, i32 0
  %40 = load %struct.ref_formatting_stack*, %struct.ref_formatting_stack** %4, align 8
  %41 = getelementptr inbounds %struct.ref_formatting_stack, %struct.ref_formatting_stack* %40, i32 0, i32 0
  %42 = call i32 @strbuf_swap(i32* %39, i32* %41)
  %43 = load %struct.ref_formatting_stack*, %struct.ref_formatting_stack** %3, align 8
  %44 = getelementptr inbounds %struct.ref_formatting_stack, %struct.ref_formatting_stack* %43, i32 0, i32 0
  %45 = call i32 @strbuf_reset(i32* %44)
  %46 = call i32 @pop_stack_element(%struct.ref_formatting_stack** %3)
  br label %47

47:                                               ; preds = %37, %32
  br label %58

48:                                               ; preds = %22
  %49 = load %struct.if_then_else*, %struct.if_then_else** %5, align 8
  %50 = getelementptr inbounds %struct.if_then_else, %struct.if_then_else* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  %54 = load %struct.ref_formatting_stack*, %struct.ref_formatting_stack** %3, align 8
  %55 = getelementptr inbounds %struct.ref_formatting_stack, %struct.ref_formatting_stack* %54, i32 0, i32 0
  %56 = call i32 @strbuf_reset(i32* %55)
  br label %57

57:                                               ; preds = %53, %48
  br label %58

58:                                               ; preds = %57, %47
  %59 = load %struct.ref_formatting_stack*, %struct.ref_formatting_stack** %3, align 8
  %60 = load %struct.ref_formatting_stack**, %struct.ref_formatting_stack*** %2, align 8
  store %struct.ref_formatting_stack* %59, %struct.ref_formatting_stack** %60, align 8
  %61 = load %struct.if_then_else*, %struct.if_then_else** %5, align 8
  %62 = call i32 @free(%struct.if_then_else* %61)
  ret void
}

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strbuf_reset(i32*) #1

declare dso_local i32 @pop_stack_element(%struct.ref_formatting_stack**) #1

declare dso_local i32 @strbuf_swap(i32*, i32*) #1

declare dso_local i32 @free(%struct.if_then_else*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
