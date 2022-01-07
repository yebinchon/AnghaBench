; ModuleID = '/home/carl/AnghaBench/ish/emu/extr_memory.c_mem_segv_reason.c'
source_filename = "/home/carl/AnghaBench/ish/emu/extr_memory.c_mem_segv_reason.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem = type { i32 }
%struct.pt_entry = type { i32 }

@MEM_READ = common dso_local global i32 0, align 4
@MEM_WRITE = common dso_local global i32 0, align 4
@SEGV_MAPERR_ = common dso_local global i32 0, align 4
@P_READ = common dso_local global i32 0, align 4
@P_WRITE = common dso_local global i32 0, align 4
@SEGV_ACCERR_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"caught segv for valid access\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mem_segv_reason(%struct.mem* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mem*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pt_entry*, align 8
  store %struct.mem* %0, %struct.mem** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @MEM_READ, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @MEM_WRITE, align 4
  %15 = icmp eq i32 %13, %14
  br label %16

16:                                               ; preds = %12, %3
  %17 = phi i1 [ true, %3 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.mem*, %struct.mem** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @PAGE(i32 %21)
  %23 = call %struct.pt_entry* @mem_pt(%struct.mem* %20, i32 %22)
  store %struct.pt_entry* %23, %struct.pt_entry** %8, align 8
  %24 = load %struct.pt_entry*, %struct.pt_entry** %8, align 8
  %25 = icmp eq %struct.pt_entry* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = load i32, i32* @SEGV_MAPERR_, align 4
  store i32 %27, i32* %4, align 4
  br label %54

28:                                               ; preds = %16
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @MEM_READ, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load %struct.pt_entry*, %struct.pt_entry** %8, align 8
  %34 = getelementptr inbounds %struct.pt_entry, %struct.pt_entry* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @P_READ, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %32, %28
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @MEM_WRITE, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load %struct.pt_entry*, %struct.pt_entry** %8, align 8
  %45 = getelementptr inbounds %struct.pt_entry, %struct.pt_entry* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @P_WRITE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %43, %32
  %51 = load i32, i32* @SEGV_ACCERR_, align 4
  store i32 %51, i32* %4, align 4
  br label %54

52:                                               ; preds = %43, %39
  %53 = call i32 @die(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %50, %26
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.pt_entry* @mem_pt(%struct.mem*, i32) #1

declare dso_local i32 @PAGE(i32) #1

declare dso_local i32 @die(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
