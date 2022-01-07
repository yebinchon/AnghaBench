; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_mdesc.c_mdesc_kfree.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_mdesc.c_mdesc_kfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdesc_handle = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mdesc_handle*)* @mdesc_kfree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdesc_kfree(%struct.mdesc_handle* %0) #0 {
  %2 = alloca %struct.mdesc_handle*, align 8
  store %struct.mdesc_handle* %0, %struct.mdesc_handle** %2, align 8
  %3 = load %struct.mdesc_handle*, %struct.mdesc_handle** %2, align 8
  %4 = getelementptr inbounds %struct.mdesc_handle, %struct.mdesc_handle* %3, i32 0, i32 2
  %5 = call i64 @refcount_read(i32* %4)
  %6 = icmp ne i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @BUG_ON(i32 %7)
  %9 = load %struct.mdesc_handle*, %struct.mdesc_handle** %2, align 8
  %10 = getelementptr inbounds %struct.mdesc_handle, %struct.mdesc_handle* %9, i32 0, i32 1
  %11 = call i32 @list_empty(i32* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.mdesc_handle*, %struct.mdesc_handle** %2, align 8
  %17 = getelementptr inbounds %struct.mdesc_handle, %struct.mdesc_handle* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @kfree(i32 %18)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @refcount_read(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
