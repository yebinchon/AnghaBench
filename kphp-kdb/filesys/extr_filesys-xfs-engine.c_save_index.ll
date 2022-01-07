; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-xfs-engine.c_save_index.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-xfs-engine.c_save_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@last_snapshot_log_pos = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [81 x i8] c"skipping generation of new snapshot (snapshot for this position already exists)\0A\00", align 1
@engine_snapshot_replica = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"cannot write index: cannot compute its name\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"save_binlogpos returns error code %d.\0A\00", align 1
@work_dir = common dso_local global i32 0, align 4
@compression_level = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"tar_pack (%s, %s, %d) return error code %d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"cannot rename new index file from %s: %m\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @save_index() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* null, i8** %2, align 8
  %4 = call i64 (...) @log_cur_pos()
  %5 = load i64, i64* @last_snapshot_log_pos, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %67

9:                                                ; preds = %0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @engine_snapshot_replica, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @engine_snapshot_replica, align 8
  %14 = call i64 (...) @log_cur_pos()
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @engine_snapshot_replica, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @get_new_snapshot_name(%struct.TYPE_3__* %13, i64 %14, i32 %17)
  store i8* %18, i8** %2, align 8
  br label %19

19:                                               ; preds = %12, %9
  %20 = load i8*, i8** %2, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i8*, i8** %2, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 45
  br i1 %27, label %28, label %31

28:                                               ; preds = %22, %19
  %29 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %30 = call i32 @exit(i32 1) #3
  unreachable

31:                                               ; preds = %22
  %32 = call i32 (...) @save_binlogpos()
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32, i32* %3, align 4
  %37 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = call i32 @exit(i32 1) #3
  unreachable

39:                                               ; preds = %31
  %40 = load i8*, i8** %2, align 8
  %41 = load i32, i32* @work_dir, align 4
  %42 = load i32, i32* @compression_level, align 4
  %43 = call i32 @tar_pack(i8* %40, i32 %41, i32 %42)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = load i8*, i8** %2, align 8
  %48 = load i32, i32* @work_dir, align 4
  %49 = load i32, i32* @compression_level, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i8* %47, i32 %48, i32 %49, i32 %50)
  %52 = call i32 @exit(i32 1) #3
  unreachable

53:                                               ; preds = %39
  %54 = load i8*, i8** %2, align 8
  %55 = call i64 @rename_temporary_snapshot(i8* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load i8*, i8** %2, align 8
  %59 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* %58)
  %60 = load i8*, i8** %2, align 8
  %61 = call i32 @unlink(i8* %60)
  %62 = call i32 @exit(i32 1) #3
  unreachable

63:                                               ; preds = %53
  %64 = load i8*, i8** %2, align 8
  %65 = call i32 @print_snapshot_name(i8* %64)
  %66 = call i64 (...) @log_cur_pos()
  store i64 %66, i64* @last_snapshot_log_pos, align 8
  store i32 0, i32* %1, align 4
  br label %67

67:                                               ; preds = %63, %7
  %68 = load i32, i32* %1, align 4
  ret i32 %68
}

declare dso_local i64 @log_cur_pos(...) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i8* @get_new_snapshot_name(%struct.TYPE_3__*, i64, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @save_binlogpos(...) #1

declare dso_local i32 @tar_pack(i8*, i32, i32) #1

declare dso_local i64 @rename_temporary_snapshot(i8*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @print_snapshot_name(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
