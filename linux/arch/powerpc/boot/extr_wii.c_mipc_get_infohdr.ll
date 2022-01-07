; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_wii.c_mipc_get_infohdr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_wii.c_mipc_get_infohdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipc_infohdr = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"mini: invalid hdrp %08X\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"mini: invalid hdr %08X\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"IPC\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"mini: invalid magic\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mipc_infohdr* ()* @mipc_get_infohdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mipc_infohdr* @mipc_get_infohdr() #0 {
  %1 = alloca %struct.mipc_infohdr**, align 8
  %2 = alloca %struct.mipc_infohdr*, align 8
  store %struct.mipc_infohdr** inttoptr (i64 335544316 to %struct.mipc_infohdr**), %struct.mipc_infohdr*** %1, align 8
  %3 = load %struct.mipc_infohdr**, %struct.mipc_infohdr*** %1, align 8
  %4 = ptrtoint %struct.mipc_infohdr** %3 to i32
  %5 = call i64 @mipc_check_address(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %0
  %8 = load %struct.mipc_infohdr**, %struct.mipc_infohdr*** %1, align 8
  %9 = ptrtoint %struct.mipc_infohdr** %8 to i32
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %9)
  store %struct.mipc_infohdr* null, %struct.mipc_infohdr** %2, align 8
  br label %31

11:                                               ; preds = %0
  %12 = load %struct.mipc_infohdr**, %struct.mipc_infohdr*** %1, align 8
  %13 = load %struct.mipc_infohdr*, %struct.mipc_infohdr** %12, align 8
  store %struct.mipc_infohdr* %13, %struct.mipc_infohdr** %2, align 8
  %14 = load %struct.mipc_infohdr*, %struct.mipc_infohdr** %2, align 8
  %15 = ptrtoint %struct.mipc_infohdr* %14 to i32
  %16 = call i64 @mipc_check_address(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load %struct.mipc_infohdr*, %struct.mipc_infohdr** %2, align 8
  %20 = ptrtoint %struct.mipc_infohdr* %19 to i32
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  store %struct.mipc_infohdr* null, %struct.mipc_infohdr** %2, align 8
  br label %31

22:                                               ; preds = %11
  %23 = load %struct.mipc_infohdr*, %struct.mipc_infohdr** %2, align 8
  %24 = getelementptr inbounds %struct.mipc_infohdr, %struct.mipc_infohdr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @memcmp(i32 %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store %struct.mipc_infohdr* null, %struct.mipc_infohdr** %2, align 8
  br label %31

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30, %28, %18, %7
  %32 = load %struct.mipc_infohdr*, %struct.mipc_infohdr** %2, align 8
  ret %struct.mipc_infohdr* %32
}

declare dso_local i64 @mipc_check_address(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
