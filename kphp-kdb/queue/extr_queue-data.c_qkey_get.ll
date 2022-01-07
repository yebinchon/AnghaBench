; ModuleID = '/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-data.c_qkey_get.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-data.c_qkey_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8* }
%struct.TYPE_9__ = type { i8*, %struct.TYPE_10__* }

@h_qkey = common dso_local global i32 0, align 4
@str_memory = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Keys collision\00", align 1
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Key created : [%s]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @qkey_get(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %8, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  store i8* %9, i8** %10, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %7, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %71

13:                                               ; preds = %2
  %14 = bitcast %struct.TYPE_9__* %5 to { i8*, %struct.TYPE_10__* }*
  %15 = getelementptr inbounds { i8*, %struct.TYPE_10__* }, { i8*, %struct.TYPE_10__* }* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds { i8*, %struct.TYPE_10__* }, { i8*, %struct.TYPE_10__* }* %14, i32 0, i32 1
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = call %struct.TYPE_9__* @shmap_string_vptr_add(i32* @h_qkey, i8* %16, %struct.TYPE_10__* %18)
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %6, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = icmp eq %struct.TYPE_10__* %22, null
  br i1 %23, label %24, label %49

24:                                               ; preds = %13
  %25 = call i64 (...) @dl_get_memory_used()
  %26 = load i32, i32* @str_memory, align 4
  %27 = sext i32 %26 to i64
  %28 = sub nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* @str_memory, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i8* @dl_strdup(i8* %32)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = call i64 (...) @dl_get_memory_used()
  %37 = load i32, i32* @str_memory, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* @str_memory, align 4
  %41 = call %struct.TYPE_10__* (...) @qkey_malloc()
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  store %struct.TYPE_10__* %41, %struct.TYPE_10__** %43, align 8
  store %struct.TYPE_10__* %41, %struct.TYPE_10__** %7, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  br label %63

49:                                               ; preds = %13
  %50 = load i32, i32* %4, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  br i1 true, label %53, label %54

53:                                               ; preds = %52
  br label %54

54:                                               ; preds = %53, %52
  %55 = phi i1 [ false, %52 ], [ false, %53 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  br label %62

58:                                               ; preds = %49
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  store %struct.TYPE_10__* %61, %struct.TYPE_10__** %7, align 8
  br label %62

62:                                               ; preds = %58, %54
  br label %63

63:                                               ; preds = %62, %24
  %64 = load i32, i32* @verbosity, align 4
  %65 = icmp sgt i32 %64, 2
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i32, i32* @stderr, align 4
  %68 = load i8*, i8** %3, align 8
  %69 = call i32 @fprintf(i32 %67, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %68)
  br label %70

70:                                               ; preds = %66, %63
  br label %85

71:                                               ; preds = %2
  %72 = bitcast %struct.TYPE_9__* %5 to { i8*, %struct.TYPE_10__* }*
  %73 = getelementptr inbounds { i8*, %struct.TYPE_10__* }, { i8*, %struct.TYPE_10__* }* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds { i8*, %struct.TYPE_10__* }, { i8*, %struct.TYPE_10__* }* %72, i32 0, i32 1
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = call %struct.TYPE_9__* @shmap_string_vptr_get(i32* @h_qkey, i8* %74, %struct.TYPE_10__* %76)
  store %struct.TYPE_9__* %77, %struct.TYPE_9__** %6, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %79 = icmp ne %struct.TYPE_9__* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %71
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  store %struct.TYPE_10__* %83, %struct.TYPE_10__** %7, align 8
  br label %84

84:                                               ; preds = %80, %71
  br label %85

85:                                               ; preds = %84, %70
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  ret %struct.TYPE_10__* %86
}

declare dso_local %struct.TYPE_9__* @shmap_string_vptr_add(i32*, i8*, %struct.TYPE_10__*) #1

declare dso_local i64 @dl_get_memory_used(...) #1

declare dso_local i8* @dl_strdup(i8*) #1

declare dso_local %struct.TYPE_10__* @qkey_malloc(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local %struct.TYPE_9__* @shmap_string_vptr_get(i32*, i8*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
