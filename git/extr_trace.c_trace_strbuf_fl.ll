; ModuleID = '/home/carl/AnghaBench/git/extr_trace.c_trace_strbuf_fl.c'
source_filename = "/home/carl/AnghaBench/git/extr_trace.c_trace_strbuf_fl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.trace_key = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trace_strbuf_fl(i8* %0, i32 %1, %struct.trace_key* %2, %struct.strbuf* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.trace_key*, align 8
  %8 = alloca %struct.strbuf*, align 8
  %9 = alloca %struct.strbuf, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.trace_key* %2, %struct.trace_key** %7, align 8
  store %struct.strbuf* %3, %struct.strbuf** %8, align 8
  %10 = bitcast %struct.strbuf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.trace_key*, %struct.trace_key** %7, align 8
  %14 = call i32 @prepare_trace_line(i8* %11, i32 %12, %struct.trace_key* %13, %struct.strbuf* %9)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  br label %23

17:                                               ; preds = %4
  %18 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %19 = call i32 @strbuf_addbuf(%struct.strbuf* %9, %struct.strbuf* %18)
  %20 = load %struct.trace_key*, %struct.trace_key** %7, align 8
  %21 = call i32 @print_trace_line(%struct.trace_key* %20, %struct.strbuf* %9)
  %22 = call i32 @strbuf_release(%struct.strbuf* %9)
  br label %23

23:                                               ; preds = %17, %16
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @prepare_trace_line(i8*, i32, %struct.trace_key*, %struct.strbuf*) #2

declare dso_local i32 @strbuf_addbuf(%struct.strbuf*, %struct.strbuf*) #2

declare dso_local i32 @print_trace_line(%struct.trace_key*, %struct.strbuf*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
