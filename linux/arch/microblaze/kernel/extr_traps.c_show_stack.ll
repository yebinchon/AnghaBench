; ModuleID = '/home/carl/AnghaBench/linux/arch/microblaze/kernel/extr_traps.c_show_stack.c'
source_filename = "/home/carl/AnghaBench/linux/arch/microblaze/kernel/extr_traps.c_show_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64 }
%struct.thread_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@THREAD_SIZE = common dso_local global i32 0, align 4
@kstack_depth_to_print = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"Kernel Stack:\0A\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DUMP_PREFIX_ADDRESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"\0A\0ACall Trace:\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@current = common dso_local global %struct.task_struct* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_stack(%struct.task_struct* %0, i64* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i64* %1, i64** %4, align 8
  %8 = load i64*, i64** %4, align 8
  %9 = ptrtoint i64* %8 to i32
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %2
  %13 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %14 = icmp ne %struct.task_struct* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %17 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.thread_info*
  %20 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  br label %26

23:                                               ; preds = %12
  %24 = ptrtoint i64** %4 to i32
  %25 = sub nsw i32 %24, 8
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %23, %15
  br label %27

27:                                               ; preds = %26, %2
  %28 = load i32, i32* @THREAD_SIZE, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @THREAD_SIZE, align 4
  %31 = sub nsw i32 %30, 1
  %32 = and i32 %29, %31
  %33 = sub nsw i32 %28, %32
  %34 = ashr i32 %33, 2
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* @kstack_depth_to_print, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %27
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @kstack_depth_to_print, align 8
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i64, i64* @kstack_depth_to_print, align 8
  store i64 %43, i64* %5, align 8
  br label %44

44:                                               ; preds = %42, %38, %27
  %45 = call i32 @pr_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* %6, align 4
  %47 = and i32 %46, 15
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %77

49:                                               ; preds = %44
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %50, 15
  %52 = sub nsw i32 16, %51
  %53 = ashr i32 %52, 2
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %7, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %5, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %76

58:                                               ; preds = %49
  %59 = load i32, i32* @KERN_INFO, align 4
  %60 = load i32, i32* @DUMP_PREFIX_ADDRESS, align 4
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i8*
  %64 = load i64, i64* %7, align 8
  %65 = shl i64 %64, 2
  %66 = call i32 @print_hex_dump(i32 %59, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 32, i32 4, i8* %63, i64 %65, i32 0)
  %67 = load i64, i64* %7, align 8
  %68 = shl i64 %67, 2
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = add i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %6, align 4
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* %5, align 8
  %75 = sub i64 %74, %73
  store i64 %75, i64* %5, align 8
  br label %76

76:                                               ; preds = %58, %49
  br label %77

77:                                               ; preds = %76, %44
  %78 = load i32, i32* @KERN_INFO, align 4
  %79 = load i32, i32* @DUMP_PREFIX_ADDRESS, align 4
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to i8*
  %83 = load i64, i64* %5, align 8
  %84 = shl i64 %83, 2
  %85 = call i32 @print_hex_dump(i32 %78, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 32, i32 4, i8* %82, i64 %84, i32 0)
  %86 = call i32 @pr_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %87 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %88 = call i32 @microblaze_unwind(%struct.task_struct* %87, i32* null)
  %89 = call i32 @pr_info(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %90 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %91 = icmp ne %struct.task_struct* %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %77
  %93 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %93, %struct.task_struct** %3, align 8
  br label %94

94:                                               ; preds = %92, %77
  %95 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %96 = call i32 @debug_show_held_locks(%struct.task_struct* %95)
  ret void
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @print_hex_dump(i32, i8*, i32, i32, i32, i8*, i64, i32) #1

declare dso_local i32 @microblaze_unwind(%struct.task_struct*, i32*) #1

declare dso_local i32 @debug_show_held_locks(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
