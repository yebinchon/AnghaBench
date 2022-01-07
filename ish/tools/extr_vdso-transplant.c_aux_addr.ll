; ModuleID = '/home/carl/AnghaBench/ish/tools/extr_vdso-transplant.c_aux_addr.c'
source_filename = "/home/carl/AnghaBench/ish/tools/extr_vdso-transplant.c_aux_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_regs_struct = type { i32 }

@PTRACE_GETREGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"ptrace get sp for aux\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @aux_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aux_addr(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.user_regs_struct, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @PTRACE_GETREGS, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @ptrace(i32 %9, i32 %10, i32* null, %struct.user_regs_struct* %6)
  %12 = call i32 @trycall(i32 %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %13 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %6, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %15, 4
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %22, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @pt_read(i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 4
  store i32 %24, i32* %7, align 4
  br label %17

25:                                               ; preds = %17
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 4
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %33, %25
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @pt_read(i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 4
  store i32 %35, i32* %7, align 4
  br label %28

36:                                               ; preds = %28
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 4
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %53, %36
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i64 @pt_read(i32 %40, i32 %41)
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %39
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 4
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %57

53:                                               ; preds = %45
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 4
  store i32 %55, i32* %7, align 4
  br label %39

56:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %51
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @trycall(i32, i8*) #1

declare dso_local i32 @ptrace(i32, i32, i32*, %struct.user_regs_struct*) #1

declare dso_local i64 @pt_read(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
