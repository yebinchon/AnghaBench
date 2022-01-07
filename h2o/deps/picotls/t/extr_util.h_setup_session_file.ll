; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_util.h_setup_session_file.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_util.h_setup_session_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_util_save_ticket_t = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@setup_session_file.st = internal global %struct.st_util_save_ticket_t zeroinitializer, align 4
@util_save_ticket_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@setup_session_file.ticket = internal global [16384 x i32] zeroinitializer, align 16
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to load ticket from file:%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_9__*, i8*)* @setup_session_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_session_file(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.st_util_save_ticket_t, %struct.st_util_save_ticket_t* @setup_session_file.st, i32 0, i32 1), align 4
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @strcpy(i32 %9, i8* %10)
  %12 = load i32, i32* @util_save_ticket_cb, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.st_util_save_ticket_t, %struct.st_util_save_ticket_t* @setup_session_file.st, i32 0, i32 0, i32 0), align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  store %struct.TYPE_8__* getelementptr inbounds (%struct.st_util_save_ticket_t, %struct.st_util_save_ticket_t* @setup_session_file.st, i32 0, i32 0), %struct.TYPE_8__** %14, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32* @fopen(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %40

18:                                               ; preds = %3
  %19 = load i32*, i32** %7, align 8
  %20 = call i64 @fread(i32* getelementptr inbounds ([16384 x i32], [16384 x i32]* @setup_session_file.ticket, i64 0, i64 0), i32 1, i32 65536, i32* %19)
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @feof(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %23, %18
  %28 = load i32, i32* @stderr, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = call i32 @exit(i32 1) #3
  unreachable

32:                                               ; preds = %23
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @fclose(i32* %33)
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @ptls_iovec_init(i32* getelementptr inbounds ([16384 x i32], [16384 x i32]* @setup_session_file.ticket, i64 0, i64 0), i64 %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  br label %40

40:                                               ; preds = %32, %3
  ret void
}

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fread(i32*, i32, i32, i32*) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @ptls_iovec_init(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
