; ModuleID = '/home/carl/AnghaBench/kphp-kdb/support/extr_support-data.c_free_all.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/support/extr_support-data.c_free_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__* }

@verbosity = common dso_local global i64 0, align 8
@answers_cnt = common dso_local global i64 0, align 8
@answers = common dso_local global %struct.TYPE_6__* null, align 8
@q_cnt = common dso_local global i32 0, align 4
@user_id_to_answer = common dso_local global i32 0, align 4
@word_to_answers = common dso_local global i32 0, align 4
@key_words = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Memory left: %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_all() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = load i64, i64* @verbosity, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %76

4:                                                ; preds = %0
  br label %5

5:                                                ; preds = %8, %4
  %6 = load i64, i64* @answers_cnt, align 8
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %43

8:                                                ; preds = %5
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @answers, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @answers, align 8
  %13 = icmp ne %struct.TYPE_6__* %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @answers, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = call i32 @process_answer(%struct.TYPE_6__* %18, i32 -1)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @answers, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %1, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = call i32 @get_lev_support_add_answer_size(%struct.TYPE_6__* %28)
  %30 = call i32 @dl_free(%struct.TYPE_6__* %25, i32 %29)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** @answers, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %35, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @answers, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @answers, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %40, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %42 = call i32 @dl_free(%struct.TYPE_6__* %41, i32 4)
  br label %5

43:                                               ; preds = %5
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** @answers, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @answers, align 8
  %48 = icmp eq %struct.TYPE_6__* %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = call i64 @map_int_int_used(i32* @q_cnt)
  %52 = icmp eq i64 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = call i64 @map_int_vptr_used(i32* @user_id_to_answer)
  %56 = icmp eq i64 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = call i64 @map_int_set_int_used(i32* @word_to_answers)
  %60 = icmp eq i64 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = call i32 @set_int_free(i32* @key_words)
  %64 = call i32 @map_int_int_free(i32* @q_cnt)
  %65 = call i32 @map_int_vptr_free(i32* @user_id_to_answer)
  %66 = call i32 @map_int_set_int_free(i32* @word_to_answers)
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** @answers, align 8
  %68 = call i32 @dl_free(%struct.TYPE_6__* %67, i32 4)
  %69 = load i32, i32* @stderr, align 4
  %70 = call i64 (...) @dl_get_memory_used()
  %71 = call i32 @fprintf(i32 %69, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %70)
  %72 = call i64 (...) @dl_get_memory_used()
  %73 = icmp eq i64 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  br label %76

76:                                               ; preds = %43, %0
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @process_answer(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @dl_free(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @get_lev_support_add_answer_size(%struct.TYPE_6__*) #1

declare dso_local i64 @map_int_int_used(i32*) #1

declare dso_local i64 @map_int_vptr_used(i32*) #1

declare dso_local i64 @map_int_set_int_used(i32*) #1

declare dso_local i32 @set_int_free(i32*) #1

declare dso_local i32 @map_int_int_free(i32*) #1

declare dso_local i32 @map_int_vptr_free(i32*) #1

declare dso_local i32 @map_int_set_int_free(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i64) #1

declare dso_local i64 @dl_get_memory_used(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
