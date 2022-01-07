; ModuleID = '/home/carl/AnghaBench/h2o/src/extr_ssl.c_find_ticket_for_encryption.c'
source_filename = "/home/carl/AnghaBench/h2o/src/extr_ssl.c_find_ticket_for_encryption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_session_ticket_t = type { i64, i64 }
%struct.TYPE_3__ = type { i64, %struct.st_session_ticket_t** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.st_session_ticket_t* (%struct.TYPE_3__*, i64)* @find_ticket_for_encryption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.st_session_ticket_t* @find_ticket_for_encryption(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca %struct.st_session_ticket_t*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.st_session_ticket_t*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %8

8:                                                ; preds = %36, %2
  %9 = load i64, i64* %6, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %9, %12
  br i1 %13, label %14, label %39

14:                                               ; preds = %8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load %struct.st_session_ticket_t**, %struct.st_session_ticket_t*** %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %17, i64 %18
  %20 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %19, align 8
  store %struct.st_session_ticket_t* %20, %struct.st_session_ticket_t** %7, align 8
  %21 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %7, align 8
  %22 = getelementptr inbounds %struct.st_session_ticket_t, %struct.st_session_ticket_t* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp sle i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %14
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %7, align 8
  %29 = getelementptr inbounds %struct.st_session_ticket_t, %struct.st_session_ticket_t* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp sle i64 %27, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %7, align 8
  store %struct.st_session_ticket_t* %33, %struct.st_session_ticket_t** %3, align 8
  br label %40

34:                                               ; preds = %26
  store %struct.st_session_ticket_t* null, %struct.st_session_ticket_t** %3, align 8
  br label %40

35:                                               ; preds = %14
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %6, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %6, align 8
  br label %8

39:                                               ; preds = %8
  store %struct.st_session_ticket_t* null, %struct.st_session_ticket_t** %3, align 8
  br label %40

40:                                               ; preds = %39, %34, %32
  %41 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %3, align 8
  ret %struct.st_session_ticket_t* %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
