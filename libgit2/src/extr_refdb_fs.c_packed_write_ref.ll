; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_refdb_fs.c_packed_write_ref.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_refdb_fs.c_packed_write_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packref = type { i32, i32, i32, i32 }

@GIT_OID_HEXSZ = common dso_local global i32 0, align 4
@PACKREF_HAS_PEEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s %s\0A^%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packref*, i32*)* @packed_write_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packed_write_ref(%struct.packref* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.packref*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.packref* %0, %struct.packref** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = trunc i64 %13 to i32
  %17 = load %struct.packref*, %struct.packref** %4, align 8
  %18 = getelementptr inbounds %struct.packref, %struct.packref* %17, i32 0, i32 3
  %19 = call i32 @git_oid_nfmt(i8* %15, i32 %16, i32* %18)
  %20 = load %struct.packref*, %struct.packref** %4, align 8
  %21 = getelementptr inbounds %struct.packref, %struct.packref* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PACKREF_HAS_PEEL, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %2
  %27 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %28 = add nsw i32 %27, 1
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %8, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %9, align 8
  %32 = trunc i64 %29 to i32
  %33 = load %struct.packref*, %struct.packref** %4, align 8
  %34 = getelementptr inbounds %struct.packref, %struct.packref* %33, i32 0, i32 2
  %35 = call i32 @git_oid_nfmt(i8* %31, i32 %32, i32* %34)
  %36 = load i32*, i32** %5, align 8
  %37 = load %struct.packref*, %struct.packref** %4, align 8
  %38 = getelementptr inbounds %struct.packref, %struct.packref* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i64 (i32*, i8*, i8*, i32, ...) @git_filebuf_printf(i32* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %15, i32 %39, i8* %31)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %26
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %44

43:                                               ; preds = %26
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %43, %42
  %45 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %45)
  %46 = load i32, i32* %10, align 4
  switch i32 %46, label %58 [
    i32 0, label %47
  ]

47:                                               ; preds = %44
  br label %57

48:                                               ; preds = %2
  %49 = load i32*, i32** %5, align 8
  %50 = load %struct.packref*, %struct.packref** %4, align 8
  %51 = getelementptr inbounds %struct.packref, %struct.packref* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 (i32*, i8*, i8*, i32, ...) @git_filebuf_printf(i32* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %15, i32 %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %58

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %47
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %58

58:                                               ; preds = %57, %55, %44
  %59 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %59)
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @git_oid_nfmt(i8*, i32, i32*) #2

declare dso_local i64 @git_filebuf_printf(i32*, i8*, i8*, i32, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
