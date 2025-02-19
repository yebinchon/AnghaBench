; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_emulate.c_insn_alignment.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_emulate.c_insn_alignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_emulate_ctxt = type { i32 }

@AlignMask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86_emulate_ctxt*, i32)* @insn_alignment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insn_alignment(%struct.x86_emulate_ctxt* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.x86_emulate_ctxt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ctxt** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %8 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @AlignMask, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ult i32 %12, 16
  %14 = zext i1 %13 to i32
  %15 = call i64 @likely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %25

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %23 [
    i32 128, label %20
    i32 129, label %20
    i32 130, label %21
    i32 131, label %22
  ]

20:                                               ; preds = %18, %18
  store i32 1, i32* %3, align 4
  br label %25

21:                                               ; preds = %18
  store i32 16, i32* %3, align 4
  br label %25

22:                                               ; preds = %18
  br label %23

23:                                               ; preds = %18, %22
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %23, %21, %20, %17
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
