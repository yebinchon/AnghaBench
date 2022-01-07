; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_pkeys.c_thread_pkey_regs_restore.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_pkeys.c_thread_pkey_regs_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_struct = type { i64, i64, i64 }

@pkey_disabled = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thread_pkey_regs_restore(%struct.thread_struct* %0, %struct.thread_struct* %1) #0 {
  %3 = alloca %struct.thread_struct*, align 8
  %4 = alloca %struct.thread_struct*, align 8
  store %struct.thread_struct* %0, %struct.thread_struct** %3, align 8
  store %struct.thread_struct* %1, %struct.thread_struct** %4, align 8
  %5 = call i64 @static_branch_likely(i32* @pkey_disabled)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %47

8:                                                ; preds = %2
  %9 = load %struct.thread_struct*, %struct.thread_struct** %4, align 8
  %10 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.thread_struct*, %struct.thread_struct** %3, align 8
  %13 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %11, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %8
  %17 = load %struct.thread_struct*, %struct.thread_struct** %3, align 8
  %18 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @write_amr(i64 %19)
  br label %21

21:                                               ; preds = %16, %8
  %22 = load %struct.thread_struct*, %struct.thread_struct** %4, align 8
  %23 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.thread_struct*, %struct.thread_struct** %3, align 8
  %26 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load %struct.thread_struct*, %struct.thread_struct** %3, align 8
  %31 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @write_iamr(i64 %32)
  br label %34

34:                                               ; preds = %29, %21
  %35 = load %struct.thread_struct*, %struct.thread_struct** %4, align 8
  %36 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.thread_struct*, %struct.thread_struct** %3, align 8
  %39 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %34
  %43 = load %struct.thread_struct*, %struct.thread_struct** %3, align 8
  %44 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @write_uamor(i64 %45)
  br label %47

47:                                               ; preds = %7, %42, %34
  ret void
}

declare dso_local i64 @static_branch_likely(i32*) #1

declare dso_local i32 @write_amr(i64) #1

declare dso_local i32 @write_iamr(i64) #1

declare dso_local i32 @write_uamor(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
