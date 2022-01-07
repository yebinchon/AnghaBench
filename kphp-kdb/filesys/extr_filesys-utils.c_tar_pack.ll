; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-utils.c_tar_pack.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-utils.c_tar_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"wb%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@TAR_PACK_ERR_OPEN = common dso_local global i32 0, align 4
@TAR_PACK_ERR_DUP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@Z_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tar_pack(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [8 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.stat, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [1024 x i8], align 16
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp sge i32 %16, 1
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp sle i32 %19, 9
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @sprintf(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %28

25:                                               ; preds = %18, %3
  %26 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %27 = call i32 @strcpy(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %21
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* @O_CREAT, align 4
  %31 = load i32, i32* @O_TRUNC, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @O_WRONLY, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @O_EXCL, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @open(i8* %29, i32 %36, i32 432)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = load i32, i32* @TAR_PACK_ERR_OPEN, align 4
  store i32 %41, i32* %4, align 4
  br label %95

42:                                               ; preds = %28
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @dup(i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load i32, i32* %9, align 4
  %49 = call i64 @close(i32 %48)
  %50 = icmp sge i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load i32, i32* @TAR_PACK_ERR_DUP, align 4
  store i32 %53, i32* %4, align 4
  br label %95

54:                                               ; preds = %42
  %55 = load i32, i32* %10, align 4
  %56 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %57 = call i32 @gzdopen(i32 %55, i8* %56)
  store i32 %57, i32* %11, align 4
  %58 = load i8*, i8** %6, align 8
  %59 = call i64 @stat(i8* %58, %struct.stat* %12)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store i32 -1, i32* %4, align 4
  br label %95

62:                                               ; preds = %54
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @dyn_mark(i32 %63)
  %65 = load i32, i32* %11, align 4
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @rec_tar_pack(i32 %65, i8* %66, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %struct.stat* %12)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @dyn_release(i32 %68)
  %70 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %71 = call i32 @memset(i8* %70, i32 0, i32 1024)
  %72 = load i32, i32* %11, align 4
  %73 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %74 = call i32 @gzwrite(i32 %72, i8* %73, i32 1024)
  %75 = icmp eq i32 %74, 1024
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load i32, i32* %11, align 4
  %79 = call i64 @gzclose(i32 %78)
  %80 = load i64, i64* @Z_OK, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  %84 = load i32, i32* %9, align 4
  %85 = call i64 @fsync(i32 %84)
  %86 = icmp sge i64 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = load i32, i32* %9, align 4
  %90 = call i64 @close(i32 %89)
  %91 = icmp sge i64 %90, 0
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = load i32, i32* %14, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %62, %61, %47, %40
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @dup(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @close(i32) #1

declare dso_local i32 @gzdopen(i32, i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @dyn_mark(i32) #1

declare dso_local i32 @rec_tar_pack(i32, i8*, i8*, %struct.stat*) #1

declare dso_local i32 @dyn_release(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @gzwrite(i32, i8*, i32) #1

declare dso_local i64 @gzclose(i32) #1

declare dso_local i64 @fsync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
