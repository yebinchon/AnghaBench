; ModuleID = '/home/carl/AnghaBench/linux/arch/xtensa/mm/extr_fault.c_bad_page_fault.c'
source_filename = "/home/carl/AnghaBench/linux/arch/xtensa/mm/extr_fault.c_bad_page_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.pt_regs = type { i32*, i32 }
%struct.exception_table_entry = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"%s: Exception at pc=%#010lx (%lx)\0A\00", align 1
@current = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [89 x i8] c"Unable to handle kernel paging request at virtual address %08lx\0A pc = %08lx, ra = %08lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Oops\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad_page_fault(%struct.pt_regs* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.exception_table_entry*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %9 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.exception_table_entry* @search_exception_tables(i32 %10)
  store %struct.exception_table_entry* %11, %struct.exception_table_entry** %7, align 8
  %12 = icmp ne %struct.exception_table_entry* %11, null
  br i1 %12, label %13, label %33

13:                                               ; preds = %3
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %18 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.exception_table_entry*, %struct.exception_table_entry** %7, align 8
  %21 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19, i32 %22)
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i64 %24, i64* %27, align 8
  %28 = load %struct.exception_table_entry*, %struct.exception_table_entry** %7, align 8
  %29 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %32 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  br label %49

33:                                               ; preds = %3
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %36 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %39 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @pr_alert(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0), i64 %34, i32 %37, i32 %42)
  %44 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  call void @die(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct.pt_regs* %44, i64 %46)
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @do_exit(i32 %47)
  br label %49

49:                                               ; preds = %33, %13
  ret void
}

declare dso_local %struct.exception_table_entry* @search_exception_tables(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @pr_alert(i8*, i64, i32, i32) #1

declare dso_local void @die(i8*, %struct.pt_regs*, i64) #1

declare dso_local i32 @do_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
