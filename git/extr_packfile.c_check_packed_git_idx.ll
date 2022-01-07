; ModuleID = '/home/carl/AnghaBench/git/extr_packfile.c_check_packed_git_idx.c'
source_filename = "/home/carl/AnghaBench/git/extr_packfile.c_check_packed_git_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.packed_git = type { i32 }
%struct.stat = type { i32 }

@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"index file %s is too small\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.packed_git*)* @check_packed_git_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_packed_git_idx(i8* %0, %struct.packed_git* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.packed_git*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.stat, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.packed_git* %1, %struct.packed_git** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @git_open(i8* %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %65

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @fstat(i32 %21, %struct.stat* %10)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @close(i32 %25)
  store i32 -1, i32* %3, align 4
  br label %65

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @xsize_t(i32 %29)
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i32, i32* %11, align 4
  %33 = add i32 1024, %32
  %34 = load i32, i32* %11, align 4
  %35 = add i32 %33, %34
  %36 = zext i32 %35 to i64
  %37 = icmp ult i64 %31, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %27
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @close(i32 %39)
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %41)
  store i32 %42, i32* %3, align 4
  br label %65

43:                                               ; preds = %27
  %44 = load i64, i64* %7, align 8
  %45 = load i32, i32* @PROT_READ, align 4
  %46 = load i32, i32* @MAP_PRIVATE, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i8* @xmmap(i32* null, i64 %44, i32 %45, i32 %46, i32 %47, i32 0)
  store i8* %48, i8** %6, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @close(i32 %49)
  %51 = load i8*, i8** %4, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load i8*, i8** %6, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %56 = call i32 @load_idx(i8* %51, i32 %52, i8* %53, i64 %54, %struct.packed_git* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %43
  %60 = load i8*, i8** %6, align 8
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @munmap(i8* %60, i64 %61)
  br label %63

63:                                               ; preds = %59, %43
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %38, %24, %19
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @git_open(i8*) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @xsize_t(i32) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i8* @xmmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @load_idx(i8*, i32, i8*, i64, %struct.packed_git*) #1

declare dso_local i32 @munmap(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
