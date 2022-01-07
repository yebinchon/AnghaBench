; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_uprobes.c_arch_uprobe_copy_ixol.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_uprobes.c_arch_uprobe_copy_ixol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@UPROBE_STP_INSN = common dso_local global i32 0, align 4
@ANNUL_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arch_uprobe_copy_ixol(%struct.page* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i32, i32* @UPROBE_STP_INSN, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to i32*
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = ashr i32 %17, 30
  %19 = and i32 %18, 3
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %10, align 4
  %21 = ashr i32 %20, 22
  %22 = and i32 %21, 7
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %51

25:                                               ; preds = %4
  %26 = load i32, i32* %12, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %40, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %12, align 4
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %40, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %12, align 4
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %12, align 4
  %36 = icmp eq i32 %35, 5
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %12, align 4
  %39 = icmp eq i32 %38, 6
  br i1 %39, label %40, label %51

40:                                               ; preds = %37, %34, %31, %28, %25
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @ANNUL_BIT, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @ANNUL_BIT, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load i32, i32* @ANNUL_BIT, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %10, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %46, %40, %37, %4
  %52 = load %struct.page*, %struct.page** %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* %8, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 @copy_to_page(%struct.page* %52, i64 %53, i32* %10, i32 %55)
  %57 = load %struct.page*, %struct.page** %5, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* %8, align 8
  %60 = add i64 %58, %59
  %61 = call i32 @copy_to_page(%struct.page* %57, i64 %60, i32* %9, i32 4)
  ret void
}

declare dso_local i32 @copy_to_page(%struct.page*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
