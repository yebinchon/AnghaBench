; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_common.c_native_write_cr4.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_common.c_native_write_cr4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cr4_pinned_bits = common dso_local global i64 0, align 8
@cr_pinning = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"CR4 bits went missing: %lx!?\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @native_write_cr4(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %18, %1
  %5 = load i64, i64* %2, align 8
  %6 = call i64 asm sideeffect "mov $0,%cr4", "=r,=*m,0,*m,~{dirflag},~{fpsr},~{flags}"(i64* @cr4_pinned_bits, i64 %5, i64* @cr4_pinned_bits) #2, !srcloc !2
  store i64 %6, i64* %2, align 8
  %7 = call i64 @static_branch_likely(i32* @cr_pinning)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %4
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* @cr4_pinned_bits, align 8
  %12 = and i64 %10, %11
  %13 = load i64, i64* @cr4_pinned_bits, align 8
  %14 = icmp ne i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %9
  %19 = load i64, i64* %2, align 8
  %20 = xor i64 %19, -1
  %21 = load i64, i64* @cr4_pinned_bits, align 8
  %22 = and i64 %20, %21
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* %2, align 8
  %25 = or i64 %24, %23
  store i64 %25, i64* %2, align 8
  br label %4

26:                                               ; preds = %9
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @WARN_ONCE(i64 %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %28)
  br label %30

30:                                               ; preds = %26, %4
  ret void
}

declare dso_local i64 @static_branch_likely(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN_ONCE(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 415}
