; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_is_vmware_backdoor_opcode.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_is_vmware_backdoor_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_emulate_ctxt = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86_emulate_ctxt*)* @is_vmware_backdoor_opcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_vmware_backdoor_opcode(%struct.x86_emulate_ctxt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.x86_emulate_ctxt*, align 8
  store %struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ctxt** %3, align 8
  %4 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %5 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %19 [
    i32 1, label %7
    i32 2, label %13
  ]

7:                                                ; preds = %1
  %8 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %9 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %12 [
    i32 228, label %11
    i32 229, label %11
    i32 236, label %11
    i32 237, label %11
    i32 230, label %11
    i32 231, label %11
    i32 238, label %11
    i32 239, label %11
    i32 108, label %11
    i32 109, label %11
    i32 110, label %11
    i32 111, label %11
  ]

11:                                               ; preds = %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7
  store i32 1, i32* %2, align 4
  br label %20

12:                                               ; preds = %7
  br label %19

13:                                               ; preds = %1
  %14 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %15 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %18 [
    i32 51, label %17
  ]

17:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %20

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %1, %18, %12
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %19, %17, %11
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
