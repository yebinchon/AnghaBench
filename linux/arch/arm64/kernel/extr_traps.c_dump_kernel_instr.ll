; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_traps.c_dump_kernel_instr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_traps.c_dump_kernel_instr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"(%08x) \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%08x \00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"bad PC value\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%sCode: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.pt_regs*)* @dump_kernel_instr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_kernel_instr(i8* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [53 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %11 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %12 = call i64 @instruction_pointer(%struct.pt_regs* %11)
  store i64 %12, i64* %5, align 8
  %13 = getelementptr inbounds [53 x i8], [53 x i8]* %6, i64 0, i64 0
  store i8* %13, i8** %7, align 8
  %14 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %15 = call i64 @user_mode(%struct.pt_regs* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %56

18:                                               ; preds = %2
  store i32 -4, i32* %8, align 4
  br label %19

19:                                               ; preds = %49, %18
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %22, label %52

22:                                               ; preds = %19
  %23 = load i64, i64* %5, align 8
  %24 = inttoptr i64 %23 to i32*
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = call i32 @aarch64_insn_read(i32* %27, i32* %9)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %22
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  %37 = load i32, i32* %9, align 4
  %38 = call i32 (i8*, i8*, ...) @sprintf(i8* %32, i8* %36, i32 %37)
  %39 = load i8*, i8** %7, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8* %41, i8** %7, align 8
  br label %48

42:                                               ; preds = %22
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 (i8*, i8*, ...) @sprintf(i8* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i8*, i8** %7, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8* %47, i8** %7, align 8
  br label %52

48:                                               ; preds = %31
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %19

52:                                               ; preds = %42, %19
  %53 = load i8*, i8** %3, align 8
  %54 = getelementptr inbounds [53 x i8], [53 x i8]* %6, i64 0, i64 0
  %55 = call i32 @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %53, i8* %54)
  br label %56

56:                                               ; preds = %52, %17
  ret void
}

declare dso_local i64 @instruction_pointer(%struct.pt_regs*) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @aarch64_insn_read(i32*, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @printk(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
