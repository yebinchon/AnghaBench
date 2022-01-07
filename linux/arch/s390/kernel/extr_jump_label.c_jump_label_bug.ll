; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_jump_label.c_jump_label_bug.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_jump_label.c_jump_label_bug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jump_entry = type { i32 }
%struct.insn = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Jump label code mismatch at %pS [%p]\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Found:    %6ph\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Expected: %6ph\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"New:      %6ph\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Corrupted kernel text\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jump_entry*, %struct.insn*, %struct.insn*)* @jump_label_bug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jump_label_bug(%struct.jump_entry* %0, %struct.insn* %1, %struct.insn* %2) #0 {
  %4 = alloca %struct.jump_entry*, align 8
  %5 = alloca %struct.insn*, align 8
  %6 = alloca %struct.insn*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.jump_entry* %0, %struct.jump_entry** %4, align 8
  store %struct.insn* %1, %struct.insn** %5, align 8
  store %struct.insn* %2, %struct.insn** %6, align 8
  %10 = load %struct.jump_entry*, %struct.jump_entry** %4, align 8
  %11 = call i64 @jump_entry_code(%struct.jump_entry* %10)
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** %7, align 8
  %13 = load %struct.insn*, %struct.insn** %5, align 8
  %14 = bitcast %struct.insn* %13 to i8*
  store i8* %14, i8** %8, align 8
  %15 = load %struct.insn*, %struct.insn** %6, align 8
  %16 = bitcast %struct.insn* %15 to i8*
  store i8* %16, i8** %9, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 (i8*, i8*, ...) @pr_emerg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %17, i8* %18)
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 (i8*, i8*, ...) @pr_emerg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 (i8*, i8*, ...) @pr_emerg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %22)
  %24 = load i8*, i8** %9, align 8
  %25 = call i32 (i8*, i8*, ...) @pr_emerg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %24)
  %26 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i64 @jump_entry_code(%struct.jump_entry*) #1

declare dso_local i32 @pr_emerg(i8*, i8*, ...) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
