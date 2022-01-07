; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_init_parse_file.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_init_parse_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i64, %struct.TYPE_2__, i32, i64, i64, i64 }
%struct.TYPE_2__ = type { i32, i64, i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Error %m\0A\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"size is %lld. Too small.\0A\00", align 1
@tl_init_parse_file.save = internal global %struct.parse zeroinitializer, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@lex_none = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.parse* @tl_init_parse_file(i8* %0) #0 {
  %2 = alloca %struct.parse*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i32, i32* @O_RDONLY, align 4
  %8 = call i32 @open(i8* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @assert(i32 0)
  store %struct.parse* null, %struct.parse** %2, align 8
  br label %42

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @SEEK_END, align 4
  %18 = call i64 @lseek(i32 %16, i32 0, i32 %17)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp sle i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i32, i32* @stderr, align 4
  %23 = load i64, i64* %5, align 8
  %24 = call i32 (i32, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %23)
  store %struct.parse* null, %struct.parse** %2, align 8
  br label %42

25:                                               ; preds = %15
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @zmalloc(i64 %26)
  store i32 %27, i32* getelementptr inbounds (%struct.parse, %struct.parse* @tl_init_parse_file.save, i32 0, i32 2), align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @SEEK_SET, align 4
  %30 = call i64 @lseek(i32 %28, i32 0, i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.parse, %struct.parse* @tl_init_parse_file.save, i32 0, i32 2), align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i64 @read(i32 %31, i32 %32, i64 %33)
  store i64 %34, i64* getelementptr inbounds (%struct.parse, %struct.parse* @tl_init_parse_file.save, i32 0, i32 0), align 8
  %35 = load i64, i64* getelementptr inbounds (%struct.parse, %struct.parse* @tl_init_parse_file.save, i32 0, i32 0), align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  store i64 0, i64* getelementptr inbounds (%struct.parse, %struct.parse* @tl_init_parse_file.save, i32 0, i32 5), align 8
  store i64 0, i64* getelementptr inbounds (%struct.parse, %struct.parse* @tl_init_parse_file.save, i32 0, i32 4), align 8
  store i64 0, i64* getelementptr inbounds (%struct.parse, %struct.parse* @tl_init_parse_file.save, i32 0, i32 3), align 8
  %40 = load i32, i32* getelementptr inbounds (%struct.parse, %struct.parse* @tl_init_parse_file.save, i32 0, i32 2), align 8
  store i32 %40, i32* getelementptr inbounds (%struct.parse, %struct.parse* @tl_init_parse_file.save, i32 0, i32 1, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.parse, %struct.parse* @tl_init_parse_file.save, i32 0, i32 1, i32 1), align 8
  %41 = load i32, i32* @lex_none, align 4
  store i32 %41, i32* getelementptr inbounds (%struct.parse, %struct.parse* @tl_init_parse_file.save, i32 0, i32 1, i32 0), align 8
  store %struct.parse* @tl_init_parse_file.save, %struct.parse** %2, align 8
  br label %42

42:                                               ; preds = %25, %21, %11
  %43 = load %struct.parse*, %struct.parse** %2, align 8
  ret %struct.parse* %43
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @zmalloc(i64) #1

declare dso_local i64 @read(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
