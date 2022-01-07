; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-import-dump.c_process_kad_row.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-import-dump.c_process_kad_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"%d_%lld_%s\00", align 1
@source_server = common dso_local global i32 0, align 4
@I = common dso_local global i8** null, align 8
@kad_uid = common dso_local global i64 0, align 8
@S = common dso_local global i8** null, align 8
@kad_file = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%s.kad\00", align 1
@kad_print = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"%s.genre\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@kad_genre = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"%s.rate\00", align 1
@kad_bitrate = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"%s.album\00", align 1
@kad_album = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_kad_row() #0 {
  %1 = alloca [100 x i8], align 16
  %2 = alloca [200 x i8], align 16
  %3 = alloca [50 x i8], align 16
  %4 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %5 = load i32, i32* @source_server, align 4
  %6 = load i8**, i8*** @I, align 8
  %7 = load i64, i64* @kad_uid, align 8
  %8 = getelementptr inbounds i8*, i8** %6, i64 %7
  %9 = load i8*, i8** %8, align 8
  %10 = load i8**, i8*** @S, align 8
  %11 = load i64, i64* @kad_file, align 8
  %12 = getelementptr inbounds i8*, i8** %10, i64 %11
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %4, i32 99, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %5, i8* %9, i8* %13)
  %15 = getelementptr inbounds [200 x i8], [200 x i8]* %2, i64 0, i64 0
  %16 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %17 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %15, i32 199, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  %18 = getelementptr inbounds [200 x i8], [200 x i8]* %2, i64 0, i64 0
  %19 = load i8**, i8*** @S, align 8
  %20 = load i64, i64* @kad_print, align 8
  %21 = getelementptr inbounds i8*, i8** %19, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @do_store(i8* %18, i8* %22)
  %24 = getelementptr inbounds [200 x i8], [200 x i8]* %2, i64 0, i64 0
  %25 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %26 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %24, i32 199, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %25)
  %27 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %28 = load i8**, i8*** @I, align 8
  %29 = load i64, i64* @kad_genre, align 8
  %30 = getelementptr inbounds i8*, i8** %28, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %27, i32 49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %31)
  %33 = getelementptr inbounds [200 x i8], [200 x i8]* %2, i64 0, i64 0
  %34 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %35 = call i32 @do_store(i8* %33, i8* %34)
  %36 = getelementptr inbounds [200 x i8], [200 x i8]* %2, i64 0, i64 0
  %37 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %38 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %36, i32 199, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %37)
  %39 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %40 = load i8**, i8*** @I, align 8
  %41 = load i64, i64* @kad_bitrate, align 8
  %42 = getelementptr inbounds i8*, i8** %40, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %39, i32 49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %43)
  %45 = getelementptr inbounds [200 x i8], [200 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %47 = call i32 @do_store(i8* %45, i8* %46)
  %48 = getelementptr inbounds [200 x i8], [200 x i8]* %2, i64 0, i64 0
  %49 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %50 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %48, i32 199, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %49)
  %51 = getelementptr inbounds [200 x i8], [200 x i8]* %2, i64 0, i64 0
  %52 = load i8**, i8*** @S, align 8
  %53 = load i64, i64* @kad_album, align 8
  %54 = getelementptr inbounds i8*, i8** %52, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @do_store(i8* %51, i8* %55)
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @do_store(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
