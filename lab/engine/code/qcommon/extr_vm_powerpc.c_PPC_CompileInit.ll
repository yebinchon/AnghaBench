; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_powerpc.c_PPC_CompileInit.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_powerpc.c_PPC_CompileInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32*, i64 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_8__ = type { i32*, i64 }

@di_last = common dso_local global %struct.TYPE_7__* null, align 8
@di_first = common dso_local global %struct.TYPE_7__* null, align 8
@sj_last = common dso_local global %struct.TYPE_6__* null, align 8
@sj_first = common dso_local global %struct.TYPE_6__* null, align 8
@data_first = common dso_local global %struct.TYPE_8__* null, align 8
@FALSE_ICOUNT = common dso_local global i32 0, align 4
@STACK_SAVE = common dso_local global i32 0, align 4
@GPRLEN = common dso_local global i32 0, align 4
@iMFLR = common dso_local global i32 0, align 4
@r0 = common dso_local global i32 0, align 4
@iSTLU = common dso_local global i32 0, align 4
@r1 = common dso_local global i32 0, align 4
@iSTL = common dso_local global i32 0, align 4
@rVMDATA = common dso_local global i32 0, align 4
@rPSTACK = common dso_local global i32 0, align 4
@rDATABASE = common dso_local global i32 0, align 4
@STACK_LR = common dso_local global i64 0, align 8
@iMR = common dso_local global i32 0, align 4
@r3 = common dso_local global i32 0, align 4
@r4 = common dso_local global i32 0, align 4
@r5 = common dso_local global i32 0, align 4
@iBL = common dso_local global i32 0, align 4
@iLL = common dso_local global i32 0, align 4
@iMTLR = common dso_local global i32 0, align 4
@iADDI = common dso_local global i32 0, align 4
@iBLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @PPC_CompileInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PPC_CompileInit() #0 {
  %1 = alloca i64, align 8
  %2 = call i8* @PPC_Malloc(i32 4)
  %3 = bitcast i8* %2 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** @di_last, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** @di_first, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** @di_first, align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 2
  store i64 0, i64* %5, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** @di_first, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  store i32* null, i32** %7, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** @di_first, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i32* null, i32** %9, align 8
  %10 = call i8* @PPC_Malloc(i32 4)
  %11 = bitcast i8* %10 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** @sj_last, align 8
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** @sj_first, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sj_first, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i32* null, i32** %13, align 8
  %14 = call i8* @PPC_Malloc(i32 4)
  %15 = bitcast i8* %14 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** @data_first, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** @data_first, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** @data_first, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  %20 = load i32, i32* @FALSE_ICOUNT, align 4
  %21 = call i32 @emitStart(i32 %20)
  %22 = load i32, i32* @STACK_SAVE, align 4
  %23 = load i32, i32* @GPRLEN, align 4
  %24 = mul nsw i32 4, %23
  %25 = add nsw i32 %22, %24
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %1, align 8
  %27 = load i32, i32* @iMFLR, align 4
  %28 = load i32, i32* @r0, align 4
  %29 = call i32 (i32, ...) @in(i32 %27, i32 %28)
  %30 = load i32, i32* @iSTLU, align 4
  %31 = load i32, i32* @r1, align 4
  %32 = load i64, i64* %1, align 8
  %33 = sub nsw i64 0, %32
  %34 = load i32, i32* @r1, align 4
  %35 = call i32 (i32, ...) @in(i32 %30, i32 %31, i64 %33, i32 %34)
  %36 = load i32, i32* @iSTL, align 4
  %37 = load i32, i32* @rVMDATA, align 4
  %38 = load i32, i32* @STACK_SAVE, align 4
  %39 = load i32, i32* @GPRLEN, align 4
  %40 = mul nsw i32 0, %39
  %41 = add nsw i32 %38, %40
  %42 = load i32, i32* @r1, align 4
  %43 = call i32 (i32, ...) @in(i32 %36, i32 %37, i32 %41, i32 %42)
  %44 = load i32, i32* @iSTL, align 4
  %45 = load i32, i32* @rPSTACK, align 4
  %46 = load i32, i32* @STACK_SAVE, align 4
  %47 = load i32, i32* @GPRLEN, align 4
  %48 = mul nsw i32 1, %47
  %49 = add nsw i32 %46, %48
  %50 = load i32, i32* @r1, align 4
  %51 = call i32 (i32, ...) @in(i32 %44, i32 %45, i32 %49, i32 %50)
  %52 = load i32, i32* @iSTL, align 4
  %53 = load i32, i32* @rDATABASE, align 4
  %54 = load i32, i32* @STACK_SAVE, align 4
  %55 = load i32, i32* @GPRLEN, align 4
  %56 = mul nsw i32 2, %55
  %57 = add nsw i32 %54, %56
  %58 = load i32, i32* @r1, align 4
  %59 = call i32 (i32, ...) @in(i32 %52, i32 %53, i32 %57, i32 %58)
  %60 = load i32, i32* @iSTL, align 4
  %61 = load i32, i32* @r0, align 4
  %62 = load i64, i64* %1, align 8
  %63 = load i64, i64* @STACK_LR, align 8
  %64 = add nsw i64 %62, %63
  %65 = load i32, i32* @r1, align 4
  %66 = call i32 (i32, ...) @in(i32 %60, i32 %61, i64 %64, i32 %65)
  %67 = load i32, i32* @iMR, align 4
  %68 = load i32, i32* @rVMDATA, align 4
  %69 = load i32, i32* @r3, align 4
  %70 = call i32 (i32, ...) @in(i32 %67, i32 %68, i32 %69)
  %71 = load i32, i32* @iMR, align 4
  %72 = load i32, i32* @rPSTACK, align 4
  %73 = load i32, i32* @r4, align 4
  %74 = call i32 (i32, ...) @in(i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* @iMR, align 4
  %76 = load i32, i32* @rDATABASE, align 4
  %77 = load i32, i32* @r5, align 4
  %78 = call i32 (i32, ...) @in(i32 %75, i32 %76, i32 %77)
  %79 = load i32, i32* @iBL, align 4
  %80 = call i32 (i32, ...) @in(i32 %79, i32 32)
  %81 = load i32, i32* @iLL, align 4
  %82 = load i32, i32* @rVMDATA, align 4
  %83 = load i32, i32* @STACK_SAVE, align 4
  %84 = load i32, i32* @GPRLEN, align 4
  %85 = mul nsw i32 0, %84
  %86 = add nsw i32 %83, %85
  %87 = load i32, i32* @r1, align 4
  %88 = call i32 (i32, ...) @in(i32 %81, i32 %82, i32 %86, i32 %87)
  %89 = load i32, i32* @iLL, align 4
  %90 = load i32, i32* @rPSTACK, align 4
  %91 = load i32, i32* @STACK_SAVE, align 4
  %92 = load i32, i32* @GPRLEN, align 4
  %93 = mul nsw i32 1, %92
  %94 = add nsw i32 %91, %93
  %95 = load i32, i32* @r1, align 4
  %96 = call i32 (i32, ...) @in(i32 %89, i32 %90, i32 %94, i32 %95)
  %97 = load i32, i32* @iLL, align 4
  %98 = load i32, i32* @rDATABASE, align 4
  %99 = load i32, i32* @STACK_SAVE, align 4
  %100 = load i32, i32* @GPRLEN, align 4
  %101 = mul nsw i32 2, %100
  %102 = add nsw i32 %99, %101
  %103 = load i32, i32* @r1, align 4
  %104 = call i32 (i32, ...) @in(i32 %97, i32 %98, i32 %102, i32 %103)
  %105 = load i32, i32* @iLL, align 4
  %106 = load i32, i32* @r0, align 4
  %107 = load i64, i64* %1, align 8
  %108 = load i64, i64* @STACK_LR, align 8
  %109 = add nsw i64 %107, %108
  %110 = load i32, i32* @r1, align 4
  %111 = call i32 (i32, ...) @in(i32 %105, i32 %106, i64 %109, i32 %110)
  %112 = load i32, i32* @iMTLR, align 4
  %113 = load i32, i32* @r0, align 4
  %114 = call i32 (i32, ...) @in(i32 %112, i32 %113)
  %115 = load i32, i32* @iADDI, align 4
  %116 = load i32, i32* @r1, align 4
  %117 = load i32, i32* @r1, align 4
  %118 = load i64, i64* %1, align 8
  %119 = call i32 (i32, ...) @in(i32 %115, i32 %116, i32 %117, i64 %118)
  %120 = load i32, i32* @iBLR, align 4
  %121 = call i32 (i32, ...) @in(i32 %120)
  %122 = call i32 (...) @emitEnd()
  ret void
}

declare dso_local i8* @PPC_Malloc(i32) #1

declare dso_local i32 @emitStart(i32) #1

declare dso_local i32 @in(i32, ...) #1

declare dso_local i32 @emitEnd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
