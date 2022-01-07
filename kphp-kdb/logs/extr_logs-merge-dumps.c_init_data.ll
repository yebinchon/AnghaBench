; ModuleID = '/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-merge-dumps.c_init_data.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-merge-dumps.c_init_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@engineN = common dso_local global i32 0, align 4
@f_buff = common dso_local global i8** null, align 8
@f_buff_size = common dso_local global i8* null, align 8
@f_buff_r = common dso_local global i8* null, align 8
@engineF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s%d.dump\00", align 1
@dump_name = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Filename is too long.\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"File '%s' not found.\0A\00", align 1
@fd = common dso_local global i32* null, align 8
@left_files = common dso_local global i32 0, align 4
@BUFF_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_data() #0 {
  %1 = alloca [100 x i8], align 16
  %2 = alloca i32, align 4
  %3 = load i32, i32* @engineN, align 4
  %4 = sext i32 %3 to i64
  %5 = mul i64 8, %4
  %6 = trunc i64 %5 to i32
  %7 = call i8* @dl_malloc(i32 %6)
  %8 = bitcast i8* %7 to i8**
  store i8** %8, i8*** @f_buff, align 8
  %9 = load i32, i32* @engineN, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 4, %10
  %12 = trunc i64 %11 to i32
  %13 = call i8* @dl_malloc0(i32 %12)
  store i8* %13, i8** @f_buff_size, align 8
  %14 = load i32, i32* @engineN, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 4, %15
  %17 = trunc i64 %16 to i32
  %18 = call i8* @dl_malloc0(i32 %17)
  store i8* %18, i8** @f_buff_r, align 8
  %19 = load i32, i32* @engineF, align 4
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %60, %0
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @engineN, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %63

24:                                               ; preds = %20
  %25 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %26 = load i8*, i8** @dump_name, align 8
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @snprintf(i8* %25, i32 100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %26, i32 %27)
  %29 = icmp sge i32 %28, 100
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32, i32* @stderr, align 4
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i32 @exit(i32 1) #3
  unreachable

34:                                               ; preds = %24
  %35 = load i32, i32* %2, align 4
  %36 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %37 = call i64 @dl_open_file(i32 %35, i8* %36, i32 -1)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load i32, i32* @stderr, align 4
  %41 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  %43 = load i32*, i32** @fd, align 8
  %44 = load i32, i32* %2, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 -1, i32* %46, align 4
  br label %60

47:                                               ; preds = %34
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* @left_files, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* @left_files, align 4
  %51 = load i32, i32* @BUFF_SIZE, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 1, %52
  %54 = trunc i64 %53 to i32
  %55 = call i8* @dl_malloc(i32 %54)
  %56 = load i8**, i8*** @f_buff, align 8
  %57 = load i32, i32* %2, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  store i8* %55, i8** %59, align 8
  br label %60

60:                                               ; preds = %48, %39
  %61 = load i32, i32* %2, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %2, align 4
  br label %20

63:                                               ; preds = %20
  ret void
}

declare dso_local i8* @dl_malloc(i32) #1

declare dso_local i8* @dl_malloc0(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @dl_open_file(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
