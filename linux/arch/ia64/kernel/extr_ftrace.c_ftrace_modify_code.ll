; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_ftrace.c_ftrace_modify_code.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_ftrace.c_ftrace_modify_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MCOUNT_INSN_SIZE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i8*, i32)* @ftrace_modify_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftrace_modify_code(i64 %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @MCOUNT_INSN_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  br label %38

20:                                               ; preds = %4
  %21 = load i64, i64* %6, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = load i32, i32* @MCOUNT_INSN_SIZE, align 4
  %24 = call i64 @probe_kernel_read(i8* %16, i8* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @EFAULT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %56

29:                                               ; preds = %20
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* @MCOUNT_INSN_SIZE, align 4
  %32 = call i64 @memcmp(i8* %16, i8* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %56

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %19
  %39 = load i64, i64* %6, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = load i8*, i8** %8, align 8
  %42 = load i32, i32* @MCOUNT_INSN_SIZE, align 4
  %43 = call i64 @probe_kernel_write(i8* %40, i8* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i32, i32* @EPERM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %56

48:                                               ; preds = %38
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load i32, i32* @MCOUNT_INSN_SIZE, align 4
  %52 = sext i32 %51 to i64
  %53 = add i64 %50, %52
  %54 = trunc i64 %53 to i32
  %55 = call i32 @flush_icache_range(i64 %49, i32 %54)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %56

56:                                               ; preds = %48, %45, %34, %26
  %57 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %57)
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @probe_kernel_read(i8*, i8*, i32) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i64 @probe_kernel_write(i8*, i8*, i32) #2

declare dso_local i32 @flush_icache_range(i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
