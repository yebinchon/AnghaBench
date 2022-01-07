; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_time_64.c_is_hummingbird.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_time_64.c_is_hummingbird.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @is_hummingbird to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_hummingbird() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = call i64 asm sideeffect "rdpr %ver, $0", "=&r,~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !2
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = lshr i64 %5, 48
  %7 = and i64 %6, 65535
  store i64 %7, i64* %2, align 8
  %8 = load i64, i64* %1, align 8
  %9 = lshr i64 %8, 32
  %10 = and i64 %9, 65535
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %2, align 8
  %12 = icmp eq i64 %11, 23
  br i1 %12, label %13, label %16

13:                                               ; preds = %0
  %14 = load i64, i64* %3, align 8
  %15 = icmp eq i64 %14, 19
  br label %16

16:                                               ; preds = %13, %0
  %17 = phi i1 [ false, %0 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 247}
