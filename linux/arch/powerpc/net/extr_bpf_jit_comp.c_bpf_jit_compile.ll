; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/net/extr_bpf_jit_comp.c_bpf_jit_compile.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/net/extr_bpf_jit_comp.c_bpf_jit_compile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.bpf_prog = type { i32, i32, i8* }
%struct.codegen_context = type { i32, i32, i64 }

@bpf_jit_enable = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@FUNCTION_DESCR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Pass %d: shrink = %d, seen = 0x%x\0A\00", align 1
@local_paca = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bpf_jit_compile(%struct.bpf_prog* %0) #0 {
  %2 = alloca %struct.bpf_prog*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.codegen_context, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bpf_prog* %0, %struct.bpf_prog** %2, align 8
  store i32* null, i32** %5, align 8
  %11 = load %struct.bpf_prog*, %struct.bpf_prog** %2, align 8
  %12 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* @bpf_jit_enable, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %111

17:                                               ; preds = %1
  %18 = load i32, i32* %10, align 4
  %19 = add nsw i32 %18, 1
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i32* @kcalloc(i32 %19, i32 4, i32 %20)
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %111

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.codegen_context, %struct.codegen_context* %8, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = getelementptr inbounds %struct.codegen_context, %struct.codegen_context* %8, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds %struct.codegen_context, %struct.codegen_context* %8, i32 0, i32 1
  store i32 -1, i32* %28, align 4
  %29 = load %struct.bpf_prog*, %struct.bpf_prog** %2, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i64 @bpf_jit_build_body(%struct.bpf_prog* %29, i32* null, %struct.codegen_context* %8, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %108

34:                                               ; preds = %25
  %35 = load %struct.bpf_prog*, %struct.bpf_prog** %2, align 8
  %36 = call i32 @bpf_jit_build_prologue(%struct.bpf_prog* %35, i32* null, %struct.codegen_context* %8)
  %37 = call i32 @bpf_jit_build_epilogue(i32* null, %struct.codegen_context* %8)
  %38 = getelementptr inbounds %struct.codegen_context, %struct.codegen_context* %8, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = mul nsw i32 %39, 4
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @FUNCTION_DESCR_SIZE, align 4
  %43 = add i32 %41, %42
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32* @module_alloc(i32 %44)
  store i32* %45, i32** %5, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %34
  br label %108

49:                                               ; preds = %34
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* @FUNCTION_DESCR_SIZE, align 4
  %52 = udiv i32 %51, 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  store i32* %54, i32** %6, align 8
  store i32 1, i32* %9, align 4
  br label %55

55:                                               ; preds = %82, %49
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %56, 3
  br i1 %57, label %58, label %85

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.codegen_context, %struct.codegen_context* %8, i32 0, i32 0
  store i32 0, i32* %59, align 8
  %60 = load %struct.bpf_prog*, %struct.bpf_prog** %2, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @bpf_jit_build_prologue(%struct.bpf_prog* %60, i32* %61, %struct.codegen_context* %8)
  %63 = load %struct.bpf_prog*, %struct.bpf_prog** %2, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = call i64 @bpf_jit_build_body(%struct.bpf_prog* %63, i32* %64, %struct.codegen_context* %8, i32* %65)
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @bpf_jit_build_epilogue(i32* %67, %struct.codegen_context* %8)
  %69 = load i32, i32* @bpf_jit_enable, align 4
  %70 = icmp sgt i32 %69, 1
  br i1 %70, label %71, label %81

71:                                               ; preds = %58
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %3, align 4
  %74 = getelementptr inbounds %struct.codegen_context, %struct.codegen_context* %8, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = mul nsw i32 %75, 4
  %77 = sub i32 %73, %76
  %78 = getelementptr inbounds %struct.codegen_context, %struct.codegen_context* %8, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %72, i32 %77, i64 %79)
  br label %81

81:                                               ; preds = %71, %58
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %55

85:                                               ; preds = %55
  %86 = load i32, i32* @bpf_jit_enable, align 4
  %87 = icmp sgt i32 %86, 1
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32*, i32** %6, align 8
  %93 = call i32 @bpf_jit_dump(i32 %89, i32 %90, i32 %91, i32* %92)
  br label %94

94:                                               ; preds = %88, %85
  %95 = load i32*, i32** %6, align 8
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* %3, align 4
  %98 = udiv i32 %97, 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = call i32 @bpf_flush_icache(i32* %95, i32* %100)
  %102 = load i32*, i32** %5, align 8
  %103 = bitcast i32* %102 to i8*
  %104 = load %struct.bpf_prog*, %struct.bpf_prog** %2, align 8
  %105 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %104, i32 0, i32 2
  store i8* %103, i8** %105, align 8
  %106 = load %struct.bpf_prog*, %struct.bpf_prog** %2, align 8
  %107 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %106, i32 0, i32 1
  store i32 1, i32* %107, align 4
  br label %108

108:                                              ; preds = %94, %48, %33
  %109 = load i32*, i32** %7, align 8
  %110 = call i32 @kfree(i32* %109)
  br label %111

111:                                              ; preds = %108, %24, %16
  ret void
}

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i64 @bpf_jit_build_body(%struct.bpf_prog*, i32*, %struct.codegen_context*, i32*) #1

declare dso_local i32 @bpf_jit_build_prologue(%struct.bpf_prog*, i32*, %struct.codegen_context*) #1

declare dso_local i32 @bpf_jit_build_epilogue(i32*, %struct.codegen_context*) #1

declare dso_local i32* @module_alloc(i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i64) #1

declare dso_local i32 @bpf_jit_dump(i32, i32, i32, i32*) #1

declare dso_local i32 @bpf_flush_icache(i32*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
