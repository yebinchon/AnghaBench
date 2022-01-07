; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_csv.c_print_csv_summary.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_csv.c_print_csv_summary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i8* }

@DATE_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%Y-%m-%d %H:%M:%S %z\00", align 1
@now_tm = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"\22%d\22,,\22%s\22,,,,,,,,\22%s\22,\22%s\22\0D\0A\00", align 1
@GENER_ID = common dso_local global i32 0, align 4
@OVERALL_DATETIME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"\22%d\22,,\22%s\22,,,,,,,,\22%d\22,\22%s\22\0D\0A\00", align 1
@OVERALL_REQ = common dso_local global i32 0, align 4
@OVERALL_VALID = common dso_local global i32 0, align 4
@OVERALL_FAILED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"\22%d\22,,\22%s\22,,,,,,,,\22%lld\22,\22%s\22\0D\0A\00", align 1
@end_proc = common dso_local global i64 0, align 8
@start_proc = common dso_local global i64 0, align 8
@OVERALL_GENTIME = common dso_local global i32 0, align 4
@VISITORS = common dso_local global i32 0, align 4
@OVERALL_VISITORS = common dso_local global i32 0, align 4
@REQUESTS = common dso_local global i32 0, align 4
@OVERALL_FILES = common dso_local global i32 0, align 4
@OVERALL_EXCL_HITS = common dso_local global i32 0, align 4
@REFERRERS = common dso_local global i32 0, align 4
@OVERALL_REF = common dso_local global i32 0, align 4
@NOT_FOUND = common dso_local global i32 0, align 4
@OVERALL_NOTFOUND = common dso_local global i32 0, align 4
@REQUESTS_STATIC = common dso_local global i32 0, align 4
@OVERALL_STATIC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"\22%d\22,,\22%s\22,,,,,,,,\22%jd\22,\22%s\22\0D\0A\00", align 1
@OVERALL_LOGSIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"\22%d\22,,\22%s\22,,,,,,,,\22%llu\22,\22%s\22\0D\0A\00", align 1
@OVERALL_BANDWIDTH = common dso_local global i32 0, align 4
@OVERALL_LOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*)* @print_csv_summary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_csv_summary(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %12 = load i32, i32* @DATE_TIME, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  store i8* null, i8** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i64 0, i64* %11, align 8
  %16 = call i32 (...) @generate_time()
  %17 = load i32, i32* @DATE_TIME, align 4
  %18 = load i32, i32* @now_tm, align 4
  %19 = call i32 @strftime(i8* %15, i32 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* @GENER_ID, align 4
  %25 = load i32, i32* @OVERALL_DATETIME, align 4
  %26 = call i32 (i32*, i8*, i32, i32, ...) @fprintf(i32* %20, i8* %21, i32 %22, i32 %24, i8* %15, i32 %25)
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %10, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* @GENER_ID, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @OVERALL_REQ, align 4
  %37 = call i32 (i32*, i8*, i32, i32, ...) @fprintf(i32* %30, i8* %31, i32 %32, i32 %34, i32 %35, i32 %36)
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %10, align 4
  %41 = load i32*, i32** %3, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* @GENER_ID, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @OVERALL_VALID, align 4
  %48 = call i32 (i32*, i8*, i32, i32, ...) @fprintf(i32* %41, i8* %42, i32 %43, i32 %45, i32 %46, i32 %47)
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %10, align 4
  %52 = load i32*, i32** %3, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* @GENER_ID, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @OVERALL_FAILED, align 4
  %59 = call i32 (i32*, i8*, i32, i32, ...) @fprintf(i32* %52, i8* %53, i32 %54, i32 %56, i32 %57, i32 %58)
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  %60 = load i64, i64* @end_proc, align 8
  %61 = load i64, i64* @start_proc, align 8
  %62 = sub nsw i64 %60, %61
  store i64 %62, i64* %11, align 8
  %63 = load i32*, i32** %3, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* @GENER_ID, align 4
  %68 = load i64, i64* %11, align 8
  %69 = load i32, i32* @OVERALL_GENTIME, align 4
  %70 = call i32 (i32*, i8*, i32, i32, ...) @fprintf(i32* %63, i8* %64, i32 %65, i32 %67, i64 %68, i32 %69)
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  %71 = load i32, i32* @VISITORS, align 4
  %72 = call i32 @ht_get_size_uniqmap(i32 %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32*, i32** %3, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* @GENER_ID, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @OVERALL_VISITORS, align 4
  %80 = call i32 (i32*, i8*, i32, i32, ...) @fprintf(i32* %73, i8* %74, i32 %75, i32 %77, i32 %78, i32 %79)
  %81 = load i32, i32* @REQUESTS, align 4
  %82 = call i32 @ht_get_size_datamap(i32 %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32*, i32** %3, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* @GENER_ID, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @OVERALL_FILES, align 4
  %90 = call i32 (i32*, i8*, i32, i32, ...) @fprintf(i32* %83, i8* %84, i32 %85, i32 %87, i32 %88, i32 %89)
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %10, align 4
  %94 = load i32*, i32** %3, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* @GENER_ID, align 4
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* @OVERALL_EXCL_HITS, align 4
  %101 = call i32 (i32*, i8*, i32, i32, ...) @fprintf(i32* %94, i8* %95, i32 %96, i32 %98, i32 %99, i32 %100)
  %102 = load i32, i32* @REFERRERS, align 4
  %103 = call i32 @ht_get_size_datamap(i32 %102)
  store i32 %103, i32* %10, align 4
  %104 = load i32*, i32** %3, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* @GENER_ID, align 4
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* @OVERALL_REF, align 4
  %111 = call i32 (i32*, i8*, i32, i32, ...) @fprintf(i32* %104, i8* %105, i32 %106, i32 %108, i32 %109, i32 %110)
  %112 = load i32, i32* @NOT_FOUND, align 4
  %113 = call i32 @ht_get_size_datamap(i32 %112)
  store i32 %113, i32* %10, align 4
  %114 = load i32*, i32** %3, align 8
  %115 = load i8*, i8** %8, align 8
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* @GENER_ID, align 4
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* @OVERALL_NOTFOUND, align 4
  %121 = call i32 (i32*, i8*, i32, i32, ...) @fprintf(i32* %114, i8* %115, i32 %116, i32 %118, i32 %119, i32 %120)
  %122 = load i32, i32* @REQUESTS_STATIC, align 4
  %123 = call i32 @ht_get_size_datamap(i32 %122)
  store i32 %123, i32* %10, align 4
  %124 = load i32*, i32** %3, align 8
  %125 = load i8*, i8** %8, align 8
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* @GENER_ID, align 4
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* @OVERALL_STATIC, align 4
  %131 = call i32 (i32*, i8*, i32, i32, ...) @fprintf(i32* %124, i8* %125, i32 %126, i32 %128, i32 %129, i32 %130)
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  %132 = load i32*, i32** %3, align 8
  %133 = load i8*, i8** %8, align 8
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* @GENER_ID, align 4
  %137 = call i64 (...) @get_log_sizes()
  %138 = inttoptr i64 %137 to i8*
  %139 = load i32, i32* @OVERALL_LOGSIZE, align 4
  %140 = call i32 (i32*, i8*, i32, i32, ...) @fprintf(i32* %132, i8* %133, i32 %134, i32 %136, i8* %138, i32 %139)
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  %141 = load i32*, i32** %3, align 8
  %142 = load i8*, i8** %8, align 8
  %143 = load i32, i32* %9, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* @GENER_ID, align 4
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 4
  %148 = load i8*, i8** %147, align 8
  %149 = load i32, i32* @OVERALL_BANDWIDTH, align 4
  %150 = call i32 (i32*, i8*, i32, i32, ...) @fprintf(i32* %141, i8* %142, i32 %143, i32 %145, i8* %148, i32 %149)
  %151 = call i8* @get_log_source_str(i32 0)
  store i8* %151, i8** %7, align 8
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  %152 = load i32*, i32** %3, align 8
  %153 = load i8*, i8** %8, align 8
  %154 = load i32, i32* %9, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %9, align 4
  %156 = load i32, i32* @GENER_ID, align 4
  %157 = load i8*, i8** %7, align 8
  %158 = load i32, i32* @OVERALL_LOG, align 4
  %159 = call i32 (i32*, i8*, i32, i32, ...) @fprintf(i32* %152, i8* %153, i32 %154, i32 %156, i8* %157, i32 %158)
  %160 = load i8*, i8** %7, align 8
  %161 = call i32 @free(i8* %160)
  %162 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %162)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @generate_time(...) #2

declare dso_local i32 @strftime(i8*, i32, i8*, i32) #2

declare dso_local i32 @fprintf(i32*, i8*, i32, i32, ...) #2

declare dso_local i32 @ht_get_size_uniqmap(i32) #2

declare dso_local i32 @ht_get_size_datamap(i32) #2

declare dso_local i64 @get_log_sizes(...) #2

declare dso_local i8* @get_log_source_str(i32) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
