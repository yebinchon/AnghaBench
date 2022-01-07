; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_dumpstack_64.c_in_exception_stack.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_dumpstack_64.c_in_exception_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.estack_pages = type { i32, i64, i64 }
%struct.stack_info = type { i64*, i64*, i64*, i32 }
%struct.pt_regs = type { i64 }

@N_EXCEPTION_STACKS = common dso_local global i32 0, align 4
@cea_exception_stacks = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@estack_pages = common dso_local global %struct.estack_pages* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, %struct.stack_info*)* @in_exception_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in_exception_stack(i64* %0, %struct.stack_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca %struct.stack_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.estack_pages*, align 8
  %10 = alloca %struct.pt_regs*, align 8
  %11 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store %struct.stack_info* %1, %struct.stack_info** %5, align 8
  %12 = load i64*, i64** %4, align 8
  %13 = ptrtoint i64* %12 to i64
  store i64 %13, i64* %8, align 8
  %14 = load i32, i32* @N_EXCEPTION_STACKS, align 4
  %15 = icmp ne i32 %14, 6
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUILD_BUG_ON(i32 %16)
  %18 = load i32, i32* @cea_exception_stacks, align 4
  %19 = call i64 @__this_cpu_read(i32 %18)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %83

23:                                               ; preds = %2
  %24 = load i64, i64* %6, align 8
  %25 = add i64 %24, 4
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp uge i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %23
  store i32 0, i32* %3, align 4
  br label %83

34:                                               ; preds = %29
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %6, align 8
  %37 = sub i64 %35, %36
  %38 = load i64, i64* @PAGE_SHIFT, align 8
  %39 = lshr i64 %37, %38
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %11, align 4
  %41 = load %struct.estack_pages*, %struct.estack_pages** @estack_pages, align 8
  %42 = load i32, i32* %11, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.estack_pages, %struct.estack_pages* %41, i64 %43
  store %struct.estack_pages* %44, %struct.estack_pages** %9, align 8
  %45 = load %struct.estack_pages*, %struct.estack_pages** %9, align 8
  %46 = getelementptr inbounds %struct.estack_pages, %struct.estack_pages* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %83

50:                                               ; preds = %34
  %51 = load %struct.estack_pages*, %struct.estack_pages** %9, align 8
  %52 = getelementptr inbounds %struct.estack_pages, %struct.estack_pages* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %6, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %6, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load %struct.estack_pages*, %struct.estack_pages** %9, align 8
  %58 = getelementptr inbounds %struct.estack_pages, %struct.estack_pages* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = add i64 %56, %59
  store i64 %60, i64* %7, align 8
  %61 = load i64, i64* %7, align 8
  %62 = inttoptr i64 %61 to %struct.pt_regs*
  %63 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %62, i64 -1
  store %struct.pt_regs* %63, %struct.pt_regs** %10, align 8
  %64 = load %struct.estack_pages*, %struct.estack_pages** %9, align 8
  %65 = getelementptr inbounds %struct.estack_pages, %struct.estack_pages* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.stack_info*, %struct.stack_info** %5, align 8
  %68 = getelementptr inbounds %struct.stack_info, %struct.stack_info* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  %69 = load i64, i64* %6, align 8
  %70 = inttoptr i64 %69 to i64*
  %71 = load %struct.stack_info*, %struct.stack_info** %5, align 8
  %72 = getelementptr inbounds %struct.stack_info, %struct.stack_info* %71, i32 0, i32 0
  store i64* %70, i64** %72, align 8
  %73 = load i64, i64* %7, align 8
  %74 = inttoptr i64 %73 to i64*
  %75 = load %struct.stack_info*, %struct.stack_info** %5, align 8
  %76 = getelementptr inbounds %struct.stack_info, %struct.stack_info* %75, i32 0, i32 1
  store i64* %74, i64** %76, align 8
  %77 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %78 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to i64*
  %81 = load %struct.stack_info*, %struct.stack_info** %5, align 8
  %82 = getelementptr inbounds %struct.stack_info, %struct.stack_info* %81, i32 0, i32 2
  store i64* %80, i64** %82, align 8
  store i32 1, i32* %3, align 4
  br label %83

83:                                               ; preds = %50, %49, %33, %22
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @__this_cpu_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
