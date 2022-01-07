; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_process.c_set_fs_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_process.c_set_fs_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@set_fs_fixup.warned = internal global i32 0, align 4
@USER_DS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Unbalanced set_fs - int code: 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_fs_fixup() #0 {
  %1 = alloca %struct.pt_regs*, align 8
  %2 = call %struct.pt_regs* (...) @current_pt_regs()
  store %struct.pt_regs* %2, %struct.pt_regs** %1, align 8
  %3 = load i32, i32* @USER_DS, align 4
  %4 = call i32 @set_fs(i32 %3)
  %5 = load i32, i32* @set_fs_fixup.warned, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %15

8:                                                ; preds = %0
  %9 = load %struct.pt_regs*, %struct.pt_regs** %1, align 8
  %10 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.pt_regs*, %struct.pt_regs** %1, align 8
  %14 = call i32 @show_registers(%struct.pt_regs* %13)
  store i32 1, i32* @set_fs_fixup.warned, align 4
  br label %15

15:                                               ; preds = %8, %7
  ret void
}

declare dso_local %struct.pt_regs* @current_pt_regs(...) #1

declare dso_local i32 @set_fs(i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @show_registers(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
