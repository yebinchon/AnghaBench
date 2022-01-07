; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_if_atom_handler.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_if_atom_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atom_value = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ref_formatting_state = type { %struct.ref_formatting_stack* }
%struct.ref_formatting_stack = type { %struct.if_then_else*, i32 }
%struct.if_then_else = type { i32, i32 }
%struct.strbuf = type { i32 }

@if_then_else_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atom_value*, %struct.ref_formatting_state*, %struct.strbuf*)* @if_atom_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_atom_handler(%struct.atom_value* %0, %struct.ref_formatting_state* %1, %struct.strbuf* %2) #0 {
  %4 = alloca %struct.atom_value*, align 8
  %5 = alloca %struct.ref_formatting_state*, align 8
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca %struct.ref_formatting_stack*, align 8
  %8 = alloca %struct.if_then_else*, align 8
  store %struct.atom_value* %0, %struct.atom_value** %4, align 8
  store %struct.ref_formatting_state* %1, %struct.ref_formatting_state** %5, align 8
  store %struct.strbuf* %2, %struct.strbuf** %6, align 8
  %9 = call %struct.if_then_else* @xcalloc(i32 8, i32 1)
  store %struct.if_then_else* %9, %struct.if_then_else** %8, align 8
  %10 = load %struct.atom_value*, %struct.atom_value** %4, align 8
  %11 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.if_then_else*, %struct.if_then_else** %8, align 8
  %18 = getelementptr inbounds %struct.if_then_else, %struct.if_then_else* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.atom_value*, %struct.atom_value** %4, align 8
  %20 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.if_then_else*, %struct.if_then_else** %8, align 8
  %27 = getelementptr inbounds %struct.if_then_else, %struct.if_then_else* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ref_formatting_state*, %struct.ref_formatting_state** %5, align 8
  %29 = getelementptr inbounds %struct.ref_formatting_state, %struct.ref_formatting_state* %28, i32 0, i32 0
  %30 = call i32 @push_stack_element(%struct.ref_formatting_stack** %29)
  %31 = load %struct.ref_formatting_state*, %struct.ref_formatting_state** %5, align 8
  %32 = getelementptr inbounds %struct.ref_formatting_state, %struct.ref_formatting_state* %31, i32 0, i32 0
  %33 = load %struct.ref_formatting_stack*, %struct.ref_formatting_stack** %32, align 8
  store %struct.ref_formatting_stack* %33, %struct.ref_formatting_stack** %7, align 8
  %34 = load i32, i32* @if_then_else_handler, align 4
  %35 = load %struct.ref_formatting_stack*, %struct.ref_formatting_stack** %7, align 8
  %36 = getelementptr inbounds %struct.ref_formatting_stack, %struct.ref_formatting_stack* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load %struct.if_then_else*, %struct.if_then_else** %8, align 8
  %38 = load %struct.ref_formatting_stack*, %struct.ref_formatting_stack** %7, align 8
  %39 = getelementptr inbounds %struct.ref_formatting_stack, %struct.ref_formatting_stack* %38, i32 0, i32 0
  store %struct.if_then_else* %37, %struct.if_then_else** %39, align 8
  ret i32 0
}

declare dso_local %struct.if_then_else* @xcalloc(i32, i32) #1

declare dso_local i32 @push_stack_element(%struct.ref_formatting_stack**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
