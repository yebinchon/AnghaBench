; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-commit.c_tb_alloc_logevent.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-commit.c_tb_alloc_logevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transaction_buffer = type { i64, i64, i8* }
%struct.lev_generic = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"B->p + size = %lld, B->size = %lld\0A\00", align 1
@.str.1 = private unnamed_addr constant [83 x i8] c"Transaction buffer too small (%lld), try increase it with -M command line switch.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.transaction_buffer*, i32, i64)* @tb_alloc_logevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tb_alloc_logevent(%struct.transaction_buffer* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.transaction_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.lev_generic*, align 8
  store %struct.transaction_buffer* %0, %struct.transaction_buffer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = add nsw i64 %9, 3
  %11 = and i64 %10, -4
  store i64 %11, i64* %6, align 8
  %12 = load %struct.transaction_buffer*, %struct.transaction_buffer** %4, align 8
  %13 = getelementptr inbounds %struct.transaction_buffer, %struct.transaction_buffer* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %6, align 8
  %16 = add nsw i64 %14, %15
  %17 = load %struct.transaction_buffer*, %struct.transaction_buffer** %4, align 8
  %18 = getelementptr inbounds %struct.transaction_buffer, %struct.transaction_buffer* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %16, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %3
  %22 = load %struct.transaction_buffer*, %struct.transaction_buffer** %4, align 8
  %23 = getelementptr inbounds %struct.transaction_buffer, %struct.transaction_buffer* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = add nsw i64 %24, %25
  %27 = load %struct.transaction_buffer*, %struct.transaction_buffer** %4, align 8
  %28 = getelementptr inbounds %struct.transaction_buffer, %struct.transaction_buffer* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %26, i64 %29)
  %31 = load %struct.transaction_buffer*, %struct.transaction_buffer** %4, align 8
  %32 = getelementptr inbounds %struct.transaction_buffer, %struct.transaction_buffer* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @kprintf(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  %35 = call i32 @exit(i32 1) #3
  unreachable

36:                                               ; preds = %3
  %37 = load %struct.transaction_buffer*, %struct.transaction_buffer** %4, align 8
  %38 = getelementptr inbounds %struct.transaction_buffer, %struct.transaction_buffer* %37, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.transaction_buffer*, %struct.transaction_buffer** %4, align 8
  %41 = getelementptr inbounds %struct.transaction_buffer, %struct.transaction_buffer* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr i8, i8* %39, i64 %42
  store i8* %43, i8** %7, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.transaction_buffer*, %struct.transaction_buffer** %4, align 8
  %46 = getelementptr inbounds %struct.transaction_buffer, %struct.transaction_buffer* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, %44
  store i64 %48, i64* %46, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @memset(i8* %49, i32 0, i64 %50)
  %52 = load i8*, i8** %7, align 8
  %53 = bitcast i8* %52 to %struct.lev_generic*
  store %struct.lev_generic* %53, %struct.lev_generic** %8, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.lev_generic*, %struct.lev_generic** %8, align 8
  %56 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load i8*, i8** %7, align 8
  ret i8* %57
}

declare dso_local i32 @vkprintf(i32, i8*, i64, i64) #1

declare dso_local i32 @kprintf(i8*, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
