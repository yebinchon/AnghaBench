; ModuleID = '/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_do_reload_config.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_do_reload_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@need_reload_config = common dso_local global i64 0, align 8
@config_filename = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@fd = common dso_local global i64* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"cannot re-read config file %s: %m\0A\00", align 1
@verbosity = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"/etc/hosts changed, reloaded\0A\00", align 1
@db_hash_new = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [70 x i8] c"error while re-reading config file %s, new configuration NOT applied\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"fatal error while re-reading config file %s\0A\00", align 1
@db_hash = common dso_local global i32 0, align 4
@now = common dso_local global i32 0, align 4
@config_reload_time = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [70 x i8] c"configuration file %s re-read successfully, new configuration active\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_reload_config(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 0, i64* @need_reload_config, align 8
  %6 = load i8*, i8** @config_filename, align 8
  %7 = load i32, i32* @O_RDONLY, align 4
  %8 = call i64 @open(i8* %6, i32 %7)
  %9 = load i64*, i64** @fd, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  store i64 %8, i64* %10, align 8
  %11 = load i64*, i64** @fd, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @stderr, align 4
  %17 = load i8*, i8** @config_filename, align 8
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %17)
  store i32 -3, i32* %2, align 4
  br label %90

19:                                               ; preds = %1
  %20 = call i32 (...) @kdb_load_hosts()
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i64, i64* @verbosity, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @stderr, align 4
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %23, %19
  %30 = load i32, i32* @db_hash_new, align 4
  %31 = call i32 @parse_config(i32 %30, i32 4)
  store i32 %31, i32* %4, align 4
  %32 = load i64*, i64** @fd, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @close(i64 %34)
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %29
  %39 = load i32, i32* @db_hash_new, align 4
  %40 = call i32 @clear_db_hash_table(i32 %39)
  %41 = load i32, i32* @stderr, align 4
  %42 = load i8*, i8** @config_filename, align 8
  %43 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i8* %42)
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %90

45:                                               ; preds = %29
  %46 = load i32, i32* @db_hash_new, align 4
  %47 = call i32 @parse_config(i32 %46, i32 3)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load i32, i32* @db_hash_new, align 4
  %52 = call i32 @clear_db_hash_table(i32 %51)
  %53 = load i32, i32* @stderr, align 4
  %54 = load i8*, i8** @config_filename, align 8
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i8* %54)
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %90

57:                                               ; preds = %45
  %58 = load i32, i32* @db_hash_new, align 4
  %59 = call i32 @parse_config(i32 %58, i32 1)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %57
  %63 = load i32, i32* @db_hash_new, align 4
  %64 = call i32 @clear_db_hash_table(i32 %63)
  %65 = load i32, i32* @stderr, align 4
  %66 = load i8*, i8** @config_filename, align 8
  %67 = call i32 (i32, i8*, ...) @fprintf(i32 %65, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i8* %66)
  %68 = load i32, i32* %4, align 4
  %69 = sub nsw i32 0, %68
  %70 = call i32 @exit(i32 %69) #3
  unreachable

71:                                               ; preds = %57
  %72 = load i32, i32* @db_hash, align 4
  %73 = call i32 @clear_db_hash_table(i32 %72)
  %74 = load i32, i32* @db_hash, align 4
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* @db_hash_new, align 4
  store i32 %75, i32* @db_hash, align 4
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* @db_hash_new, align 4
  %77 = load i32, i32* %3, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = call i32 (...) @create_all_outbound_connections()
  br label %81

81:                                               ; preds = %79, %71
  %82 = load i32, i32* @now, align 4
  store i32 %82, i32* @config_reload_time, align 4
  %83 = load i64, i64* @verbosity, align 8
  %84 = icmp sgt i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load i32, i32* @stderr, align 4
  %87 = load i8*, i8** @config_filename, align 8
  %88 = call i32 (i32, i8*, ...) @fprintf(i32 %86, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i64 0, i64 0), i8* %87)
  br label %89

89:                                               ; preds = %85, %81
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %89, %50, %38, %15
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i64 @open(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @kdb_load_hosts(...) #1

declare dso_local i32 @parse_config(i32, i32) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @clear_db_hash_table(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @create_all_outbound_connections(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
