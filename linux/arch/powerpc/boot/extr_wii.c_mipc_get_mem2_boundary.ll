; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_wii.c_mipc_get_mem2_boundary.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_wii.c_mipc_get_mem2_boundary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipc_infohdr = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"mini: invalid mem2_boundary %08X\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @mipc_get_mem2_boundary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mipc_get_mem2_boundary(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.mipc_infohdr*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = call %struct.mipc_infohdr* (...) @mipc_get_infohdr()
  store %struct.mipc_infohdr* %5, %struct.mipc_infohdr** %3, align 8
  %6 = load %struct.mipc_infohdr*, %struct.mipc_infohdr** %3, align 8
  %7 = icmp ne %struct.mipc_infohdr* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 -1, i32* %4, align 4
  br label %27

9:                                                ; preds = %1
  %10 = load %struct.mipc_infohdr*, %struct.mipc_infohdr** %3, align 8
  %11 = getelementptr inbounds %struct.mipc_infohdr, %struct.mipc_infohdr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @mipc_check_address(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %9
  %16 = load %struct.mipc_infohdr*, %struct.mipc_infohdr** %3, align 8
  %17 = getelementptr inbounds %struct.mipc_infohdr, %struct.mipc_infohdr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %27

22:                                               ; preds = %9
  %23 = load %struct.mipc_infohdr*, %struct.mipc_infohdr** %3, align 8
  %24 = getelementptr inbounds %struct.mipc_infohdr, %struct.mipc_infohdr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %2, align 8
  store i32 %25, i32* %26, align 4
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %22, %15, %8
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local %struct.mipc_infohdr* @mipc_get_infohdr(...) #1

declare dso_local i64 @mipc_check_address(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
