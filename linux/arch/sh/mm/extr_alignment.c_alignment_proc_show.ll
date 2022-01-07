; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/mm/extr_alignment.c_alignment_proc_show.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/mm/extr_alignment.c_alignment_proc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"User:\09\09%lu\0A\00", align 1
@se_user = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"System:\09\09%lu\0A\00", align 1
@se_sys = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"Half:\09\09%lu\0A\00", align 1
@se_half = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"Word:\09\09%lu\0A\00", align 1
@se_word = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"DWord:\09\09%lu\0A\00", align 1
@se_dword = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"Multi:\09\09%lu\0A\00", align 1
@se_multi = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"User faults:\09%i (%s)\0A\00", align 1
@se_usermode = common dso_local global i64 0, align 8
@se_usermode_action = common dso_local global i8** null, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"Kernel faults:\09%i (fixup%s)\0A\00", align 1
@se_kernmode_warn = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"+warn\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @alignment_proc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alignment_proc_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %6 = load i32, i32* @se_user, align 4
  %7 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = load i32, i32* @se_sys, align 4
  %10 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %9)
  %11 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %12 = load i32, i32* @se_half, align 4
  %13 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %12)
  %14 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %15 = load i32, i32* @se_word, align 4
  %16 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %15)
  %17 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %18 = load i32, i32* @se_dword, align 4
  %19 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %18)
  %20 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %21 = load i32, i32* @se_multi, align 4
  %22 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %21)
  %23 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %24 = load i64, i64* @se_usermode, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i8**, i8*** @se_usermode_action, align 8
  %27 = load i64, i64* @se_usermode, align 8
  %28 = getelementptr inbounds i8*, i8** %26, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %25, i8* %29)
  %31 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %32 = load i32, i32* @se_kernmode_warn, align 4
  %33 = load i32, i32* @se_kernmode_warn, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %37 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %32, i8* %36)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
