; ModuleID = '/home/carl/AnghaBench/ish/tools/extr_vdso-transplant-main.c_main.c'
source_filename = "/home/carl/AnghaBench/ish/tools/extr_vdso-transplant-main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@AT_FDCWD = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"open vdso\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"stat vdso\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"mmap vdso\00", align 1
@SIGSTOP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"pause process\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"attach debugger to %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [1 x i8*], align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.stat, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = bitcast [1 x i8*]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 8, i1 false)
  %13 = load i32, i32* @AT_FDCWD, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 2
  %16 = load i8*, i8** %15, align 8
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 2
  %19 = getelementptr inbounds [1 x i8*], [1 x i8*]* %6, i64 0, i64 0
  %20 = call i32 @start_tracee(i32 %13, i8* %16, i8** %18, i8** %19)
  store i32 %20, i32* %7, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  %24 = load i32, i32* @O_RDONLY, align 4
  %25 = call i32 @open(i8* %23, i32 %24)
  %26 = call i32 @trycall(i32 %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @fstat(i32 %27, %struct.stat* %9)
  %29 = call i32 @trycall(i32 %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %10, align 8
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @PROT_READ, align 4
  %35 = load i32, i32* @MAP_PRIVATE, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i8* @mmap(i32* null, i64 %33, i32 %34, i32 %35, i32 %36, i32 0)
  store i8* %37, i8** %11, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = load i8*, i8** @MAP_FAILED, align 8
  %40 = icmp eq i8* %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %2
  %42 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %43 = call i32 @exit(i32 1) #4
  unreachable

44:                                               ; preds = %2
  %45 = load i32, i32* %7, align 4
  %46 = load i8*, i8** %11, align 8
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @transplant_vdso(i32 %45, i8* %46, i64 %47)
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @SIGSTOP, align 4
  %51 = call i32 @kill(i32 %49, i32 %50)
  %52 = call i32 @trycall(i32 %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %53)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @start_tracee(i32, i8*, i8**, i8**) #2

declare dso_local i32 @trycall(i32, i8*) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @fstat(i32, %struct.stat*) #2

declare dso_local i8* @mmap(i32*, i64, i32, i32, i32, i32) #2

declare dso_local i32 @perror(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @transplant_vdso(i32, i8*, i64) #2

declare dso_local i32 @kill(i32, i32) #2

declare dso_local i32 @printf(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
