; ModuleID = '/home/carl/AnghaBench/kphp-kdb/memcached/extr_memcached-engine.c_memcache_delete.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/memcached/extr_memcached-engine.c_memcache_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"memcache_delete: key='%s'\0A\00", align 1
@cmd_delete = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"DELETED\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"NOT_FOUND\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_delete(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* @verbosity, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* @stderr, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %14)
  br label %16

16:                                               ; preds = %12, %3
  %17 = load i32, i32* @cmd_delete, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @cmd_delete, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @get_hash(i8* %19, i32 %20)
  store i64 %21, i64* %8, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @get_entry(i8* %22, i32 %23, i64 %24)
  store i32 %25, i32* %9, align 4
  %26 = call i32 @ADD_OPER(i32 3)
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %35

29:                                               ; preds = %16
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @del_entry(i32 %30)
  %32 = load %struct.connection*, %struct.connection** %5, align 8
  %33 = getelementptr inbounds %struct.connection, %struct.connection* %32, i32 0, i32 0
  %34 = call i32 @write_out(i32* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 9)
  store i32 0, i32* %4, align 4
  br label %39

35:                                               ; preds = %16
  %36 = load %struct.connection*, %struct.connection** %5, align 8
  %37 = getelementptr inbounds %struct.connection, %struct.connection* %36, i32 0, i32 0
  %38 = call i32 @write_out(i32* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 11)
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %35, %29
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i64 @get_hash(i8*, i32) #1

declare dso_local i32 @get_entry(i8*, i32, i64) #1

declare dso_local i32 @ADD_OPER(i32) #1

declare dso_local i32 @del_entry(i32) #1

declare dso_local i32 @write_out(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
