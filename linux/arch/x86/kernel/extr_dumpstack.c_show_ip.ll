; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_dumpstack.c_show_ip.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_dumpstack.c_show_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64, i64 }

@.str = private unnamed_addr constant [17 x i8] c"%sRIP: %04x:%pS\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_ip(%struct.pt_regs* %0, i8* %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i8*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %7 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = trunc i64 %8 to i32
  %10 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %11 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = call i32 (i8*, i8*, i32, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %5, i32 %9, i8* %13)
  %15 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @show_opcodes(%struct.pt_regs* %15, i8* %16)
  ret void
}

declare dso_local i32 @printk(i8*, i8*, i32, ...) #1

declare dso_local i32 @show_opcodes(%struct.pt_regs*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
