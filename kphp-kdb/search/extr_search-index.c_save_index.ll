; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-index.c_save_index.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-index.c_save_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@engine_snapshot_replica = common dso_local global %struct.TYPE_3__* null, align 8
@newidxname = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"cannot write index: cannot compute its name\0A\00", align 1
@fd = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"cannot rename new index file from %s: %m\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @save_index() #0 {
  %1 = load %struct.TYPE_3__*, %struct.TYPE_3__** @engine_snapshot_replica, align 8
  %2 = icmp ne %struct.TYPE_3__* %1, null
  br i1 %2, label %3, label %10

3:                                                ; preds = %0
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** @engine_snapshot_replica, align 8
  %5 = call i32 (...) @log_cur_pos()
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @engine_snapshot_replica, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i8* @get_new_snapshot_name(%struct.TYPE_3__* %4, i32 %5, i32 %8)
  store i8* %9, i8** @newidxname, align 8
  br label %10

10:                                               ; preds = %3, %0
  %11 = load i8*, i8** @newidxname, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load i8*, i8** @newidxname, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 45
  br i1 %18, label %19, label %23

19:                                               ; preds = %13, %10
  %20 = load i32, i32* @stderr, align 4
  %21 = call i32 @fprintf(i32 %20, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @exit(i32 1) #3
  unreachable

23:                                               ; preds = %13
  %24 = load i8*, i8** @newidxname, align 8
  %25 = call i32 @open_file(i32 0, i8* %24, i32 1)
  %26 = load i32*, i32** @fd, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @set_read_file(i32 %28)
  %30 = load i32*, i32** @fd, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @set_write_file(i32 %32)
  %34 = call i32 (...) @sort_items()
  %35 = call i32 (...) @write_header0()
  %36 = call i32 (...) @write_text()
  %37 = call i32 (...) @build_pairs_from_text()
  %38 = call i32 (...) @build_word_lists()
  %39 = call i32 (...) @write_header1()
  %40 = call i32 (...) @flushout()
  %41 = load i32*, i32** @fd, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @fsync(i32 %43)
  %45 = icmp sge i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load i32*, i32** @fd, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @close(i32 %50)
  %52 = icmp sge i64 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load i8*, i8** @newidxname, align 8
  %56 = call i64 @rename_temporary_snapshot(i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %23
  %59 = load i8*, i8** @newidxname, align 8
  %60 = call i32 @kprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  %61 = load i8*, i8** @newidxname, align 8
  %62 = call i32 @unlink(i8* %61)
  %63 = call i32 @exit(i32 1) #3
  unreachable

64:                                               ; preds = %23
  %65 = load i8*, i8** @newidxname, align 8
  %66 = call i32 @print_snapshot_name(i8* %65)
  ret void
}

declare dso_local i8* @get_new_snapshot_name(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @log_cur_pos(...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @open_file(i32, i8*, i32) #1

declare dso_local i32 @set_read_file(i32) #1

declare dso_local i32 @set_write_file(i32) #1

declare dso_local i32 @sort_items(...) #1

declare dso_local i32 @write_header0(...) #1

declare dso_local i32 @write_text(...) #1

declare dso_local i32 @build_pairs_from_text(...) #1

declare dso_local i32 @build_word_lists(...) #1

declare dso_local i32 @write_header1(...) #1

declare dso_local i32 @flushout(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @fsync(i32) #1

declare dso_local i64 @close(i32) #1

declare dso_local i64 @rename_temporary_snapshot(i8*) #1

declare dso_local i32 @kprintf(i8*, i8*) #1

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
