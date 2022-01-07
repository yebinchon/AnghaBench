; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_io_delay.c_native_io_delay.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_io_delay.c_native_io_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@io_delay_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @native_io_delay() #0 {
  %1 = load i32, i32* @io_delay_type, align 4
  switch i32 %1, label %2 [
    i32 131, label %3
    i32 130, label %4
    i32 128, label %5
    i32 129, label %7
  ]

2:                                                ; preds = %0
  br label %3

3:                                                ; preds = %0, %2
  call void asm sideeffect "outb %al, $$0x80", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  br label %8

4:                                                ; preds = %0
  call void asm sideeffect "outb %al, $$0xed", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  br label %8

5:                                                ; preds = %0
  %6 = call i32 @udelay(i32 2)
  br label %8

7:                                                ; preds = %0
  br label %8

8:                                                ; preds = %7, %5, %4, %3
  ret void
}

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 267}
!3 = !{i32 323}
