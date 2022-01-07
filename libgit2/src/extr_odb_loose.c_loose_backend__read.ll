; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb_loose.c_loose_backend__read.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb_loose.c_loose_backend__read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i8* }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"no matching loose object\00", align 1
@GIT_OID_HEXSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64*, i32*, i32*, i32*)* @loose_backend__read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loose_backend__read(i8** %0, i64* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__, align 8
  %13 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %14, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %15 = load i32*, i32** %9, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32*, i32** %10, align 8
  %19 = icmp ne i32* %18, null
  br label %20

20:                                               ; preds = %17, %5
  %21 = phi i1 [ false, %5 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32*, i32** %9, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = call i64 @locate_object(i32* %11, i32* %24, i32* %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load i32*, i32** %10, align 8
  %30 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %31 = call i32 @git_odb__error_notfound(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32* %29, i32 %30)
  store i32 %31, i32* %13, align 4
  br label %46

32:                                               ; preds = %20
  %33 = call i32 @read_loose(%struct.TYPE_3__* %12, i32* %11)
  store i32 %33, i32* %13, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %37 = load i8*, i8** %36, align 8
  %38 = load i8**, i8*** %6, align 8
  store i8* %37, i8** %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64*, i64** %7, align 8
  store i64 %40, i64* %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32*, i32** %8, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %35, %32
  br label %46

46:                                               ; preds = %45, %28
  %47 = call i32 @git_buf_dispose(i32* %11)
  %48 = load i32, i32* %13, align 4
  ret i32 %48
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @locate_object(i32*, i32*, i32*) #1

declare dso_local i32 @git_odb__error_notfound(i8*, i32*, i32) #1

declare dso_local i32 @read_loose(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
