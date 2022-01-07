; ModuleID = '/home/carl/AnghaBench/ish/emu/extr_memory.c_mem_coredump.c'
source_filename = "/home/carl/AnghaBench/ish/emu/extr_memory.c_mem_coredump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem = type { i32 }
%struct.pt_entry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"ftruncate\00", align 1
@MEM_PAGES = common dso_local global i32 0, align 4
@PAGE_BITS = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"lseek\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"dumped %d pages\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mem_coredump(%struct.mem* %0, i8* %1) #0 {
  %3 = alloca %struct.mem*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pt_entry*, align 8
  store %struct.mem* %0, %struct.mem** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* @O_CREAT, align 4
  %11 = load i32, i32* @O_RDWR, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @O_TRUNC, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @open(i8* %9, i32 %14, i32 438)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %71

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @ftruncate(i32 %21, i32 -1)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %71

26:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %63, %26
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @MEM_PAGES, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %66

31:                                               ; preds = %27
  %32 = load %struct.mem*, %struct.mem** %3, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call %struct.pt_entry* @mem_pt(%struct.mem* %32, i32 %33)
  store %struct.pt_entry* %34, %struct.pt_entry** %8, align 8
  %35 = load %struct.pt_entry*, %struct.pt_entry** %8, align 8
  %36 = icmp eq %struct.pt_entry* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %63

38:                                               ; preds = %31
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @PAGE_BITS, align 4
  %44 = shl i32 %42, %43
  %45 = load i32, i32* @SEEK_SET, align 4
  %46 = call i64 @lseek(i32 %41, i32 %44, i32 %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %71

50:                                               ; preds = %38
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.pt_entry*, %struct.pt_entry** %8, align 8
  %53 = getelementptr inbounds %struct.pt_entry, %struct.pt_entry* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @PAGE_SIZE, align 4
  %58 = call i64 @write(i32 %51, i32 %56, i32 %57)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  %61 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %71

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %62, %37
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %27

66:                                               ; preds = %27
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @close(i32 %69)
  br label %71

71:                                               ; preds = %66, %60, %48, %24, %18
  ret void
}

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @ftruncate(i32, i32) #1

declare dso_local %struct.pt_entry* @mem_pt(%struct.mem*, i32) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i64 @write(i32, i32, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
