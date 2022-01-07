; ModuleID = '/home/carl/AnghaBench/linux/arch/h8300/kernel/extr_ptrace_h.c_isbranch.c'
source_filename = "/home/carl/AnghaBench/linux/arch/h8300/kernel/extr_ptrace_h.c_isbranch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@PT_CCR = common dso_local global i32 0, align 4
@condmask = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i32)* @isbranch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isbranch(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %8 = load i32, i32* @PT_CCR, align 4
  %9 = call zeroext i8 @h8300_get_reg(%struct.task_struct* %7, i32 %8)
  store i8 %9, i8* %6, align 1
  %10 = load i8, i8* %6, align 1
  %11 = call i8 asm "bld #3,${0:w}\0A\09bxor #1,${0:w}\0A\09bst #4,${0:w}\0A\09bor #2,${0:w}\0A\09bst #5,${0:w}\0A\09bld #2,${0:w}\0A\09bor #0,${0:w}\0A\09bst #6,${0:w}\0A\09", "=&r,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i8 %10) #2, !srcloc !2
  store i8 %11, i8* %6, align 1
  %12 = load i8*, i8** @condmask, align 8
  %13 = load i32, i32* %5, align 4
  %14 = ashr i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %12, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = load i8, i8* %6, align 1
  %20 = zext i8 %19 to i32
  %21 = and i32 %20, %18
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %6, align 1
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, 1
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %2
  %27 = load i8, i8* %6, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %3, align 4
  br label %36

31:                                               ; preds = %2
  %32 = load i8, i8* %6, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %31, %26
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local zeroext i8 @h8300_get_reg(%struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 422, i32 435, i32 455, i32 474, i32 493, i32 512, i32 531, i32 550, i32 569}
