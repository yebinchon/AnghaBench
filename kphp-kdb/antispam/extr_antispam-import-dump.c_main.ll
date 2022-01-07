; ModuleID = '/home/carl/AnghaBench/kphp-kdb/antispam/extr_antispam-import-dump.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/antispam/extr_antispam-import-dump.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@progname = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"hvu:B:p:c\00", align 1
@verbosity = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@username = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%lld%c\00", align 1
@max_binlog_size = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@binlogname = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@Binlog = common dso_local global i32 0, align 4
@log_readto_pos = common dso_local global i64 0, align 8
@SIGINT = common dso_local global i32 0, align 4
@sigint_handler = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@sigterm_handler = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [78 x i8] c"read: %d records read, %d processed\0Awritten: log_pos=%lld, used_z_memory=%ld\0A\00", align 1
@records_read = common dso_local global i32 0, align 4
@records_processed = common dso_local global i32 0, align 4
@log_pos = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [55 x i8] c"Memory lost: z_malloc = $3%ld$^, dl_malloc = $3%lld$^\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** @progname, align 8
  store i64 0, i64* %7, align 8
  store i8 0, i8* %8, align 1
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %9, align 4
  store i8* null, i8** %10, align 8
  br label %15

15:                                               ; preds = %69, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @getopt(i32 %16, i8** %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %6, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %70

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %69 [
    i32 104, label %22
    i32 118, label %24
    i32 117, label %27
    i32 66, label %29
    i32 112, label %65
    i32 99, label %67
  ]

22:                                               ; preds = %20
  %23 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %128

24:                                               ; preds = %20
  %25 = load i32, i32* @verbosity, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @verbosity, align 4
  br label %69

27:                                               ; preds = %20
  %28 = load i8*, i8** @optarg, align 8
  store i8* %28, i8** @username, align 8
  br label %69

29:                                               ; preds = %20
  %30 = load i8*, i8** @optarg, align 8
  %31 = call i32 @sscanf(i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64* %7, i8* %8)
  %32 = icmp sge i32 %31, 1
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i8, i8* %8, align 1
  %36 = sext i8 %35 to i32
  %37 = or i32 %36, 32
  switch i32 %37, label %50 [
    i32 107, label %38
    i32 109, label %41
    i32 103, label %44
    i32 116, label %47
  ]

38:                                               ; preds = %29
  %39 = load i64, i64* %7, align 8
  %40 = shl i64 %39, 10
  store i64 %40, i64* %7, align 8
  br label %56

41:                                               ; preds = %29
  %42 = load i64, i64* %7, align 8
  %43 = shl i64 %42, 20
  store i64 %43, i64* %7, align 8
  br label %56

44:                                               ; preds = %29
  %45 = load i64, i64* %7, align 8
  %46 = shl i64 %45, 30
  store i64 %46, i64* %7, align 8
  br label %56

47:                                               ; preds = %29
  %48 = load i64, i64* %7, align 8
  %49 = shl i64 %48, 40
  store i64 %49, i64* %7, align 8
  br label %56

50:                                               ; preds = %29
  %51 = load i8, i8* %8, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 32
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  br label %56

56:                                               ; preds = %50, %47, %44, %41, %38
  %57 = load i64, i64* %7, align 8
  %58 = icmp sge i64 %57, 1024
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load i64, i64* %7, align 8
  %61 = icmp slt i64 %60, 1152921504606846976
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i64, i64* %7, align 8
  store i64 %63, i64* @max_binlog_size, align 8
  br label %64

64:                                               ; preds = %62, %59, %56
  br label %69

65:                                               ; preds = %20
  %66 = load i8*, i8** @optarg, align 8
  store i8* %66, i8** %10, align 8
  br label %69

67:                                               ; preds = %20
  %68 = load i32, i32* @TRUE, align 4
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %20, %67, %65, %64, %27, %24
  br label %15

70:                                               ; preds = %15
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @optind, align 4
  %73 = add nsw i32 %72, 1
  %74 = icmp ne i32 %71, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %128

77:                                               ; preds = %70
  %78 = call i32 (...) @antispam_change_user()
  %79 = load i8**, i8*** %5, align 8
  %80 = load i32, i32* @optind, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** @binlogname, align 8
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %77
  %87 = call i32 (...) @clean_binlog_file()
  br label %88

88:                                               ; preds = %86, %77
  %89 = call i32 @antispam_engine_common_init_part(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %90 = load i32, i32* @Binlog, align 4
  %91 = call i64 @append_to_binlog(i32 %90)
  %92 = load i64, i64* @log_readto_pos, align 8
  %93 = icmp eq i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  %96 = load i32, i32* @SIGINT, align 4
  %97 = load i32, i32* @sigint_handler, align 4
  %98 = call i32 @signal(i32 %96, i32 %97)
  %99 = load i32, i32* @SIGTERM, align 4
  %100 = load i32, i32* @sigterm_handler, align 4
  %101 = call i32 @signal(i32 %99, i32 %100)
  %102 = load i8*, i8** %10, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %88
  %105 = load i8*, i8** %10, align 8
  %106 = call i32 @import_patterns_dump(i8* %105)
  br label %107

107:                                              ; preds = %104, %88
  %108 = call i32 @flush_binlog_forced(i32 1)
  %109 = load i32, i32* @verbosity, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %107
  %112 = load i32, i32* @stderr, align 4
  %113 = load i32, i32* @records_read, align 4
  %114 = load i32, i32* @records_processed, align 4
  %115 = load i64, i64* @log_pos, align 8
  %116 = call i32 (...) @dyn_used_memory()
  %117 = call i32 @fprintf(i32 %112, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.3, i64 0, i64 0), i32 %113, i32 %114, i64 %115, i32 %116)
  br label %118

118:                                              ; preds = %111, %107
  %119 = call i32 (...) @finish_all()
  %120 = load i32, i32* @verbosity, align 4
  %121 = icmp sgt i32 %120, 2
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = call i32 (...) @dyn_used_memory()
  %124 = call i32 (...) @dl_get_memory_used()
  %125 = call i32 @st_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %122, %118
  %127 = call i32 (...) @mt_test()
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %126, %75, %22
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*, i8*) #1

declare dso_local i32 @antispam_change_user(...) #1

declare dso_local i32 @clean_binlog_file(...) #1

declare dso_local i32 @antispam_engine_common_init_part(i8*) #1

declare dso_local i64 @append_to_binlog(i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @import_patterns_dump(i8*) #1

declare dso_local i32 @flush_binlog_forced(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i64, i32) #1

declare dso_local i32 @dyn_used_memory(...) #1

declare dso_local i32 @finish_all(...) #1

declare dso_local i32 @st_printf(i8*, i32, i32) #1

declare dso_local i32 @dl_get_memory_used(...) #1

declare dso_local i32 @mt_test(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
