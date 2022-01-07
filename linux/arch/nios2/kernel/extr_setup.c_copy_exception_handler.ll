; ModuleID = '/home/carl/AnghaBench/linux/arch/nios2/kernel/extr_setup.c_copy_exception_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nios2/kernel/extr_setup.c_copy_exception_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@exception_handler_hook = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @copy_exception_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_exception_handler(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i64, i64* @exception_handler_hook, align 8
  %6 = trunc i64 %5 to i32
  store i32 %6, i32* %3, align 4
  store volatile i32 0, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %15

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %2, align 4
  %14 = load volatile i32, i32* %4, align 4
  call void asm sideeffect "ldw\09$2,0($0)\0Astw\09$2,0($1)\0Aldw\09$2,4($0)\0Astw\09$2,4($1)\0Aldw\09$2,8($0)\0Astw\09$2,8($1)\0Aflushd\090($1)\0Aflushd\094($1)\0Aflushd\098($1)\0Aflushi $1\0Aaddi\09$1,$1,4\0Aflushi $1\0Aaddi\09$1,$1,4\0Aflushi $1\0Aflushp\0A", "r,r,r,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %12, i32 %13, i32 %14) #1, !srcloc !2
  br label %15

15:                                               ; preds = %11, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 413, i32 433, i32 452, i32 471, i32 490, i32 509, i32 528, i32 547, i32 566, i32 585, i32 601, i32 620, i32 636, i32 655, i32 671}
