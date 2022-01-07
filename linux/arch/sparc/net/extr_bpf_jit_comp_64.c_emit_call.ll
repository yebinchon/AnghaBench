; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/net/extr_bpf_jit_comp_64.c_emit_call.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/net/extr_bpf_jit_comp_64.c_emit_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_ctx = type { i32*, i64 }

@CALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.jit_ctx*)* @emit_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_call(i32* %0, %struct.jit_ctx* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.jit_ctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.jit_ctx* %1, %struct.jit_ctx** %4, align 8
  %7 = load %struct.jit_ctx*, %struct.jit_ctx** %4, align 8
  %8 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %39

11:                                               ; preds = %2
  %12 = load %struct.jit_ctx*, %struct.jit_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.jit_ctx*, %struct.jit_ctx** %4, align 8
  %16 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = bitcast i32* %18 to i8*
  store i8* %19, i8** %5, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = bitcast i32* %20 to i8*
  %22 = load i8*, i8** %5, align 8
  %23 = ptrtoint i8* %21 to i64
  %24 = ptrtoint i8* %22 to i64
  %25 = sub i64 %23, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* @CALL, align 4
  %28 = load i32, i32* %6, align 4
  %29 = lshr i32 %28, 2
  %30 = and i32 %29, 1073741823
  %31 = or i32 %27, %30
  %32 = load %struct.jit_ctx*, %struct.jit_ctx** %4, align 8
  %33 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.jit_ctx*, %struct.jit_ctx** %4, align 8
  %36 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  store i32 %31, i32* %38, align 4
  br label %39

39:                                               ; preds = %11, %2
  %40 = load %struct.jit_ctx*, %struct.jit_ctx** %4, align 8
  %41 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %41, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
