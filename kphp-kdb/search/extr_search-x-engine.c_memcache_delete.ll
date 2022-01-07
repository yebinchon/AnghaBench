; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-engine.c_memcache_delete.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-engine.c_memcache_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"delete \22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"item%d_%d \00", align 1
@delete_queries = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"delete_item (%d,%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"delete: item_id=%lld\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"item%d \00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"DELETED\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"NOT_FOUND\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_delete(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.connection*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i64, i64* @verbosity, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* @stderr, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %14)
  br label %16

16:                                               ; preds = %12, %3
  store i32 0, i32* %9, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  switch i32 %19, label %75 [
    i32 105, label %20
  ]

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %7, i32* %8)
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %56

24:                                               ; preds = %20
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %56

27:                                               ; preds = %24
  %28 = load i32, i32* %8, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %56

30:                                               ; preds = %27
  %31 = load i32, i32* @delete_queries, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @delete_queries, align 4
  %33 = load i64, i64* @verbosity, align 8
  %34 = icmp sge i64 %33, 1
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i32, i32* @stderr, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %35, %30
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = shl i64 %42, 32
  %44 = load i32, i32* %7, align 4
  %45 = zext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = call i32 (i32, i8*, i64, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %46)
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = shl i64 %49, 32
  %51 = load i32, i32* %7, align 4
  %52 = zext i32 %51 to i64
  %53 = add nsw i64 %50, %52
  %54 = trunc i64 %53 to i32
  %55 = call i32 @do_delete_item(i32 %54)
  store i32 %55, i32* %9, align 4
  br label %74

56:                                               ; preds = %27, %24, %20
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32* %8)
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  %61 = load i32, i32* %8, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %60
  %64 = load i32, i32* @delete_queries, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* @delete_queries, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 (i32, i8*, i64, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 0, i32 %66)
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = call i32 (i32, i8*, i64, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %69)
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @do_delete_item(i32 %71)
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %63, %60, %56
  br label %74

74:                                               ; preds = %73, %40
  br label %75

75:                                               ; preds = %16, %74
  %76 = load i32, i32* %9, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load %struct.connection*, %struct.connection** %4, align 8
  %80 = getelementptr inbounds %struct.connection, %struct.connection* %79, i32 0, i32 0
  %81 = call i32 @write_out(i32* %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 9)
  br label %86

82:                                               ; preds = %75
  %83 = load %struct.connection*, %struct.connection** %4, align 8
  %84 = getelementptr inbounds %struct.connection, %struct.connection* %83, i32 0, i32 0
  %85 = call i32 @write_out(i32* %84, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 11)
  br label %86

86:                                               ; preds = %82, %78
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, ...) #1

declare dso_local i32 @vkprintf(i32, i8*, i64, ...) #1

declare dso_local i32 @do_delete_item(i32) #1

declare dso_local i32 @write_out(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
