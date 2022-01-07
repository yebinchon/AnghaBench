; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_sparc.c_emit_vm_thunk.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_sparc.c_emit_vm_thunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.func_info = type { i32 }

@THUNK_ICOUNT = common dso_local global i32 0, align 4
@OR = common dso_local global i32 0, align 4
@G0 = common dso_local global i32 0, align 4
@O0 = common dso_local global i32 0, align 4
@rVMDATA = common dso_local global i32 0, align 4
@O1 = common dso_local global i32 0, align 4
@rPSTACK = common dso_local global i32 0, align 4
@O2 = common dso_local global i32 0, align 4
@rDATABASE = common dso_local global i32 0, align 4
@BA = common dso_local global i32 0, align 4
@O3 = common dso_local global i32 0, align 4
@rDATAMASK = common dso_local global i32 0, align 4
@SAVEI = common dso_local global i32 0, align 4
@O6 = common dso_local global i32 0, align 4
@L0 = common dso_local global i32 0, align 4
@L1 = common dso_local global i32 0, align 4
@L2 = common dso_local global i32 0, align 4
@L3 = common dso_local global i32 0, align 4
@I0 = common dso_local global i32 0, align 4
@I1 = common dso_local global i32 0, align 4
@JMPL = common dso_local global i32 0, align 4
@I3 = common dso_local global i32 0, align 4
@O7 = common dso_local global i32 0, align 4
@I2 = common dso_local global i32 0, align 4
@JMPLI = common dso_local global i32 0, align 4
@I7 = common dso_local global i32 0, align 4
@RESTORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.func_info*)* @emit_vm_thunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_vm_thunk(%struct.func_info* %0) #0 {
  %2 = alloca %struct.func_info*, align 8
  store %struct.func_info* %0, %struct.func_info** %2, align 8
  %3 = load %struct.func_info*, %struct.func_info** %2, align 8
  %4 = load i32, i32* @THUNK_ICOUNT, align 4
  %5 = call i32 @start_emit(%struct.func_info* %3, i32 %4)
  %6 = load i32, i32* @OR, align 4
  %7 = load i32, i32* @G0, align 4
  %8 = load i32, i32* @O0, align 4
  %9 = load i32, i32* @rVMDATA, align 4
  %10 = call i32 (i32, i32, ...) @in(i32 %6, i32 %7, i32 %8, i32 %9)
  %11 = load i32, i32* @OR, align 4
  %12 = load i32, i32* @G0, align 4
  %13 = load i32, i32* @O1, align 4
  %14 = load i32, i32* @rPSTACK, align 4
  %15 = call i32 (i32, i32, ...) @in(i32 %11, i32 %12, i32 %13, i32 %14)
  %16 = load i32, i32* @OR, align 4
  %17 = load i32, i32* @G0, align 4
  %18 = load i32, i32* @O2, align 4
  %19 = load i32, i32* @rDATABASE, align 4
  %20 = call i32 (i32, i32, ...) @in(i32 %16, i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* @BA, align 4
  %22 = call i32 (i32, i32, ...) @in(i32 %21, i32 68)
  %23 = load i32, i32* @OR, align 4
  %24 = load i32, i32* @G0, align 4
  %25 = load i32, i32* @O3, align 4
  %26 = load i32, i32* @rDATAMASK, align 4
  %27 = call i32 (i32, i32, ...) @in(i32 %23, i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* @SAVEI, align 4
  %29 = load i32, i32* @O6, align 4
  %30 = call i32 @SL(i32 64, i32 128)
  %31 = sub nsw i32 0, %30
  %32 = load i32, i32* @O6, align 4
  %33 = call i32 (i32, i32, ...) @in(i32 %28, i32 %29, i32 %31, i32 %32)
  %34 = load i32, i32* @OR, align 4
  %35 = load i32, i32* @G0, align 4
  %36 = load i32, i32* @rVMDATA, align 4
  %37 = load i32, i32* @L0, align 4
  %38 = call i32 (i32, i32, ...) @in(i32 %34, i32 %35, i32 %36, i32 %37)
  %39 = load i32, i32* @OR, align 4
  %40 = load i32, i32* @G0, align 4
  %41 = load i32, i32* @rPSTACK, align 4
  %42 = load i32, i32* @L1, align 4
  %43 = call i32 (i32, i32, ...) @in(i32 %39, i32 %40, i32 %41, i32 %42)
  %44 = load i32, i32* @OR, align 4
  %45 = load i32, i32* @G0, align 4
  %46 = load i32, i32* @rDATABASE, align 4
  %47 = load i32, i32* @L2, align 4
  %48 = call i32 (i32, i32, ...) @in(i32 %44, i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* @OR, align 4
  %50 = load i32, i32* @G0, align 4
  %51 = load i32, i32* @rDATAMASK, align 4
  %52 = load i32, i32* @L3, align 4
  %53 = call i32 (i32, i32, ...) @in(i32 %49, i32 %50, i32 %51, i32 %52)
  %54 = load i32, i32* @OR, align 4
  %55 = load i32, i32* @G0, align 4
  %56 = load i32, i32* @I0, align 4
  %57 = load i32, i32* @O0, align 4
  %58 = call i32 (i32, i32, ...) @in(i32 %54, i32 %55, i32 %56, i32 %57)
  %59 = load i32, i32* @OR, align 4
  %60 = load i32, i32* @G0, align 4
  %61 = load i32, i32* @I1, align 4
  %62 = load i32, i32* @O1, align 4
  %63 = call i32 (i32, i32, ...) @in(i32 %59, i32 %60, i32 %61, i32 %62)
  %64 = load i32, i32* @JMPL, align 4
  %65 = load i32, i32* @I3, align 4
  %66 = load i32, i32* @G0, align 4
  %67 = load i32, i32* @O7, align 4
  %68 = call i32 (i32, i32, ...) @in(i32 %64, i32 %65, i32 %66, i32 %67)
  %69 = load i32, i32* @OR, align 4
  %70 = load i32, i32* @G0, align 4
  %71 = load i32, i32* @I2, align 4
  %72 = load i32, i32* @O2, align 4
  %73 = call i32 (i32, i32, ...) @in(i32 %69, i32 %70, i32 %71, i32 %72)
  %74 = load i32, i32* @OR, align 4
  %75 = load i32, i32* @G0, align 4
  %76 = load i32, i32* @L0, align 4
  %77 = load i32, i32* @rVMDATA, align 4
  %78 = call i32 (i32, i32, ...) @in(i32 %74, i32 %75, i32 %76, i32 %77)
  %79 = load i32, i32* @OR, align 4
  %80 = load i32, i32* @G0, align 4
  %81 = load i32, i32* @L1, align 4
  %82 = load i32, i32* @rPSTACK, align 4
  %83 = call i32 (i32, i32, ...) @in(i32 %79, i32 %80, i32 %81, i32 %82)
  %84 = load i32, i32* @OR, align 4
  %85 = load i32, i32* @G0, align 4
  %86 = load i32, i32* @L2, align 4
  %87 = load i32, i32* @rDATABASE, align 4
  %88 = call i32 (i32, i32, ...) @in(i32 %84, i32 %85, i32 %86, i32 %87)
  %89 = load i32, i32* @OR, align 4
  %90 = load i32, i32* @G0, align 4
  %91 = load i32, i32* @L3, align 4
  %92 = load i32, i32* @rDATAMASK, align 4
  %93 = call i32 (i32, i32, ...) @in(i32 %89, i32 %90, i32 %91, i32 %92)
  %94 = load i32, i32* @JMPLI, align 4
  %95 = load i32, i32* @I7, align 4
  %96 = load i32, i32* @G0, align 4
  %97 = call i32 (i32, i32, ...) @in(i32 %94, i32 %95, i32 8, i32 %96)
  %98 = load i32, i32* @RESTORE, align 4
  %99 = load i32, i32* @O0, align 4
  %100 = load i32, i32* @G0, align 4
  %101 = load i32, i32* @O0, align 4
  %102 = call i32 (i32, i32, ...) @in(i32 %98, i32 %99, i32 %100, i32 %101)
  %103 = load %struct.func_info*, %struct.func_info** %2, align 8
  %104 = call i32 @end_emit(%struct.func_info* %103)
  ret void
}

declare dso_local i32 @start_emit(%struct.func_info*, i32) #1

declare dso_local i32 @in(i32, i32, ...) #1

declare dso_local i32 @SL(i32, i32) #1

declare dso_local i32 @end_emit(%struct.func_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
