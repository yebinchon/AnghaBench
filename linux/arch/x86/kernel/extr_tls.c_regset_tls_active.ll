; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_tls.c_regset_tls_active.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_tls.c_regset_tls_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.thread_struct }
%struct.thread_struct = type { i32* }
%struct.user_regset = type { i32 }

@GDT_ENTRY_TLS_ENTRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regset_tls_active(%struct.task_struct* %0, %struct.user_regset* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.user_regset*, align 8
  %5 = alloca %struct.thread_struct*, align 8
  %6 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store %struct.user_regset* %1, %struct.user_regset** %4, align 8
  %7 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %8 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %7, i32 0, i32 0
  store %struct.thread_struct* %8, %struct.thread_struct** %5, align 8
  %9 = load i32, i32* @GDT_ENTRY_TLS_ENTRIES, align 4
  store i32 %9, i32* %6, align 4
  br label %10

10:                                               ; preds = %25, %2
  %11 = load i32, i32* %6, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %10
  %14 = load %struct.thread_struct*, %struct.thread_struct** %5, align 8
  %15 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = call i64 @desc_empty(i32* %20)
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %13, %10
  %24 = phi i1 [ false, %10 ], [ %22, %13 ]
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %6, align 4
  br label %10

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  ret i32 %29
}

declare dso_local i64 @desc_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
