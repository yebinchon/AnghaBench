; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_sparc.c_dst_insn_append.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_sparc.c_dst_insn_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.func_info = type { i32, i32 }
%struct.dst_insn = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.func_info*)* @dst_insn_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dst_insn_append(%struct.func_info* %0) #0 {
  %2 = alloca %struct.func_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dst_insn*, align 8
  store %struct.func_info* %0, %struct.func_info** %2, align 8
  %5 = load %struct.func_info*, %struct.func_info** %2, align 8
  %6 = getelementptr inbounds %struct.func_info, %struct.func_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 4, %8
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %3, align 4
  %11 = load %struct.func_info*, %struct.func_info** %2, align 8
  %12 = load %struct.func_info*, %struct.func_info** %2, align 8
  %13 = getelementptr inbounds %struct.func_info, %struct.func_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call %struct.dst_insn* @dst_new(%struct.func_info* %11, i32 %14, i32* null, i32 %15)
  store %struct.dst_insn* %16, %struct.dst_insn** %4, align 8
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %1
  %20 = load %struct.dst_insn*, %struct.dst_insn** %4, align 8
  %21 = getelementptr inbounds %struct.dst_insn, %struct.dst_insn* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load %struct.func_info*, %struct.func_info** %2, align 8
  %25 = getelementptr inbounds %struct.func_info, %struct.func_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @memcpy(i32* %23, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %19, %1
  %30 = load %struct.func_info*, %struct.func_info** %2, align 8
  %31 = load %struct.dst_insn*, %struct.dst_insn** %4, align 8
  %32 = call i32 @dst_insn_insert_tail(%struct.func_info* %30, %struct.dst_insn* %31)
  %33 = load %struct.func_info*, %struct.func_info** %2, align 8
  %34 = getelementptr inbounds %struct.func_info, %struct.func_info* %33, i32 0, i32 0
  store i32 0, i32* %34, align 4
  ret void
}

declare dso_local %struct.dst_insn* @dst_new(%struct.func_info*, i32, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @dst_insn_insert_tail(%struct.func_info*, %struct.dst_insn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
