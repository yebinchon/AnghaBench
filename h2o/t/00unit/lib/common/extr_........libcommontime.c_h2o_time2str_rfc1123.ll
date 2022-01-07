; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommontime.c_h2o_time2str_rfc1123.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommontime.c_h2o_time2str_rfc1123.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i64, i64, i64, i64, i32, i64, i32 }

@.str = private unnamed_addr constant [5 x i8] c" GMT\00", align 1
@H2O_TIMESTR_RFC1123_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h2o_time2str_rfc1123(i8* %0, %struct.tm* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.tm*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.tm* %1, %struct.tm** %4, align 8
  %6 = load i8*, i8** %3, align 8
  store i8* %6, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load %struct.tm*, %struct.tm** %4, align 8
  %9 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 8
  %11 = call i8* @emit_wday(i8* %7, i32 %10)
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %5, align 8
  store i8 44, i8* %12, align 1
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %5, align 8
  store i8 32, i8* %14, align 1
  %16 = load i8*, i8** %5, align 8
  %17 = load %struct.tm*, %struct.tm** %4, align 8
  %18 = getelementptr inbounds %struct.tm, %struct.tm* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = call i8* @emit_digits(i8* %16, i64 %19, i32 2)
  store i8* %20, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %5, align 8
  store i8 32, i8* %21, align 1
  %23 = load i8*, i8** %5, align 8
  %24 = load %struct.tm*, %struct.tm** %4, align 8
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i8* @emit_mon(i8* %23, i32 %26)
  store i8* %27, i8** %5, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %5, align 8
  store i8 32, i8* %28, align 1
  %30 = load i8*, i8** %5, align 8
  %31 = load %struct.tm*, %struct.tm** %4, align 8
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1900
  %35 = call i8* @emit_digits(i8* %30, i64 %34, i32 4)
  store i8* %35, i8** %5, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %5, align 8
  store i8 32, i8* %36, align 1
  %38 = load i8*, i8** %5, align 8
  %39 = load %struct.tm*, %struct.tm** %4, align 8
  %40 = getelementptr inbounds %struct.tm, %struct.tm* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = call i8* @emit_digits(i8* %38, i64 %41, i32 2)
  store i8* %42, i8** %5, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %5, align 8
  store i8 58, i8* %43, align 1
  %45 = load i8*, i8** %5, align 8
  %46 = load %struct.tm*, %struct.tm** %4, align 8
  %47 = getelementptr inbounds %struct.tm, %struct.tm* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i8* @emit_digits(i8* %45, i64 %48, i32 2)
  store i8* %49, i8** %5, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %5, align 8
  store i8 58, i8* %50, align 1
  %52 = load i8*, i8** %5, align 8
  %53 = load %struct.tm*, %struct.tm** %4, align 8
  %54 = getelementptr inbounds %struct.tm, %struct.tm* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i8* @emit_digits(i8* %52, i64 %55, i32 2)
  store i8* %56, i8** %5, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @memcpy(i8* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 4
  store i8* %60, i8** %5, align 8
  %61 = load i8*, i8** %5, align 8
  store i8 0, i8* %61, align 1
  %62 = load i8*, i8** %5, align 8
  %63 = load i8*, i8** %3, align 8
  %64 = ptrtoint i8* %62 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  %67 = load i32, i32* @H2O_TIMESTR_RFC1123_LEN, align 4
  %68 = sext i32 %67 to i64
  %69 = icmp eq i64 %66, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  ret void
}

declare dso_local i8* @emit_wday(i8*, i32) #1

declare dso_local i8* @emit_digits(i8*, i64, i32) #1

declare dso_local i8* @emit_mon(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
