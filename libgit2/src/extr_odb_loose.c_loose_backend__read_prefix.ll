; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb_loose.c_loose_backend__read_prefix.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb_loose.c_loose_backend__read_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i8* }

@GIT_OID_MINPREFIXLEN = common dso_local global i64 0, align 8
@GIT_OID_HEXSZ = common dso_local global i64 0, align 8
@GIT_BUF_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i64*, i32*, i32*, i32*, i64)* @loose_backend__read_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loose_backend__read_prefix(i32* %0, i8** %1, i64* %2, i32* %3, i32* %4, i32* %5, i64 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_3__, align 8
  store i32* %0, i32** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i64* %2, i64** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i64 %6, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %18 = load i64, i64* %14, align 8
  %19 = load i64, i64* @GIT_OID_MINPREFIXLEN, align 8
  %20 = icmp uge i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %7
  %22 = load i64, i64* %14, align 8
  %23 = load i64, i64* @GIT_OID_HEXSZ, align 8
  %24 = icmp ule i64 %22, %23
  br label %25

25:                                               ; preds = %21, %7
  %26 = phi i1 [ false, %7 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i64, i64* %14, align 8
  %30 = load i64, i64* @GIT_OID_HEXSZ, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %25
  %33 = load i8**, i8*** %9, align 8
  %34 = load i64*, i64** %10, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = call i32 @loose_backend__read(i8** %33, i64* %34, i32* %35, i32* %36, i32* %37)
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %32
  %42 = load i32*, i32** %8, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = call i32 @git_oid_cpy(i32* %42, i32* %43)
  br label %45

45:                                               ; preds = %41, %32
  br label %78

46:                                               ; preds = %25
  %47 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %47, i32* %16, align 4
  %48 = load i32*, i32** %12, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32*, i32** %13, align 8
  %52 = icmp ne i32* %51, null
  br label %53

53:                                               ; preds = %50, %46
  %54 = phi i1 [ false, %46 ], [ %52, %50 ]
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load i32*, i32** %8, align 8
  %58 = load i32*, i32** %12, align 8
  %59 = load i32*, i32** %13, align 8
  %60 = load i64, i64* %14, align 8
  %61 = call i32 @locate_object_short_oid(i32* %16, i32* %57, i32* %58, i32* %59, i64 %60)
  store i32 %61, i32* %15, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %53
  %64 = call i32 @read_loose(%struct.TYPE_3__* %17, i32* %16)
  store i32 %64, i32* %15, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = load i8**, i8*** %9, align 8
  store i8* %68, i8** %69, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64*, i64** %10, align 8
  store i64 %71, i64* %72, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32*, i32** %11, align 8
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %66, %63, %53
  %77 = call i32 @git_buf_dispose(i32* %16)
  br label %78

78:                                               ; preds = %76, %45
  %79 = load i32, i32* %15, align 4
  ret i32 %79
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @loose_backend__read(i8**, i64*, i32*, i32*, i32*) #1

declare dso_local i32 @git_oid_cpy(i32*, i32*) #1

declare dso_local i32 @locate_object_short_oid(i32*, i32*, i32*, i32*, i64) #1

declare dso_local i32 @read_loose(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
