; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_then_atom_handler.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_then_atom_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atom_value = type { i32 }
%struct.ref_formatting_state = type { %struct.ref_formatting_stack* }
%struct.ref_formatting_stack = type { i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.strbuf = type { i32 }
%struct.if_then_else = type { i32, i64, i32, i32, i64 }

@if_then_else_handler = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"format: %%(then) atom used without an %%(if) atom\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"format: %%(then) atom used more than once\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"format: %%(then) atom used after %%(else)\00", align 1
@COMPARE_EQUAL = common dso_local global i64 0, align 8
@COMPARE_UNEQUAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atom_value*, %struct.ref_formatting_state*, %struct.strbuf*)* @then_atom_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @then_atom_handler(%struct.atom_value* %0, %struct.ref_formatting_state* %1, %struct.strbuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.atom_value*, align 8
  %6 = alloca %struct.ref_formatting_state*, align 8
  %7 = alloca %struct.strbuf*, align 8
  %8 = alloca %struct.ref_formatting_stack*, align 8
  %9 = alloca %struct.if_then_else*, align 8
  store %struct.atom_value* %0, %struct.atom_value** %5, align 8
  store %struct.ref_formatting_state* %1, %struct.ref_formatting_state** %6, align 8
  store %struct.strbuf* %2, %struct.strbuf** %7, align 8
  %10 = load %struct.ref_formatting_state*, %struct.ref_formatting_state** %6, align 8
  %11 = getelementptr inbounds %struct.ref_formatting_state, %struct.ref_formatting_state* %10, i32 0, i32 0
  %12 = load %struct.ref_formatting_stack*, %struct.ref_formatting_stack** %11, align 8
  store %struct.ref_formatting_stack* %12, %struct.ref_formatting_stack** %8, align 8
  store %struct.if_then_else* null, %struct.if_then_else** %9, align 8
  %13 = load %struct.ref_formatting_stack*, %struct.ref_formatting_stack** %8, align 8
  %14 = getelementptr inbounds %struct.ref_formatting_stack, %struct.ref_formatting_stack* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @if_then_else_handler, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.ref_formatting_stack*, %struct.ref_formatting_stack** %8, align 8
  %20 = getelementptr inbounds %struct.ref_formatting_stack, %struct.ref_formatting_stack* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.if_then_else*
  store %struct.if_then_else* %22, %struct.if_then_else** %9, align 8
  br label %23

23:                                               ; preds = %18, %3
  %24 = load %struct.if_then_else*, %struct.if_then_else** %9, align 8
  %25 = icmp ne %struct.if_then_else* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %28 = call i32 @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 @strbuf_addf_ret(%struct.strbuf* %27, i32 -1, i32 %28)
  store i32 %29, i32* %4, align 4
  br label %112

30:                                               ; preds = %23
  %31 = load %struct.if_then_else*, %struct.if_then_else** %9, align 8
  %32 = getelementptr inbounds %struct.if_then_else, %struct.if_then_else* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %37 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %38 = call i32 @strbuf_addf_ret(%struct.strbuf* %36, i32 -1, i32 %37)
  store i32 %38, i32* %4, align 4
  br label %112

39:                                               ; preds = %30
  %40 = load %struct.if_then_else*, %struct.if_then_else** %9, align 8
  %41 = getelementptr inbounds %struct.if_then_else, %struct.if_then_else* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %46 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %47 = call i32 @strbuf_addf_ret(%struct.strbuf* %45, i32 -1, i32 %46)
  store i32 %47, i32* %4, align 4
  br label %112

48:                                               ; preds = %39
  %49 = load %struct.if_then_else*, %struct.if_then_else** %9, align 8
  %50 = getelementptr inbounds %struct.if_then_else, %struct.if_then_else* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.if_then_else*, %struct.if_then_else** %9, align 8
  %52 = getelementptr inbounds %struct.if_then_else, %struct.if_then_else* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @COMPARE_EQUAL, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %48
  %57 = load %struct.if_then_else*, %struct.if_then_else** %9, align 8
  %58 = getelementptr inbounds %struct.if_then_else, %struct.if_then_else* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ref_formatting_stack*, %struct.ref_formatting_stack** %8, align 8
  %61 = getelementptr inbounds %struct.ref_formatting_stack, %struct.ref_formatting_stack* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @strcmp(i32 %59, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %56
  %67 = load %struct.if_then_else*, %struct.if_then_else** %9, align 8
  %68 = getelementptr inbounds %struct.if_then_else, %struct.if_then_else* %67, i32 0, i32 2
  store i32 1, i32* %68, align 8
  br label %69

69:                                               ; preds = %66, %56
  br label %108

70:                                               ; preds = %48
  %71 = load %struct.if_then_else*, %struct.if_then_else** %9, align 8
  %72 = getelementptr inbounds %struct.if_then_else, %struct.if_then_else* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @COMPARE_UNEQUAL, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %70
  %77 = load %struct.if_then_else*, %struct.if_then_else** %9, align 8
  %78 = getelementptr inbounds %struct.if_then_else, %struct.if_then_else* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ref_formatting_stack*, %struct.ref_formatting_stack** %8, align 8
  %81 = getelementptr inbounds %struct.ref_formatting_stack, %struct.ref_formatting_stack* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @strcmp(i32 %79, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %76
  %87 = load %struct.if_then_else*, %struct.if_then_else** %9, align 8
  %88 = getelementptr inbounds %struct.if_then_else, %struct.if_then_else* %87, i32 0, i32 2
  store i32 1, i32* %88, align 8
  br label %89

89:                                               ; preds = %86, %76
  br label %107

90:                                               ; preds = %70
  %91 = load %struct.ref_formatting_stack*, %struct.ref_formatting_stack** %8, align 8
  %92 = getelementptr inbounds %struct.ref_formatting_stack, %struct.ref_formatting_stack* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %90
  %97 = load %struct.ref_formatting_stack*, %struct.ref_formatting_stack** %8, align 8
  %98 = getelementptr inbounds %struct.ref_formatting_stack, %struct.ref_formatting_stack* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @is_empty(i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %96
  %104 = load %struct.if_then_else*, %struct.if_then_else** %9, align 8
  %105 = getelementptr inbounds %struct.if_then_else, %struct.if_then_else* %104, i32 0, i32 2
  store i32 1, i32* %105, align 8
  br label %106

106:                                              ; preds = %103, %96, %90
  br label %107

107:                                              ; preds = %106, %89
  br label %108

108:                                              ; preds = %107, %69
  %109 = load %struct.ref_formatting_stack*, %struct.ref_formatting_stack** %8, align 8
  %110 = getelementptr inbounds %struct.ref_formatting_stack, %struct.ref_formatting_stack* %109, i32 0, i32 1
  %111 = call i32 @strbuf_reset(%struct.TYPE_2__* %110)
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %108, %44, %35, %26
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @strbuf_addf_ret(%struct.strbuf*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @is_empty(i32) #1

declare dso_local i32 @strbuf_reset(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
