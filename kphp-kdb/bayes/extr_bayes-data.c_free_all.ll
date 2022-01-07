; ModuleID = '/home/carl/AnghaBench/kphp-kdb/bayes/extr_bayes-data.c_free_all.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/bayes/extr_bayes-data.c_free_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@verbosity = common dso_local global i64 0, align 8
@global_bayes = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@user_table = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@users = common dso_local global %struct.TYPE_12__* null, align 8
@index_mode = common dso_local global i64 0, align 8
@buff = common dso_local global %struct.TYPE_12__* null, align 8
@max_words = common dso_local global i32 0, align 4
@new_buff = common dso_local global %struct.TYPE_12__* null, align 8
@bl_head = common dso_local global %struct.TYPE_12__* null, align 8
@header = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Memory left: %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_all() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @verbosity, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %69

4:                                                ; preds = %0
  br label %5

5:                                                ; preds = %8, %4
  %6 = call i32 (...) @user_LRU_unload()
  %7 = icmp ne i32 %6, -1
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  br label %5

9:                                                ; preds = %5
  %10 = call i32 @qhtbl_free(i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @global_bayes, i32 0, i32 0))
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %23, %9
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @user_table, i32 0, i32 0), align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %11
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** @users, align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = call i32 @qhtbl_free(i32* %21)
  br label %23

23:                                               ; preds = %15
  %24 = load i32, i32* %1, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %1, align 4
  br label %11

26:                                               ; preds = %11
  %27 = load i64, i64* @index_mode, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** @buff, align 8
  %31 = load i32, i32* @max_words, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = trunc i64 %33 to i32
  %35 = call i32 @qfree(%struct.TYPE_12__* %30, i32 %34)
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** @new_buff, align 8
  %37 = call i32 @qfree(%struct.TYPE_12__* %36, i32 16000000)
  br label %38

38:                                               ; preds = %29, %26
  br label %39

39:                                               ; preds = %44, %38
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** @bl_head, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** @bl_head, align 8
  %46 = call i32 @black_list_do_delete(%struct.TYPE_12__* %45)
  br label %39

47:                                               ; preds = %39
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** @bl_head, align 8
  %49 = call i32 @qfree(%struct.TYPE_12__* %48, i32 4)
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** @users, align 8
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @user_table, i32 0, i32 0), align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 4, %52
  %54 = trunc i64 %53 to i32
  %55 = call i32 @qfree(%struct.TYPE_12__* %50, i32 %54)
  %56 = call i32 @ltbl_free(%struct.TYPE_13__* @user_table)
  %57 = call i32 @free_header(i32* @header)
  %58 = load i32, i32* @stderr, align 4
  %59 = call i64 (...) @get_memory_used()
  %60 = call i64 (...) @htbl_get_memory()
  %61 = sub nsw i64 %59, %60
  %62 = call i32 @fprintf(i32 %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %61)
  %63 = call i64 (...) @get_memory_used()
  %64 = call i64 (...) @htbl_get_memory()
  %65 = sub nsw i64 %63, %64
  %66 = icmp eq i64 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  br label %69

69:                                               ; preds = %47, %0
  ret void
}

declare dso_local i32 @user_LRU_unload(...) #1

declare dso_local i32 @qhtbl_free(i32*) #1

declare dso_local i32 @qfree(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @black_list_do_delete(%struct.TYPE_12__*) #1

declare dso_local i32 @ltbl_free(%struct.TYPE_13__*) #1

declare dso_local i32 @free_header(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i64) #1

declare dso_local i64 @get_memory_used(...) #1

declare dso_local i64 @htbl_get_memory(...) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
