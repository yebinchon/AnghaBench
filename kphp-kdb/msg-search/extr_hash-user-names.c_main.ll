; ModuleID = '/home/carl/AnghaBench/kphp-kdb/msg-search/extr_hash-user-names.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/msg-search/extr_hash-user-names.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"hv\00", align 1
@verbose = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@Buff = common dso_local global i64* null, align 8
@wptr = common dso_local global i64* null, align 8
@rptr = common dso_local global i64* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@fd = common dso_local global i64* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"%s: cannot open() %s: %m\0A\00", align 1
@BUFFSIZE = common dso_local global i64 0, align 8
@tot_users = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i8**, i8*** %5, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** @progname, align 8
  br label %11

11:                                               ; preds = %21, %2
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32 @getopt(i32 %12, i8** %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %6, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %21 [
    i32 118, label %18
    i32 104, label %19
  ]

18:                                               ; preds = %16
  store i32 1, i32* @verbose, align 4
  br label %21

19:                                               ; preds = %16
  %20 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %109

21:                                               ; preds = %16, %18
  br label %11

22:                                               ; preds = %11
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @optind, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %109

28:                                               ; preds = %22
  %29 = call i32 (...) @init_is_letter()
  %30 = load i64*, i64** @Buff, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64*, i64** @wptr, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 2
  store i64 %32, i64* %34, align 8
  %35 = load i64*, i64** @rptr, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 2
  store i64 %32, i64* %36, align 8
  br label %37

37:                                               ; preds = %95, %55, %28
  %38 = load i32, i32* @optind, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %102

41:                                               ; preds = %37
  %42 = load i8**, i8*** %5, align 8
  %43 = load i32, i32* @optind, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = load i32, i32* @O_RDONLY, align 4
  %48 = call i64 @open(i8* %46, i32 %47)
  %49 = load i64*, i64** @fd, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  store i64 %48, i64* %50, align 8
  %51 = load i64*, i64** @fd, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %41
  %56 = load i32, i32* @stderr, align 4
  %57 = load i8*, i8** @progname, align 8
  %58 = load i8**, i8*** %5, align 8
  %59 = load i32, i32* @optind, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @fprintf(i32 %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %57, i8* %62)
  %64 = load i32, i32* @optind, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* @optind, align 4
  br label %37

66:                                               ; preds = %41
  %67 = load i64*, i64** @fd, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp sge i64 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load i64*, i64** @Buff, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @BUFFSIZE, align 8
  %77 = add nsw i64 %75, %76
  %78 = load i64*, i64** @wptr, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  store i64 %77, i64* %79, align 8
  %80 = load i64*, i64** @rptr, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  store i64 %77, i64* %81, align 8
  br label %82

82:                                               ; preds = %85, %66
  %83 = call %struct.TYPE_3__* @load_entry(i32 0)
  store %struct.TYPE_3__* %83, %struct.TYPE_3__** %7, align 8
  %84 = icmp ne %struct.TYPE_3__* %83, null
  br i1 %84, label %85, label %95

85:                                               ; preds = %82
  %86 = load i32, i32* @tot_users, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* @tot_users, align 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @process_text(i32 %90, i32 %93)
  br label %82

95:                                               ; preds = %82
  %96 = load i64*, i64** @fd, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @close(i64 %98)
  %100 = load i32, i32* @optind, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* @optind, align 4
  br label %37

102:                                              ; preds = %37
  %103 = call i32 (...) @flushout()
  %104 = load i32, i32* @verbose, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = call i32 (...) @output_stats()
  br label %108

108:                                              ; preds = %106, %102
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %26, %19
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @init_is_letter(...) #1

declare dso_local i64 @open(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_3__* @load_entry(i32) #1

declare dso_local i32 @process_text(i32, i32) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @flushout(...) #1

declare dso_local i32 @output_stats(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
