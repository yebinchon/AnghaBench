; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_head_atom_parser.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_head_atom_parser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_format = type { i32 }
%struct.used_atom = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@RESOLVE_REF_READING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_format*, %struct.used_atom*, i8*, %struct.strbuf*)* @head_atom_parser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @head_atom_parser(%struct.ref_format* %0, %struct.used_atom* %1, i8* %2, %struct.strbuf* %3) #0 {
  %5 = alloca %struct.ref_format*, align 8
  %6 = alloca %struct.used_atom*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.strbuf*, align 8
  store %struct.ref_format* %0, %struct.ref_format** %5, align 8
  store %struct.used_atom* %1, %struct.used_atom** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.strbuf* %3, %struct.strbuf** %8, align 8
  %9 = load i32, i32* @RESOLVE_REF_READING, align 4
  %10 = call i32 @resolve_refdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %9, i32* null, i32* null)
  %11 = load %struct.used_atom*, %struct.used_atom** %6, align 8
  %12 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 %10, i32* %13, align 4
  ret i32 0
}

declare dso_local i32 @resolve_refdup(i8*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
