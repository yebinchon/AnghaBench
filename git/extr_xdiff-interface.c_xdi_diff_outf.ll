; ModuleID = '/home/carl/AnghaBench/git/extr_xdiff-interface.c_xdi_diff_outf.c'
source_filename = "/home/carl/AnghaBench/git/extr_xdiff-interface.c_xdi_diff_outf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdiff_emit_state = type { i32, %struct.xdiff_emit_state*, i32, i32, i8*, i32, i64 }

@xdiff_out_hunk = common dso_local global i32 0, align 4
@xdiff_outf = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdi_diff_outf(i32* %0, i32* %1, i64 %2, i32 %3, i8* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.xdiff_emit_state, align 8
  %17 = alloca %struct.xdiff_emit_state, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %18 = call i32 @memset(%struct.xdiff_emit_state* %16, i32 0, i32 48)
  %19 = load i64, i64* %10, align 8
  %20 = getelementptr inbounds %struct.xdiff_emit_state, %struct.xdiff_emit_state* %16, i32 0, i32 6
  store i64 %19, i64* %20, align 8
  %21 = load i32, i32* %11, align 4
  %22 = getelementptr inbounds %struct.xdiff_emit_state, %struct.xdiff_emit_state* %16, i32 0, i32 5
  store i32 %21, i32* %22, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = getelementptr inbounds %struct.xdiff_emit_state, %struct.xdiff_emit_state* %16, i32 0, i32 4
  store i8* %23, i8** %24, align 8
  %25 = call i32 @memset(%struct.xdiff_emit_state* %17, i32 0, i32 48)
  %26 = load i64, i64* %10, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %7
  %29 = load i32, i32* @xdiff_out_hunk, align 4
  %30 = getelementptr inbounds %struct.xdiff_emit_state, %struct.xdiff_emit_state* %17, i32 0, i32 3
  store i32 %29, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %7
  %32 = load i32, i32* @xdiff_outf, align 4
  %33 = getelementptr inbounds %struct.xdiff_emit_state, %struct.xdiff_emit_state* %17, i32 0, i32 2
  store i32 %32, i32* %33, align 8
  %34 = getelementptr inbounds %struct.xdiff_emit_state, %struct.xdiff_emit_state* %17, i32 0, i32 1
  store %struct.xdiff_emit_state* %16, %struct.xdiff_emit_state** %34, align 8
  %35 = getelementptr inbounds %struct.xdiff_emit_state, %struct.xdiff_emit_state* %16, i32 0, i32 0
  %36 = call i32 @strbuf_init(i32* %35, i32 0)
  %37 = load i32*, i32** %8, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = load i32*, i32** %14, align 8
  %41 = call i32 @xdi_diff(i32* %37, i32* %38, i32* %39, i32* %40, %struct.xdiff_emit_state* %17)
  store i32 %41, i32* %15, align 4
  %42 = getelementptr inbounds %struct.xdiff_emit_state, %struct.xdiff_emit_state* %16, i32 0, i32 0
  %43 = call i32 @strbuf_release(i32* %42)
  %44 = load i32, i32* %15, align 4
  ret i32 %44
}

declare dso_local i32 @memset(%struct.xdiff_emit_state*, i32, i32) #1

declare dso_local i32 @strbuf_init(i32*, i32) #1

declare dso_local i32 @xdi_diff(i32*, i32*, i32*, i32*, %struct.xdiff_emit_state*) #1

declare dso_local i32 @strbuf_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
