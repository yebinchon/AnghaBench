; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_signal.c_sys_rt_sigaction.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_signal.c_sys_rt_sigaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction_ = type { i32 }

@_EINVAL = common dso_local global i32 0, align 4
@_EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"rt_sigaction(%d, 0x%x, 0x%x, %d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_rt_sigaction(i32 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sigaction_, align 4
  %11 = alloca %struct.sigaction_, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ne i64 %14, 4
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @_EINVAL, align 4
  store i32 %17, i32* %5, align 4
  br label %68

18:                                               ; preds = %4
  %19 = load i64, i64* %7, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds %struct.sigaction_, %struct.sigaction_* %10, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @user_get(i64 %22, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @_EFAULT, align 4
  store i32 %28, i32* %5, align 4
  br label %68

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %18
  %31 = load i32, i32* %6, align 4
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @STRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %31, i64 %32, i64 %33, i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = load i64, i64* %7, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %41

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40, %39
  %42 = phi %struct.sigaction_* [ %10, %39 ], [ null, %40 ]
  %43 = load i64, i64* %8, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %47

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46, %45
  %48 = phi %struct.sigaction_* [ %11, %45 ], [ null, %46 ]
  %49 = call i32 @do_sigaction(i32 %36, %struct.sigaction_* %42, %struct.sigaction_* %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %5, align 4
  br label %68

54:                                               ; preds = %47
  %55 = load i64, i64* %8, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = load i64, i64* %8, align 8
  %59 = getelementptr inbounds %struct.sigaction_, %struct.sigaction_* %11, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @user_put(i64 %58, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* @_EFAULT, align 4
  store i32 %64, i32* %5, align 4
  br label %68

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %54
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %66, %63, %52, %27, %16
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i64 @user_get(i64, i32) #1

declare dso_local i32 @STRACE(i8*, i32, i64, i64, i32) #1

declare dso_local i32 @do_sigaction(i32, %struct.sigaction_*, %struct.sigaction_*) #1

declare dso_local i64 @user_put(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
