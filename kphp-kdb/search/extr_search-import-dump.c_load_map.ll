; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-import-dump.c_load_map.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-import-dump.c_load_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@groups_fname = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"warning: no map file specified\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"fatal: no map file specified\0A\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@map_fd = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"cannot open map file %s: %m\00", align 1
@Map = common dso_local global i32 0, align 4
@MAP_SIZE = common dso_local global i32 0, align 4
@map_size = common dso_local global i64 0, align 8
@verbosity = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"read %d bytes from map file %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_map(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i8*, i8** @groups_fname, align 8
  %4 = icmp ne i8* %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = load i32, i32* @stderr, align 4
  %10 = call i32 (i32, i8*, ...) @fprintf(i32 %9, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %15

11:                                               ; preds = %5
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @exit(i32 2) #3
  unreachable

15:                                               ; preds = %8
  br label %49

16:                                               ; preds = %1
  %17 = load i8*, i8** @groups_fname, align 8
  %18 = load i32, i32* @O_RDONLY, align 4
  %19 = call i64 @open(i8* %17, i32 %18)
  store i64 %19, i64* @map_fd, align 8
  %20 = load i64, i64* @map_fd, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  %23 = load i32, i32* @stderr, align 4
  %24 = load i8*, i8** @groups_fname, align 8
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %24)
  %26 = load i32, i32* %2, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = call i32 @exit(i32 2) #3
  unreachable

30:                                               ; preds = %22
  br label %49

31:                                               ; preds = %16
  %32 = load i64, i64* @map_fd, align 8
  %33 = load i32, i32* @Map, align 4
  %34 = load i32, i32* @MAP_SIZE, align 4
  %35 = call i64 @read(i64 %32, i32 %33, i32 %34)
  store i64 %35, i64* @map_size, align 8
  %36 = load i64, i64* @map_fd, align 8
  %37 = call i32 @close(i64 %36)
  %38 = load i64, i64* @map_size, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  store i64 0, i64* @map_size, align 8
  br label %41

41:                                               ; preds = %40, %31
  %42 = load i64, i64* @verbosity, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i32, i32* @stderr, align 4
  %46 = load i64, i64* @map_size, align 8
  %47 = load i8*, i8** @groups_fname, align 8
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %46, i8* %47)
  br label %49

49:                                               ; preds = %15, %30, %44, %41
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @open(i8*, i32) #1

declare dso_local i64 @read(i64, i32, i32) #1

declare dso_local i32 @close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
