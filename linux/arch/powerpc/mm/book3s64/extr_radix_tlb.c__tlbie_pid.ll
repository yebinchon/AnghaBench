; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_radix_tlb.c__tlbie_pid.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_radix_tlb.c__tlbie_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @_tlbie_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_tlbie_pid(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  call void asm sideeffect "ptesync", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %5 = load i64, i64* %4, align 8
  switch i64 %5, label %15 [
    i64 128, label %6
    i64 129, label %11
    i64 130, label %14
  ]

6:                                                ; preds = %2
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @__tlbie_pid(i64 %7, i32 128)
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @fixup_tlbie_pid(i64 %9)
  br label %20

11:                                               ; preds = %2
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @__tlbie_pid(i64 %12, i32 129)
  br label %20

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %2, %14
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @__tlbie_pid(i64 %16, i32 130)
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @fixup_tlbie_pid(i64 %18)
  br label %20

20:                                               ; preds = %15, %11, %6
  call void asm sideeffect "eieio; tlbsync; ptesync", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  ret void
}

declare dso_local i32 @__tlbie_pid(i64, i32) #1

declare dso_local i32 @fixup_tlbie_pid(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 324}
!3 = !{i32 572}
