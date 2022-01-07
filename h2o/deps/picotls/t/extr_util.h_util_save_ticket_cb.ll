; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_util.h_util_save_ticket_cb.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_util.h_util_save_ticket_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.st_util_save_ticket_t = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to open file:%s:%s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@PTLS_ERROR_LIBRARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64)* @util_save_ticket_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @util_save_ticket_cb(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.st_util_save_ticket_t*, align 8
  %9 = alloca i32*, align 8
  %10 = bitcast %struct.TYPE_3__* %5 to i64*
  store i64 %2, i64* %10, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = bitcast i32* %11 to i8*
  %13 = bitcast i8* %12 to %struct.st_util_save_ticket_t*
  store %struct.st_util_save_ticket_t* %13, %struct.st_util_save_ticket_t** %8, align 8
  %14 = load %struct.st_util_save_ticket_t*, %struct.st_util_save_ticket_t** %8, align 8
  %15 = getelementptr inbounds %struct.st_util_save_ticket_t, %struct.st_util_save_ticket_t* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32* @fopen(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %17, i32** %9, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %3
  %20 = load i32, i32* @stderr, align 4
  %21 = load %struct.st_util_save_ticket_t*, %struct.st_util_save_ticket_t** %8, align 8
  %22 = getelementptr inbounds %struct.st_util_save_ticket_t, %struct.st_util_save_ticket_t* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i32, i32* @errno, align 4
  %25 = call i8* @strerror(i32 %24)
  %26 = call i32 @fprintf(i32 %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %23, i8* %25)
  %27 = load i32, i32* @PTLS_ERROR_LIBRARY, align 4
  store i32 %27, i32* %4, align 4
  br label %37

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @fwrite(i32 %30, i32 1, i32 %32, i32* %33)
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @fclose(i32* %35)
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %28, %19
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @fwrite(i32, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
