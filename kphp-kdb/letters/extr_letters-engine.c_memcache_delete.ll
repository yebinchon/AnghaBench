; ModuleID = '/home/carl/AnghaBench/kphp-kdb/letters/extr_letters-engine.c_memcache_delete.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/letters/extr_letters-engine.c_memcache_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@INIT = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"memcache_delete: key='%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"letters_by_task_id\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"DELETED\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"NOT_FOUND\0D\0A\00", align 1
@delete = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"letter\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_delete(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @INIT, align 4
  %13 = load i32, i32* @verbosity, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* @stderr, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %15, %3
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @eat_at(i8* %20, i32 %21, i8** %8, i32* %9)
  %23 = load i32, i32* %9, align 4
  %24 = icmp sge i32 %23, 18
  br i1 %24, label %25, label %49

25:                                               ; preds = %19
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @strncmp(i8* %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 18)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %49, label %29

29:                                               ; preds = %25
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 18
  %32 = call i32 @sscanf(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64* %10)
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load i64, i64* %10, align 8
  %36 = call i64 @delete_letters_by_task_id(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load %struct.connection*, %struct.connection** %5, align 8
  %40 = getelementptr inbounds %struct.connection, %struct.connection* %39, i32 0, i32 0
  %41 = call i32 @write_out(i32* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 9)
  br label %46

42:                                               ; preds = %34, %29
  %43 = load %struct.connection*, %struct.connection** %5, align 8
  %44 = getelementptr inbounds %struct.connection, %struct.connection* %43, i32 0, i32 0
  %45 = call i32 @write_out(i32* %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 11)
  br label %46

46:                                               ; preds = %42, %38
  %47 = load i32, i32* @delete, align 4
  %48 = call i32 @RETURN(i32 %47, i32 0)
  br label %49

49:                                               ; preds = %46, %25, %19
  %50 = load i32, i32* %9, align 4
  %51 = icmp sge i32 %50, 6
  br i1 %51, label %52, label %76

52:                                               ; preds = %49
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @strncmp(i8* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 6)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %76, label %56

56:                                               ; preds = %52
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 6
  %59 = call i32 @sscanf(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64* %11)
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load i64, i64* %11, align 8
  %63 = call i64 @delete_letter(i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load %struct.connection*, %struct.connection** %5, align 8
  %67 = getelementptr inbounds %struct.connection, %struct.connection* %66, i32 0, i32 0
  %68 = call i32 @write_out(i32* %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 9)
  br label %73

69:                                               ; preds = %61, %56
  %70 = load %struct.connection*, %struct.connection** %5, align 8
  %71 = getelementptr inbounds %struct.connection, %struct.connection* %70, i32 0, i32 0
  %72 = call i32 @write_out(i32* %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 11)
  br label %73

73:                                               ; preds = %69, %65
  %74 = load i32, i32* @delete, align 4
  %75 = call i32 @RETURN(i32 %74, i32 0)
  br label %76

76:                                               ; preds = %73, %52, %49
  %77 = load %struct.connection*, %struct.connection** %5, align 8
  %78 = getelementptr inbounds %struct.connection, %struct.connection* %77, i32 0, i32 0
  %79 = call i32 @write_out(i32* %78, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 11)
  %80 = load i32, i32* @delete, align 4
  %81 = call i32 @RETURN(i32 %80, i32 0)
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @eat_at(i8*, i32, i8**, i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*) #1

declare dso_local i64 @delete_letters_by_task_id(i64) #1

declare dso_local i32 @write_out(i32*, i8*, i32) #1

declare dso_local i32 @RETURN(i32, i32) #1

declare dso_local i64 @delete_letter(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
