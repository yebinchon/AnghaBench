; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_process_64.c_x86_fsgsbase_read_task.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_process_64.c_x86_fsgsbase_read_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.ldt_struct* }
%struct.ldt_struct = type { i16, i32* }
%struct.TYPE_4__ = type { i32* }

@SEGMENT_TI_MASK = common dso_local global i16 0, align 2
@GDT_ENTRIES = common dso_local global i16 0, align 2
@GDT_ENTRY_TLS_MIN = common dso_local global i16 0, align 2
@GDT_ENTRY_TLS_MAX = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.task_struct*, i16)* @x86_fsgsbase_read_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @x86_fsgsbase_read_task(%struct.task_struct* %0, i16 zeroext %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i16 %1, i16* %5, align 2
  %8 = load i16, i16* %5, align 2
  %9 = zext i16 %8 to i32
  %10 = ashr i32 %9, 3
  %11 = trunc i32 %10 to i16
  store i16 %11, i16* %6, align 2
  %12 = load i16, i16* %5, align 2
  %13 = zext i16 %12 to i32
  %14 = load i16, i16* @SEGMENT_TI_MASK, align 2
  %15 = zext i16 %14 to i32
  %16 = and i32 %13, %15
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i64 @likely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %59

21:                                               ; preds = %2
  %22 = load i16, i16* %6, align 2
  %23 = zext i16 %22 to i32
  %24 = load i16, i16* @GDT_ENTRIES, align 2
  %25 = zext i16 %24 to i32
  %26 = icmp sge i32 %23, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store i64 0, i64* %3, align 8
  br label %62

31:                                               ; preds = %21
  %32 = load i16, i16* %6, align 2
  %33 = zext i16 %32 to i32
  %34 = load i16, i16* @GDT_ENTRY_TLS_MIN, align 2
  %35 = zext i16 %34 to i32
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load i16, i16* %6, align 2
  %39 = zext i16 %38 to i32
  %40 = load i16, i16* @GDT_ENTRY_TLS_MAX, align 2
  %41 = zext i16 %40 to i32
  %42 = icmp sgt i32 %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37, %31
  store i64 0, i64* %3, align 8
  br label %62

44:                                               ; preds = %37
  %45 = load i16, i16* @GDT_ENTRY_TLS_MIN, align 2
  %46 = zext i16 %45 to i32
  %47 = load i16, i16* %6, align 2
  %48 = zext i16 %47 to i32
  %49 = sub nsw i32 %48, %46
  %50 = trunc i32 %49 to i16
  store i16 %50, i16* %6, align 2
  %51 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %52 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i16, i16* %6, align 2
  %56 = zext i16 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = call i64 @get_desc_base(i32* %57)
  store i64 %58, i64* %7, align 8
  br label %60

59:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %60

60:                                               ; preds = %59, %44
  %61 = load i64, i64* %7, align 8
  store i64 %61, i64* %3, align 8
  br label %62

62:                                               ; preds = %60, %43, %30
  %63 = load i64, i64* %3, align 8
  ret i64 %63
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @get_desc_base(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
