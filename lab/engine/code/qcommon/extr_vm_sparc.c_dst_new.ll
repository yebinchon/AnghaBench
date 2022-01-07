; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_sparc.c_dst_new.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_sparc.c_dst_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_insn = type { i32, i64, i32*, i64, %struct.jump_insn* }
%struct.func_info = type { i64, %struct.dst_insn**, i32 }
%struct.jump_insn = type { i32 }

@THUNK_ICOUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dst_insn* (%struct.func_info*, i32, %struct.jump_insn*, i32)* @dst_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dst_insn* @dst_new(%struct.func_info* %0, i32 %1, %struct.jump_insn* %2, i32 %3) #0 {
  %5 = alloca %struct.func_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.jump_insn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dst_insn*, align 8
  store %struct.func_info* %0, %struct.func_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.jump_insn* %2, %struct.jump_insn** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = sext i32 %10 to i64
  %12 = add i64 40, %11
  %13 = trunc i64 %12 to i32
  %14 = call %struct.dst_insn* @Z_Malloc(i32 %13)
  store %struct.dst_insn* %14, %struct.dst_insn** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.dst_insn*, %struct.dst_insn** %9, align 8
  %17 = getelementptr inbounds %struct.dst_insn, %struct.dst_insn* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.jump_insn*, %struct.jump_insn** %7, align 8
  %19 = load %struct.dst_insn*, %struct.dst_insn** %9, align 8
  %20 = getelementptr inbounds %struct.dst_insn, %struct.dst_insn* %19, i32 0, i32 4
  store %struct.jump_insn* %18, %struct.jump_insn** %20, align 8
  %21 = load %struct.func_info*, %struct.func_info** %5, align 8
  %22 = getelementptr inbounds %struct.func_info, %struct.func_info* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = sext i32 %23 to i64
  %26 = load %struct.dst_insn*, %struct.dst_insn** %9, align 8
  %27 = getelementptr inbounds %struct.dst_insn, %struct.dst_insn* %26, i32 0, i32 3
  store i64 %25, i64* %27, align 8
  %28 = load %struct.func_info*, %struct.func_info** %5, align 8
  %29 = getelementptr inbounds %struct.func_info, %struct.func_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.dst_insn*, %struct.dst_insn** %9, align 8
  %32 = getelementptr inbounds %struct.dst_insn, %struct.dst_insn* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load %struct.dst_insn*, %struct.dst_insn** %9, align 8
  %34 = getelementptr inbounds %struct.dst_insn, %struct.dst_insn* %33, i32 0, i32 2
  store i32* null, i32** %34, align 8
  %35 = load %struct.func_info*, %struct.func_info** %5, align 8
  %36 = getelementptr inbounds %struct.func_info, %struct.func_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @THUNK_ICOUNT, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %4
  %41 = load %struct.dst_insn*, %struct.dst_insn** %9, align 8
  %42 = load %struct.func_info*, %struct.func_info** %5, align 8
  %43 = getelementptr inbounds %struct.func_info, %struct.func_info* %42, i32 0, i32 1
  %44 = load %struct.dst_insn**, %struct.dst_insn*** %43, align 8
  %45 = load %struct.func_info*, %struct.func_info** %5, align 8
  %46 = getelementptr inbounds %struct.func_info, %struct.func_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.dst_insn*, %struct.dst_insn** %44, i64 %47
  store %struct.dst_insn* %41, %struct.dst_insn** %48, align 8
  br label %49

49:                                               ; preds = %40, %4
  %50 = load %struct.dst_insn*, %struct.dst_insn** %9, align 8
  ret %struct.dst_insn* %50
}

declare dso_local %struct.dst_insn* @Z_Malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
