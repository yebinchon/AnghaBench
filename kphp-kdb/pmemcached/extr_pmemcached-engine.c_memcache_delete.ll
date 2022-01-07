; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-engine.c_memcache_delete.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-engine.c_memcache_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32 }

@binlog_disabled = common dso_local global i32 0, align 4
@protected_mode = common dso_local global i64 0, align 8
@C_INTIMEOUT = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"memcache_delete: key='%s'\0A\00", align 1
@cmd_delete = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"NOT_FOUND\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"DELETED\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_delete(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @binlog_disabled, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %63

12:                                               ; preds = %3
  %13 = load i64, i64* @protected_mode, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %63

16:                                               ; preds = %12
  %17 = load i32, i32* @C_INTIMEOUT, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.connection*, %struct.connection** %5, align 8
  %20 = getelementptr inbounds %struct.connection, %struct.connection* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* @verbosity, align 4
  %24 = icmp sge i32 %23, 3
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load i32, i32* @stderr, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @fprintf(i32 %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %25, %16
  %30 = load i32, i32* @cmd_delete, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @cmd_delete, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @do_pmemcached_preload(i8* %32, i32 %33, i32 1)
  %35 = icmp eq i32 %34, -2
  br i1 %35, label %36, label %45

36:                                               ; preds = %29
  %37 = load %struct.connection*, %struct.connection** %5, align 8
  %38 = call i32 @memcache_wait(%struct.connection* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load %struct.connection*, %struct.connection** %5, align 8
  %42 = getelementptr inbounds %struct.connection, %struct.connection* %41, i32 0, i32 0
  %43 = call i32 @write_out(i32* %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 11)
  br label %44

44:                                               ; preds = %40, %36
  store i32 0, i32* %4, align 4
  br label %63

45:                                               ; preds = %29
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @do_pmemcached_delete(i8* %46, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, -2
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, -1
  br i1 %54, label %55, label %59

55:                                               ; preds = %45
  %56 = load %struct.connection*, %struct.connection** %5, align 8
  %57 = getelementptr inbounds %struct.connection, %struct.connection* %56, i32 0, i32 0
  %58 = call i32 @write_out(i32* %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 9)
  store i32 0, i32* %4, align 4
  br label %63

59:                                               ; preds = %45
  %60 = load %struct.connection*, %struct.connection** %5, align 8
  %61 = getelementptr inbounds %struct.connection, %struct.connection* %60, i32 0, i32 0
  %62 = call i32 @write_out(i32* %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 11)
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %59, %55, %44, %15, %11
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @do_pmemcached_preload(i8*, i32, i32) #1

declare dso_local i32 @memcache_wait(%struct.connection*) #1

declare dso_local i32 @write_out(i32*, i8*, i32) #1

declare dso_local i32 @do_pmemcached_delete(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
