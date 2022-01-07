; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/boot/compressed/extr_calc_vmlinuz_load_addr.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/boot/compressed/extr_calc_vmlinuz_load_addr.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Usage: %s <pathname> <vmlinux_load_addr>\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"%llx\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"sscanf\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"No matching characters\0A\00", align 1
@SZ_64K = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"0x%llx\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.stat, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 3
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i32, i32* @stderr, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %18, i32* %3, align 4
  br label %60

19:                                               ; preds = %2
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @stat(i8* %22, %struct.stat* %9)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %27, i32* %3, align 4
  br label %60

28:                                               ; preds = %19
  store i64 0, i64* @errno, align 8
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 2
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @sscanf(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64* %7)
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load i64, i64* @errno, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %37
  %43 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %43, i32* %3, align 4
  br label %60

44:                                               ; preds = %28
  %45 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %6, align 8
  %49 = add i64 %47, %48
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* @SZ_64K, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* @SZ_64K, align 8
  %53 = urem i64 %51, %52
  %54 = sub i64 %50, %53
  %55 = load i64, i64* %8, align 8
  %56 = add i64 %55, %54
  store i64 %56, i64* %8, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i64 %57)
  %59 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %44, %42, %25, %12
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*) #1

declare dso_local i32 @printf(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
