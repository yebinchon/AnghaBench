; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_spu_restore.c_restore_complete.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_spu_restore.c_restore_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@regs_spill = common dso_local global %struct.TYPE_2__* null, align 8
@RESTORE_COMPLETE = common dso_local global i32 0, align 4
@ILLEGAL_INSTR = common dso_local global i32 0, align 4
@STOP_INSTR = common dso_local global i32 0, align 4
@HEQ_INSTR = common dso_local global i32 0, align 4
@NOP_INSTR = common dso_local global i32 0, align 4
@BR_INSTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @restore_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_complete() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* bitcast (void ()* @exit_fini to i32*), i32** %1, align 8
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @LSCSA_QW_OFFSET(i32 %5)
  store i32 %6, i32* %2, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @regs_spill, align 8
  %8 = load i32, i32* %2, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %3, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @regs_spill, align 8
  %16 = load i32, i32* %2, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %3, align 4
  switch i32 %23, label %137 [
    i32 132, label %24
    i32 133, label %36
    i32 128, label %48
    i32 129, label %63
    i32 135, label %76
    i32 130, label %89
    i32 136, label %102
    i32 134, label %115
    i32 131, label %124
  ]

24:                                               ; preds = %0
  %25 = load i32, i32* @RESTORE_COMPLETE, align 4
  %26 = load i32*, i32** %1, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @ILLEGAL_INSTR, align 4
  %29 = load i32*, i32** %1, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @STOP_INSTR, align 4
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %31, %32
  %34 = load i32*, i32** %1, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  store i32 %33, i32* %35, align 4
  br label %138

36:                                               ; preds = %0
  %37 = load i32, i32* @RESTORE_COMPLETE, align 4
  %38 = load i32*, i32** %1, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @HEQ_INSTR, align 4
  %41 = load i32*, i32** %1, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @STOP_INSTR, align 4
  %44 = load i32, i32* %4, align 4
  %45 = or i32 %43, %44
  %46 = load i32*, i32** %1, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  store i32 %45, i32* %47, align 4
  br label %138

48:                                               ; preds = %0
  %49 = load i32, i32* @RESTORE_COMPLETE, align 4
  %50 = load i32*, i32** %1, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @STOP_INSTR, align 4
  %53 = load i32, i32* %4, align 4
  %54 = or i32 %52, %53
  %55 = load i32*, i32** %1, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @NOP_INSTR, align 4
  %58 = load i32*, i32** %1, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @BR_INSTR, align 4
  %61 = load i32*, i32** %1, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 3
  store i32 %60, i32* %62, align 4
  br label %138

63:                                               ; preds = %0
  %64 = load i32, i32* @RESTORE_COMPLETE, align 4
  %65 = load i32*, i32** %1, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @ILLEGAL_INSTR, align 4
  %68 = load i32*, i32** %1, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @NOP_INSTR, align 4
  %71 = load i32*, i32** %1, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @BR_INSTR, align 4
  %74 = load i32*, i32** %1, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 3
  store i32 %73, i32* %75, align 4
  br label %138

76:                                               ; preds = %0
  %77 = load i32, i32* @RESTORE_COMPLETE, align 4
  %78 = load i32*, i32** %1, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @ILLEGAL_INSTR, align 4
  %81 = load i32*, i32** %1, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @NOP_INSTR, align 4
  %84 = load i32*, i32** %1, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @BR_INSTR, align 4
  %87 = load i32*, i32** %1, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 3
  store i32 %86, i32* %88, align 4
  br label %138

89:                                               ; preds = %0
  %90 = load i32, i32* @RESTORE_COMPLETE, align 4
  %91 = load i32*, i32** %1, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @NOP_INSTR, align 4
  %94 = load i32*, i32** %1, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @NOP_INSTR, align 4
  %97 = load i32*, i32** %1, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* @BR_INSTR, align 4
  %100 = load i32*, i32** %1, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 3
  store i32 %99, i32* %101, align 4
  br label %138

102:                                              ; preds = %0
  %103 = load i32, i32* @RESTORE_COMPLETE, align 4
  %104 = load i32*, i32** %1, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* @HEQ_INSTR, align 4
  %107 = load i32*, i32** %1, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* @NOP_INSTR, align 4
  %110 = load i32*, i32** %1, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 2
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* @BR_INSTR, align 4
  %113 = load i32*, i32** %1, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 3
  store i32 %112, i32* %114, align 4
  br label %138

115:                                              ; preds = %0
  %116 = load i32, i32* @RESTORE_COMPLETE, align 4
  %117 = load i32*, i32** %1, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* @STOP_INSTR, align 4
  %120 = load i32, i32* %4, align 4
  %121 = or i32 %119, %120
  %122 = load i32*, i32** %1, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  store i32 %121, i32* %123, align 4
  br label %138

124:                                              ; preds = %0
  %125 = load i32, i32* @RESTORE_COMPLETE, align 4
  %126 = load i32*, i32** %1, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* @NOP_INSTR, align 4
  %129 = load i32*, i32** %1, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* @NOP_INSTR, align 4
  %132 = load i32*, i32** %1, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 2
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* @BR_INSTR, align 4
  %135 = load i32*, i32** %1, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 3
  store i32 %134, i32* %136, align 4
  br label %138

137:                                              ; preds = %0
  br label %138

138:                                              ; preds = %137, %124, %115, %102, %89, %76, %63, %48, %36, %24
  %139 = call i32 (...) @spu_sync()
  ret void
}

declare dso_local void @exit_fini() #1

declare dso_local i32 @LSCSA_QW_OFFSET(i32) #1

declare dso_local i32 @spu_sync(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
