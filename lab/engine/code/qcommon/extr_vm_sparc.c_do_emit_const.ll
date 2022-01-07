; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_sparc.c_do_emit_const.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_sparc.c_do_emit_const.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.func_info = type { i32 }
%struct.src_insn = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@REG_FLAGS_FLOAT = common dso_local global i32 0, align 4
@LDFI = common dso_local global i32 0, align 4
@rVMDATA = common dso_local global i32 0, align 4
@ORI = common dso_local global i32 0, align 4
@G0 = common dso_local global i32 0, align 4
@SETHI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.func_info*, %struct.src_insn*)* @do_emit_const to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_emit_const(%struct.func_info* %0, %struct.src_insn* %1) #0 {
  %3 = alloca %struct.func_info*, align 8
  %4 = alloca %struct.src_insn*, align 8
  store %struct.func_info* %0, %struct.func_info** %3, align 8
  store %struct.src_insn* %1, %struct.src_insn** %4, align 8
  %5 = load %struct.func_info*, %struct.func_info** %3, align 8
  %6 = load %struct.src_insn*, %struct.src_insn** %4, align 8
  %7 = getelementptr inbounds %struct.src_insn, %struct.src_insn* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @start_emit(%struct.func_info* %5, i32 %8)
  %10 = load %struct.src_insn*, %struct.src_insn** %4, align 8
  %11 = getelementptr inbounds %struct.src_insn, %struct.src_insn* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @REG_FLAGS_FLOAT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load i32, i32* @LDFI, align 4
  %18 = load i32, i32* @rVMDATA, align 4
  %19 = load %struct.func_info*, %struct.func_info** %3, align 8
  %20 = load %struct.src_insn*, %struct.src_insn** %4, align 8
  %21 = getelementptr inbounds %struct.src_insn, %struct.src_insn* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sparc_push_data(%struct.func_info* %19, i32 %23)
  %25 = load %struct.func_info*, %struct.func_info** %3, align 8
  %26 = call i32 @fFIRST(%struct.func_info* %25)
  %27 = call i32 (i32, i32, i32, ...) @in(i32 %17, i32 %18, i32 %24, i32 %26)
  br label %86

28:                                               ; preds = %2
  %29 = load %struct.src_insn*, %struct.src_insn** %4, align 8
  %30 = getelementptr inbounds %struct.src_insn, %struct.src_insn* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, -1024
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %28
  %36 = load i32, i32* @ORI, align 4
  %37 = load i32, i32* @G0, align 4
  %38 = load %struct.src_insn*, %struct.src_insn** %4, align 8
  %39 = getelementptr inbounds %struct.src_insn, %struct.src_insn* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 1023
  %43 = load %struct.func_info*, %struct.func_info** %3, align 8
  %44 = call i32 @rFIRST(%struct.func_info* %43)
  %45 = call i32 (i32, i32, i32, ...) @in(i32 %36, i32 %37, i32 %42, i32 %44)
  br label %85

46:                                               ; preds = %28
  %47 = load %struct.src_insn*, %struct.src_insn** %4, align 8
  %48 = getelementptr inbounds %struct.src_insn, %struct.src_insn* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 1023
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %46
  %54 = load i32, i32* @SETHI, align 4
  %55 = load %struct.src_insn*, %struct.src_insn** %4, align 8
  %56 = getelementptr inbounds %struct.src_insn, %struct.src_insn* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %58, 10
  %60 = load %struct.func_info*, %struct.func_info** %3, align 8
  %61 = call i32 @rFIRST(%struct.func_info* %60)
  %62 = call i32 (i32, i32, i32, ...) @in(i32 %54, i32 %59, i32 %61)
  br label %84

63:                                               ; preds = %46
  %64 = load i32, i32* @SETHI, align 4
  %65 = load %struct.src_insn*, %struct.src_insn** %4, align 8
  %66 = getelementptr inbounds %struct.src_insn, %struct.src_insn* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = ashr i32 %68, 10
  %70 = load %struct.func_info*, %struct.func_info** %3, align 8
  %71 = call i32 @rFIRST(%struct.func_info* %70)
  %72 = call i32 (i32, i32, i32, ...) @in(i32 %64, i32 %69, i32 %71)
  %73 = load i32, i32* @ORI, align 4
  %74 = load %struct.func_info*, %struct.func_info** %3, align 8
  %75 = call i32 @rFIRST(%struct.func_info* %74)
  %76 = load %struct.src_insn*, %struct.src_insn** %4, align 8
  %77 = getelementptr inbounds %struct.src_insn, %struct.src_insn* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 1023
  %81 = load %struct.func_info*, %struct.func_info** %3, align 8
  %82 = call i32 @rFIRST(%struct.func_info* %81)
  %83 = call i32 (i32, i32, i32, ...) @in(i32 %73, i32 %75, i32 %80, i32 %82)
  br label %84

84:                                               ; preds = %63, %53
  br label %85

85:                                               ; preds = %84, %35
  br label %86

86:                                               ; preds = %85, %16
  %87 = load %struct.func_info*, %struct.func_info** %3, align 8
  %88 = call i32 @end_emit(%struct.func_info* %87)
  ret void
}

declare dso_local i32 @start_emit(%struct.func_info*, i32) #1

declare dso_local i32 @in(i32, i32, i32, ...) #1

declare dso_local i32 @sparc_push_data(%struct.func_info*, i32) #1

declare dso_local i32 @fFIRST(%struct.func_info*) #1

declare dso_local i32 @rFIRST(%struct.func_info*) #1

declare dso_local i32 @end_emit(%struct.func_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
