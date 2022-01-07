; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_unwind_frame.c_unwind_dump.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_unwind_frame.c_unwind_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unwind_state = type { i64, i8*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64*, i32 }
%struct.stack_info = type { i64*, i32, i32 }

@unwind_dump.dumped_before = internal global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"unwind stack type:%d next_sp:%p mask:0x%lx graph_idx:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%p: %0*x ...\0A\00", align 1
@BITS_PER_LONG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"%p: %0*lx (%pB)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.unwind_state*)* @unwind_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unwind_dump(%struct.unwind_state* %0) #0 {
  %2 = alloca %struct.unwind_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.stack_info, align 8
  %8 = alloca i64, align 8
  store %struct.unwind_state* %0, %struct.unwind_state** %2, align 8
  store i32 0, i32* %4, align 4
  %9 = bitcast %struct.stack_info* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 16, i1 false)
  store i64 0, i64* %8, align 8
  %10 = load i32, i32* @unwind_dump.dumped_before, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %85

13:                                               ; preds = %1
  store i32 1, i32* @unwind_dump.dumped_before, align 4
  %14 = load %struct.unwind_state*, %struct.unwind_state** %2, align 8
  %15 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load %struct.unwind_state*, %struct.unwind_state** %2, align 8
  %19 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.unwind_state*, %struct.unwind_state** %2, align 8
  %23 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.unwind_state*, %struct.unwind_state** %2, align 8
  %26 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 (i8*, i64*, i32, i64, ...) @printk_deferred(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64* %17, i32 %21, i64 %24, i8* %27)
  %29 = load %struct.unwind_state*, %struct.unwind_state** %2, align 8
  %30 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i64* @PTR_ALIGN(i32 %31, i32 8)
  store i64* %32, i64** %6, align 8
  br label %33

33:                                               ; preds = %81, %13
  %34 = load i64*, i64** %6, align 8
  %35 = icmp ne i64* %34, null
  br i1 %35, label %36, label %85

36:                                               ; preds = %33
  %37 = load i64*, i64** %6, align 8
  %38 = load %struct.unwind_state*, %struct.unwind_state** %2, align 8
  %39 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @get_stack_info(i64* %37, i32 %40, %struct.stack_info* %7, i64* %8)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %85

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %77, %44
  %46 = load i64*, i64** %6, align 8
  %47 = getelementptr inbounds %struct.stack_info, %struct.stack_info* %7, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = icmp ult i64* %46, %48
  br i1 %49, label %50, label %80

50:                                               ; preds = %45
  %51 = load i64*, i64** %6, align 8
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @READ_ONCE_NOCHECK(i64 %52)
  store i64 %53, i64* %5, align 8
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %3, align 4
  %55 = load i64, i64* %5, align 8
  %56 = icmp eq i64 %55, 0
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %50
  %61 = load i32, i32* %3, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %60
  %64 = load i64*, i64** %6, align 8
  %65 = load i32, i32* @BITS_PER_LONG, align 4
  %66 = sdiv i32 %65, 4
  %67 = call i32 (i8*, i64*, i32, i64, ...) @printk_deferred(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64* %64, i32 %66, i64 0)
  br label %68

68:                                               ; preds = %63, %60
  br label %77

69:                                               ; preds = %50
  %70 = load i64*, i64** %6, align 8
  %71 = load i32, i32* @BITS_PER_LONG, align 4
  %72 = sdiv i32 %71, 4
  %73 = load i64, i64* %5, align 8
  %74 = load i64, i64* %5, align 8
  %75 = inttoptr i64 %74 to i8*
  %76 = call i32 (i8*, i64*, i32, i64, ...) @printk_deferred(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64* %70, i32 %72, i64 %73, i8* %75)
  br label %77

77:                                               ; preds = %69, %68
  %78 = load i64*, i64** %6, align 8
  %79 = getelementptr inbounds i64, i64* %78, i32 1
  store i64* %79, i64** %6, align 8
  br label %45

80:                                               ; preds = %45
  br label %81

81:                                               ; preds = %80
  %82 = getelementptr inbounds %struct.stack_info, %struct.stack_info* %7, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i64* @PTR_ALIGN(i32 %83, i32 8)
  store i64* %84, i64** %6, align 8
  br label %33

85:                                               ; preds = %12, %43, %33
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @printk_deferred(i8*, i64*, i32, i64, ...) #2

declare dso_local i64* @PTR_ALIGN(i32, i32) #2

declare dso_local i64 @get_stack_info(i64*, i32, %struct.stack_info*, i64*) #2

declare dso_local i64 @READ_ONCE_NOCHECK(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
