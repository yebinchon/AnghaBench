; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_traps.c___dump_instr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_traps.c___dump_instr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"(%0*x) \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%0*x \00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"bad PC value\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%sCode: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.pt_regs*)* @__dump_instr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dump_instr(i8* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [53 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %13 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %14 = call i64 @instruction_pointer(%struct.pt_regs* %13)
  store i64 %14, i64* %5, align 8
  %15 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %16 = call i32 @thumb_mode(%struct.pt_regs* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 4, i32 8
  store i32 %20, i32* %7, align 4
  %21 = getelementptr inbounds [53 x i8], [53 x i8]* %8, i64 0, i64 0
  store i8* %21, i8** %9, align 8
  store i32 -4, i32* %10, align 4
  br label %22

22:                                               ; preds = %72, %2
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = add nsw i32 1, %28
  %30 = icmp slt i32 %23, %29
  br i1 %30, label %31, label %75

31:                                               ; preds = %22
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i32, i32* %11, align 4
  %36 = load i64, i64* %5, align 8
  %37 = inttoptr i64 %36 to i32*
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = call i32 @get_user(i32 %35, i32* %40)
  store i32 %41, i32* %12, align 4
  br label %50

42:                                               ; preds = %31
  %43 = load i32, i32* %11, align 4
  %44 = load i64, i64* %5, align 8
  %45 = inttoptr i64 %44 to i32*
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = call i32 @get_user(i32 %43, i32* %48)
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %42, %34
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %50
  %54 = load i8*, i8** %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = icmp eq i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i32 (i8*, i8*, ...) @sprintf(i8* %54, i8* %58, i32 %59, i32 %60)
  %62 = load i8*, i8** %9, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  store i8* %64, i8** %9, align 8
  br label %71

65:                                               ; preds = %50
  %66 = load i8*, i8** %9, align 8
  %67 = call i32 (i8*, i8*, ...) @sprintf(i8* %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i8*, i8** %9, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  store i8* %70, i8** %9, align 8
  br label %75

71:                                               ; preds = %53
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  br label %22

75:                                               ; preds = %65, %22
  %76 = load i8*, i8** %3, align 8
  %77 = getelementptr inbounds [53 x i8], [53 x i8]* %8, i64 0, i64 0
  %78 = call i32 @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %76, i8* %77)
  ret void
}

declare dso_local i64 @instruction_pointer(%struct.pt_regs*) #1

declare dso_local i32 @thumb_mode(%struct.pt_regs*) #1

declare dso_local i32 @get_user(i32, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @printk(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
