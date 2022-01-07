; ModuleID = '/home/carl/AnghaBench/kphp-kdb/letters/extr_letters-data.c_free_all.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/letters/extr_letters-data.c_free_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"Engine restart\00", align 1
@MAX_PRIORITY = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@id_to_letter = common dso_local global i32 0, align 4
@drive_l_to_letter = common dso_local global i32* null, align 8
@task_deletes = common dso_local global i32 0, align 4
@task_id_to_delete_time = common dso_local global i32 0, align 4
@memory_buf = common dso_local global i32* null, align 8
@header = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@letter_buf = common dso_local global i32 0, align 4
@MAX_LETTER_SIZE = common dso_local global i32 0, align 4
@letter_buf_get = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Memory left: %lld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_all() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @letter_delete_time(i32 -1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 @flush_all(i32 1)
  %4 = call i32 @dl_close_file(i32 1)
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %13, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @MAX_PRIORITY, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = load i32, i32* %1, align 4
  %11 = add nsw i32 2, %10
  %12 = call i32 @dl_close_file(i32 %11)
  br label %13

13:                                               ; preds = %9
  %14 = load i32, i32* %1, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %1, align 4
  br label %5

16:                                               ; preds = %5
  %17 = load i64, i64* @verbosity, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %76

19:                                               ; preds = %16
  %20 = call i32 @map_ll_vptr_free(i32* @id_to_letter)
  store i32 0, i32* %1, align 4
  br label %21

21:                                               ; preds = %31, %19
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* @MAX_PRIORITY, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load i32*, i32** @drive_l_to_letter, align 8
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = call i32 @map_ll_vptr_free(i32* %29)
  br label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %1, align 4
  br label %21

34:                                               ; preds = %21
  %35 = load i32, i32* @task_deletes, align 4
  %36 = call i32 @vector_free(i32 %35)
  %37 = call i32 @map_ll_int_free(i32* @task_id_to_delete_time)
  store i32 0, i32* %1, align 4
  br label %38

38:                                               ; preds = %55, %34
  %39 = load i32, i32* %1, align 4
  %40 = load i32, i32* @MAX_PRIORITY, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %38
  %43 = load i32*, i32** @memory_buf, align 8
  %44 = load i32, i32* %1, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @header, i32 0, i32 0), align 8
  %49 = load i32, i32* %1, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dl_free(i32 %47, i32 %53)
  br label %55

55:                                               ; preds = %42
  %56 = load i32, i32* %1, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %1, align 4
  br label %38

58:                                               ; preds = %38
  %59 = load i32, i32* @letter_buf, align 4
  %60 = load i32, i32* @MAX_LETTER_SIZE, align 4
  %61 = mul nsw i32 2, %60
  %62 = add nsw i32 %61, 1100
  %63 = call i32 @dl_free(i32 %59, i32 %62)
  %64 = load i32, i32* @letter_buf_get, align 4
  %65 = load i32, i32* @MAX_LETTER_SIZE, align 4
  %66 = mul nsw i32 2, %65
  %67 = add nsw i32 %66, 1100
  %68 = call i32 @dl_free(i32 %64, i32 %67)
  %69 = load i32, i32* @stderr, align 4
  %70 = call i64 (...) @dl_get_memory_used()
  %71 = call i32 @fprintf(i32 %69, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %70)
  %72 = call i64 (...) @dl_get_memory_used()
  %73 = icmp eq i64 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  br label %76

76:                                               ; preds = %58, %16
  ret void
}

declare dso_local i32 @letter_delete_time(i32, i8*) #1

declare dso_local i32 @flush_all(i32) #1

declare dso_local i32 @dl_close_file(i32) #1

declare dso_local i32 @map_ll_vptr_free(i32*) #1

declare dso_local i32 @vector_free(i32) #1

declare dso_local i32 @map_ll_int_free(i32*) #1

declare dso_local i32 @dl_free(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i64) #1

declare dso_local i64 @dl_get_memory_used(...) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
