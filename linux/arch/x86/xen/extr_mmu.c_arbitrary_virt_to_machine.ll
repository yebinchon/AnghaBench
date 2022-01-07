; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/xen/extr_mmu.c_arbitrary_virt_to_machine.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/xen/extr_mmu.c_arbitrary_virt_to_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arbitrary_virt_to_machine(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = ptrtoint i8* %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @virt_addr_valid(i8* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @virt_to_machine(i8* %14)
  store i32 %15, i32* %2, align 4
  br label %37

16:                                               ; preds = %1
  %17 = load i64, i64* %4, align 8
  %18 = call i32* @lookup_address(i64 %17, i32* %5)
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = icmp eq i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @PAGE_MASK, align 8
  %25 = xor i64 %24, -1
  %26 = and i64 %23, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %7, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @pte_mfn(i32 %29)
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* @PAGE_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = load i32, i32* %7, align 4
  %35 = add i32 %33, %34
  %36 = call i32 @XMADDR(i32 %35)
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %16, %13
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i64 @virt_addr_valid(i8*) #1

declare dso_local i32 @virt_to_machine(i8*) #1

declare dso_local i32* @lookup_address(i64, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @XMADDR(i32) #1

declare dso_local i64 @pte_mfn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
