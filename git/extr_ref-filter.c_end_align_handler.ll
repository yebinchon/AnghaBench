; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_end_align_handler.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_end_align_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.ref_formatting_stack = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.align = type { i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ref_formatting_stack**)* @end_align_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end_align_handler(%struct.ref_formatting_stack** %0) #0 {
  %2 = alloca %struct.ref_formatting_stack**, align 8
  %3 = alloca %struct.ref_formatting_stack*, align 8
  %4 = alloca %struct.align*, align 8
  %5 = alloca %struct.strbuf, align 4
  store %struct.ref_formatting_stack** %0, %struct.ref_formatting_stack*** %2, align 8
  %6 = load %struct.ref_formatting_stack**, %struct.ref_formatting_stack*** %2, align 8
  %7 = load %struct.ref_formatting_stack*, %struct.ref_formatting_stack** %6, align 8
  store %struct.ref_formatting_stack* %7, %struct.ref_formatting_stack** %3, align 8
  %8 = load %struct.ref_formatting_stack*, %struct.ref_formatting_stack** %3, align 8
  %9 = getelementptr inbounds %struct.ref_formatting_stack, %struct.ref_formatting_stack* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.align*
  store %struct.align* %11, %struct.align** %4, align 8
  %12 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %13 = load %struct.align*, %struct.align** %4, align 8
  %14 = getelementptr inbounds %struct.align, %struct.align* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.align*, %struct.align** %4, align 8
  %17 = getelementptr inbounds %struct.align, %struct.align* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ref_formatting_stack*, %struct.ref_formatting_stack** %3, align 8
  %20 = getelementptr inbounds %struct.ref_formatting_stack, %struct.ref_formatting_stack* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @strbuf_utf8_align(%struct.strbuf* %5, i32 %15, i32 %18, i32 %22)
  %24 = load %struct.ref_formatting_stack*, %struct.ref_formatting_stack** %3, align 8
  %25 = getelementptr inbounds %struct.ref_formatting_stack, %struct.ref_formatting_stack* %24, i32 0, i32 0
  %26 = call i32 @strbuf_swap(%struct.TYPE_2__* %25, %struct.strbuf* %5)
  %27 = call i32 @strbuf_release(%struct.strbuf* %5)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_utf8_align(%struct.strbuf*, i32, i32, i32) #2

declare dso_local i32 @strbuf_swap(%struct.TYPE_2__*, %struct.strbuf*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
