; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_pat.c_pat_disable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_pat.c_pat_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pat_disabled = common dso_local global i32 0, align 4
@boot_cpu_done = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"x86/PAT: PAT cannot be disabled after initialization\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"x86/PAT: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pat_disable(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @pat_disabled, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %14

6:                                                ; preds = %1
  %7 = load i64, i64* @boot_cpu_done, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %14

11:                                               ; preds = %6
  store i32 1, i32* @pat_disabled, align 4
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @pr_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %12)
  br label %14

14:                                               ; preds = %11, %9, %5
  ret void
}

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @pr_info(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
