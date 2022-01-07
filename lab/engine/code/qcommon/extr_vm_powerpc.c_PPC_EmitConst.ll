; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_powerpc.c_PPC_EmitConst.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_powerpc.c_PPC_EmitConst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32*, i32* }

@rTYPE_FLOAT = common dso_local global i32 0, align 4
@iLI = common dso_local global i32 0, align 4
@rFIRST = common dso_local global i32 0, align 4
@iORI = common dso_local global i32 0, align 4
@iLIS = common dso_local global i32 0, align 4
@iLFS = common dso_local global i32 0, align 4
@fFIRST = common dso_local global i32 0, align 4
@rVMDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @PPC_EmitConst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PPC_EmitConst(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @emitStart(i32 %7)
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @rTYPE_FLOAT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %87, label %15

15:                                               ; preds = %1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %3, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sge i32 %22, -32768
  br i1 %23, label %24, label %38

24:                                               ; preds = %15
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %28, 32768
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load i32, i32* @iLI, align 4
  %32 = load i32, i32* @rFIRST, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i32, i32, i32, ...) @in(i32 %31, i32 %32, i32 %36)
  br label %86

38:                                               ; preds = %24, %15
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %42, 65536
  br i1 %43, label %44, label %56

44:                                               ; preds = %38
  %45 = load i32, i32* @iLI, align 4
  %46 = load i32, i32* @rFIRST, align 4
  %47 = call i32 (i32, i32, i32, ...) @in(i32 %45, i32 %46, i32 0)
  %48 = load i32, i32* @iORI, align 4
  %49 = load i32, i32* @rFIRST, align 4
  %50 = load i32, i32* @rFIRST, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i32, i32, i32, ...) @in(i32 %48, i32 %49, i32 %50, i32 %54)
  br label %85

56:                                               ; preds = %38
  %57 = load i32, i32* @iLIS, align 4
  %58 = load i32, i32* @rFIRST, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i32, i32, i32, ...) @in(i32 %57, i32 %58, i32 %64)
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %56
  %74 = load i32, i32* @iORI, align 4
  %75 = load i32, i32* @rFIRST, align 4
  %76 = load i32, i32* @rFIRST, align 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i32, i32, i32, ...) @in(i32 %74, i32 %75, i32 %76, i32 %82)
  br label %84

84:                                               ; preds = %73, %56
  br label %85

85:                                               ; preds = %84, %44
  br label %86

86:                                               ; preds = %85, %30
  br label %100

87:                                               ; preds = %1
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %4, align 8
  %91 = load i32, i32* @iLFS, align 4
  %92 = load i32, i32* @fFIRST, align 4
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @PPC_PushData(i32 %96)
  %98 = load i32, i32* @rVMDATA, align 4
  %99 = call i32 (i32, i32, i32, ...) @in(i32 %91, i32 %92, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %87, %86
  %101 = call i32 (...) @emitEnd()
  ret void
}

declare dso_local i32 @emitStart(i32) #1

declare dso_local i32 @in(i32, i32, i32, ...) #1

declare dso_local i32 @PPC_PushData(i32) #1

declare dso_local i32 @emitEnd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
