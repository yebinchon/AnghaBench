; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_mips-mt-fpaff.c_check_same_owner.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_mips-mt-fpaff.c_check_same_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.cred = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*)* @check_same_owner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_same_owner(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.cred*, align 8
  %4 = alloca %struct.cred*, align 8
  %5 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %6 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %6, %struct.cred** %3, align 8
  %7 = call i32 (...) @rcu_read_lock()
  %8 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %9 = call %struct.cred* @__task_cred(%struct.task_struct* %8)
  store %struct.cred* %9, %struct.cred** %4, align 8
  %10 = load %struct.cred*, %struct.cred** %3, align 8
  %11 = getelementptr inbounds %struct.cred, %struct.cred* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.cred*, %struct.cred** %4, align 8
  %14 = getelementptr inbounds %struct.cred, %struct.cred* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @uid_eq(i32 %12, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %1
  %19 = load %struct.cred*, %struct.cred** %3, align 8
  %20 = getelementptr inbounds %struct.cred, %struct.cred* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.cred*, %struct.cred** %4, align 8
  %23 = getelementptr inbounds %struct.cred, %struct.cred* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @uid_eq(i32 %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %18, %1
  %28 = phi i1 [ true, %1 ], [ %26, %18 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %5, align 4
  %30 = call i32 (...) @rcu_read_unlock()
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.cred* @__task_cred(%struct.task_struct*) #1

declare dso_local i64 @uid_eq(i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
