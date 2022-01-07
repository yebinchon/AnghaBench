; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_pkeys.c_thread_pkey_regs_save.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_pkeys.c_thread_pkey_regs_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_struct = type { i32, i32, i32 }

@pkey_disabled = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thread_pkey_regs_save(%struct.thread_struct* %0) #0 {
  %2 = alloca %struct.thread_struct*, align 8
  store %struct.thread_struct* %0, %struct.thread_struct** %2, align 8
  %3 = call i64 @static_branch_likely(i32* @pkey_disabled)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %16

6:                                                ; preds = %1
  %7 = call i32 (...) @read_amr()
  %8 = load %struct.thread_struct*, %struct.thread_struct** %2, align 8
  %9 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 4
  %10 = call i32 (...) @read_iamr()
  %11 = load %struct.thread_struct*, %struct.thread_struct** %2, align 8
  %12 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = call i32 (...) @read_uamor()
  %14 = load %struct.thread_struct*, %struct.thread_struct** %2, align 8
  %15 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  br label %16

16:                                               ; preds = %6, %5
  ret void
}

declare dso_local i64 @static_branch_likely(i32*) #1

declare dso_local i32 @read_amr(...) #1

declare dso_local i32 @read_iamr(...) #1

declare dso_local i32 @read_uamor(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
