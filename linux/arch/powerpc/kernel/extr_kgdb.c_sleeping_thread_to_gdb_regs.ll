; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_kgdb.c_sleeping_thread_to_gdb_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_kgdb.c_sleeping_thread_to_gdb_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i64 }
%struct.pt_regs = type { i32, i32, i32, i32, i32, i32, i32* }

@STACK_FRAME_OVERHEAD = common dso_local global i64 0, align 8
@NUMREGBYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sleeping_thread_to_gdb_regs(i64* %0, %struct.task_struct* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %9 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @STACK_FRAME_OVERHEAD, align 8
  %13 = add nsw i64 %11, %12
  %14 = inttoptr i64 %13 to %struct.pt_regs*
  store %struct.pt_regs* %14, %struct.pt_regs** %5, align 8
  %15 = load i64*, i64** %3, align 8
  store i64* %15, i64** %6, align 8
  %16 = load i64*, i64** %3, align 8
  %17 = load i32, i32* @NUMREGBYTES, align 4
  %18 = call i32 @memset(i64* %16, i32 0, i32 %17)
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %32, %2
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 3
  br i1 %21, label %22, label %35

22:                                               ; preds = %19
  %23 = load i64*, i64** %6, align 8
  %24 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %25 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %24, i32 0, i32 6
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @PACK64(i64* %23, i32 %30)
  br label %32

32:                                               ; preds = %22
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %19

35:                                               ; preds = %19
  %36 = load i64*, i64** %6, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 11
  store i64* %37, i64** %6, align 8
  store i32 14, i32* %7, align 4
  br label %38

38:                                               ; preds = %51, %35
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 32
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = load i64*, i64** %6, align 8
  %43 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %44 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %43, i32 0, i32 6
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @PACK64(i64* %42, i32 %49)
  br label %51

51:                                               ; preds = %41
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %38

54:                                               ; preds = %38
  %55 = load i64*, i64** %6, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 32
  store i64* %56, i64** %6, align 8
  %57 = load i64*, i64** %6, align 8
  %58 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %59 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @PACK64(i64* %57, i32 %60)
  %62 = load i64*, i64** %6, align 8
  %63 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %64 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @PACK64(i64* %62, i32 %65)
  %67 = load i64*, i64** %6, align 8
  %68 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %69 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @PACK32(i64* %67, i32 %70)
  %72 = load i64*, i64** %6, align 8
  %73 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %74 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @PACK64(i64* %72, i32 %75)
  %77 = load i64*, i64** %6, align 8
  %78 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %79 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @PACK64(i64* %77, i32 %80)
  %82 = load i64*, i64** %6, align 8
  %83 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %84 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @PACK32(i64* %82, i32 %85)
  %87 = load i64*, i64** %6, align 8
  %88 = ptrtoint i64* %87 to i64
  %89 = load i64*, i64** %3, align 8
  %90 = bitcast i64* %89 to i8*
  %91 = load i32, i32* @NUMREGBYTES, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr i8, i8* %90, i64 %92
  %94 = ptrtoint i8* %93 to i64
  %95 = icmp ugt i64 %88, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @BUG_ON(i32 %96)
  ret void
}

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @PACK64(i64*, i32) #1

declare dso_local i32 @PACK32(i64*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
