; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_oid.c_git_oid_nfmt.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_oid.c_git_oid_nfmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@GIT_OID_HEXSZ = common dso_local global i64 0, align 8
@to_hex = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @git_oid_nfmt(i8* %0, i64 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i8*, i8** %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @memset(i8* %12, i32 0, i64 %13)
  br label %66

15:                                               ; preds = %3
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @GIT_OID_HEXSZ, align 8
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = load i8*, i8** %4, align 8
  %21 = load i64, i64* @GIT_OID_HEXSZ, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @GIT_OID_HEXSZ, align 8
  %25 = sub i64 %23, %24
  %26 = call i32 @memset(i8* %22, i32 0, i64 %25)
  %27 = load i64, i64* @GIT_OID_HEXSZ, align 8
  store i64 %27, i64* %5, align 8
  br label %28

28:                                               ; preds = %19, %15
  %29 = load i64, i64* %5, align 8
  %30 = udiv i64 %29, 2
  store i64 %30, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %31

31:                                               ; preds = %44, %28
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %31
  %36 = load i8*, i8** %4, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @fmt_one(i8* %36, i32 %42)
  store i8* %43, i8** %4, align 8
  br label %44

44:                                               ; preds = %35
  %45 = load i64, i64* %7, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %7, align 8
  br label %31

47:                                               ; preds = %31
  %48 = load i64, i64* %5, align 8
  %49 = and i64 %48, 1
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = load i32*, i32** @to_hex, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %58, 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %52, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = trunc i32 %62 to i8
  %64 = load i8*, i8** %4, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %4, align 8
  store i8 %63, i8* %64, align 1
  br label %66

66:                                               ; preds = %11, %51, %47
  ret void
}

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i8* @fmt_one(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
