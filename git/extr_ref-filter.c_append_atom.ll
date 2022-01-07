; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_append_atom.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_append_atom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atom_value = type { i32 }
%struct.ref_formatting_state = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.strbuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atom_value*, %struct.ref_formatting_state*, %struct.strbuf*)* @append_atom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @append_atom(%struct.atom_value* %0, %struct.ref_formatting_state* %1, %struct.strbuf* %2) #0 {
  %4 = alloca %struct.atom_value*, align 8
  %5 = alloca %struct.ref_formatting_state*, align 8
  %6 = alloca %struct.strbuf*, align 8
  store %struct.atom_value* %0, %struct.atom_value** %4, align 8
  store %struct.ref_formatting_state* %1, %struct.ref_formatting_state** %5, align 8
  store %struct.strbuf* %2, %struct.strbuf** %6, align 8
  %7 = load %struct.ref_formatting_state*, %struct.ref_formatting_state** %5, align 8
  %8 = getelementptr inbounds %struct.ref_formatting_state, %struct.ref_formatting_state* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %3
  %14 = load %struct.ref_formatting_state*, %struct.ref_formatting_state** %5, align 8
  %15 = getelementptr inbounds %struct.ref_formatting_state, %struct.ref_formatting_state* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.atom_value*, %struct.atom_value** %4, align 8
  %19 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ref_formatting_state*, %struct.ref_formatting_state** %5, align 8
  %22 = getelementptr inbounds %struct.ref_formatting_state, %struct.ref_formatting_state* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @quote_formatting(i32* %17, i32 %20, i32 %23)
  br label %34

25:                                               ; preds = %3
  %26 = load %struct.ref_formatting_state*, %struct.ref_formatting_state** %5, align 8
  %27 = getelementptr inbounds %struct.ref_formatting_state, %struct.ref_formatting_state* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.atom_value*, %struct.atom_value** %4, align 8
  %31 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @strbuf_addstr(i32* %29, i32 %32)
  br label %34

34:                                               ; preds = %25, %13
  ret i32 0
}

declare dso_local i32 @quote_formatting(i32*, i32, i32) #1

declare dso_local i32 @strbuf_addstr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
