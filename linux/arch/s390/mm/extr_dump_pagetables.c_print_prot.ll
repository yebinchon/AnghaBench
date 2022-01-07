; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_dump_pagetables.c_print_prot.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_dump_pagetables.c_print_prot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@print_prot.level_name = internal constant [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [5 x i8] c"ASCE\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"PGD\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"PUD\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"PMD\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"PTE\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@_PAGE_INVALID = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"I\0A\00", align 1
@_PAGE_PROTECT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"RO \00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"RW \00", align 1
@_PAGE_NOEXEC = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"NX\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i32, i32)* @print_prot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_prot(%struct.seq_file* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %8 = load i32, i32* %6, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [5 x i8*], [5 x i8*]* @print_prot.level_name, i64 0, i64 %9
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %11)
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @_PAGE_INVALID, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %19 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %37

20:                                               ; preds = %3
  %21 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @_PAGE_PROTECT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)
  %28 = call i32 @seq_puts(%struct.seq_file* %21, i8* %27)
  %29 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @_PAGE_NOEXEC, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)
  %36 = call i32 @seq_puts(%struct.seq_file* %29, i8* %35)
  br label %37

37:                                               ; preds = %20, %17
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
