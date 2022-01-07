; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_end_atom_handler.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_end_atom_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.atom_value = type { i32 }
%struct.ref_formatting_state = type { %struct.ref_formatting_stack*, i32 }
%struct.ref_formatting_stack = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32 (%struct.ref_formatting_stack**)* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [53 x i8] c"format: %%(end) atom used without corresponding atom\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atom_value*, %struct.ref_formatting_state*, %struct.strbuf*)* @end_atom_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @end_atom_handler(%struct.atom_value* %0, %struct.ref_formatting_state* %1, %struct.strbuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.atom_value*, align 8
  %6 = alloca %struct.ref_formatting_state*, align 8
  %7 = alloca %struct.strbuf*, align 8
  %8 = alloca %struct.ref_formatting_stack*, align 8
  %9 = alloca %struct.strbuf, align 4
  store %struct.atom_value* %0, %struct.atom_value** %5, align 8
  store %struct.ref_formatting_state* %1, %struct.ref_formatting_state** %6, align 8
  store %struct.strbuf* %2, %struct.strbuf** %7, align 8
  %10 = load %struct.ref_formatting_state*, %struct.ref_formatting_state** %6, align 8
  %11 = getelementptr inbounds %struct.ref_formatting_state, %struct.ref_formatting_state* %10, i32 0, i32 0
  %12 = load %struct.ref_formatting_stack*, %struct.ref_formatting_stack** %11, align 8
  store %struct.ref_formatting_stack* %12, %struct.ref_formatting_stack** %8, align 8
  %13 = bitcast %struct.strbuf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %14 = load %struct.ref_formatting_stack*, %struct.ref_formatting_stack** %8, align 8
  %15 = getelementptr inbounds %struct.ref_formatting_stack, %struct.ref_formatting_stack* %14, i32 0, i32 2
  %16 = load i32 (%struct.ref_formatting_stack**)*, i32 (%struct.ref_formatting_stack**)** %15, align 8
  %17 = icmp ne i32 (%struct.ref_formatting_stack**)* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %20 = call i32 @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @strbuf_addf_ret(%struct.strbuf* %19, i32 -1, i32 %20)
  store i32 %21, i32* %4, align 4
  br label %55

22:                                               ; preds = %3
  %23 = load %struct.ref_formatting_stack*, %struct.ref_formatting_stack** %8, align 8
  %24 = getelementptr inbounds %struct.ref_formatting_stack, %struct.ref_formatting_stack* %23, i32 0, i32 2
  %25 = load i32 (%struct.ref_formatting_stack**)*, i32 (%struct.ref_formatting_stack**)** %24, align 8
  %26 = load %struct.ref_formatting_state*, %struct.ref_formatting_state** %6, align 8
  %27 = getelementptr inbounds %struct.ref_formatting_state, %struct.ref_formatting_state* %26, i32 0, i32 0
  %28 = call i32 %25(%struct.ref_formatting_stack** %27)
  %29 = load %struct.ref_formatting_state*, %struct.ref_formatting_state** %6, align 8
  %30 = getelementptr inbounds %struct.ref_formatting_state, %struct.ref_formatting_state* %29, i32 0, i32 0
  %31 = load %struct.ref_formatting_stack*, %struct.ref_formatting_stack** %30, align 8
  store %struct.ref_formatting_stack* %31, %struct.ref_formatting_stack** %8, align 8
  %32 = load %struct.ref_formatting_stack*, %struct.ref_formatting_stack** %8, align 8
  %33 = getelementptr inbounds %struct.ref_formatting_stack, %struct.ref_formatting_stack* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %22
  %39 = load %struct.ref_formatting_stack*, %struct.ref_formatting_stack** %8, align 8
  %40 = getelementptr inbounds %struct.ref_formatting_stack, %struct.ref_formatting_stack* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.ref_formatting_state*, %struct.ref_formatting_state** %6, align 8
  %44 = getelementptr inbounds %struct.ref_formatting_state, %struct.ref_formatting_state* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @quote_formatting(%struct.strbuf* %9, i32 %42, i32 %45)
  %47 = load %struct.ref_formatting_stack*, %struct.ref_formatting_stack** %8, align 8
  %48 = getelementptr inbounds %struct.ref_formatting_stack, %struct.ref_formatting_stack* %47, i32 0, i32 0
  %49 = call i32 @strbuf_swap(%struct.TYPE_4__* %48, %struct.strbuf* %9)
  br label %50

50:                                               ; preds = %38, %22
  %51 = call i32 @strbuf_release(%struct.strbuf* %9)
  %52 = load %struct.ref_formatting_state*, %struct.ref_formatting_state** %6, align 8
  %53 = getelementptr inbounds %struct.ref_formatting_state, %struct.ref_formatting_state* %52, i32 0, i32 0
  %54 = call i32 @pop_stack_element(%struct.ref_formatting_stack** %53)
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %50, %18
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addf_ret(%struct.strbuf*, i32, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @quote_formatting(%struct.strbuf*, i32, i32) #2

declare dso_local i32 @strbuf_swap(%struct.TYPE_4__*, %struct.strbuf*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @pop_stack_element(%struct.ref_formatting_stack**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
