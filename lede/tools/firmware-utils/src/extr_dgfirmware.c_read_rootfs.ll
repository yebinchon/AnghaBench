; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_dgfirmware.c_read_rootfs.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_dgfirmware.c_read_rootfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ROOTFS_START = common dso_local global i32 0, align 4
@ROOTFS_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@app_name = common dso_local global i8* null, align 8
@SEEK_END = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"%s: rootfs image file is too big\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"%s: can't read rootfs image file\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @read_rootfs(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i32, i32* @ROOTFS_START, align 4
  store i32 %8, i32* %7, align 4
  br label %9

9:                                                ; preds = %20, %2
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @ROOTFS_START, align 4
  %12 = load i32, i32* @ROOTFS_SIZE, align 4
  %13 = add nsw i32 %11, %12
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %9
  %16 = load i8*, i8** %3, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  store i8 -1, i8* %19, align 1
  br label %20

20:                                               ; preds = %15
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %7, align 4
  br label %9

23:                                               ; preds = %9
  %24 = load i8*, i8** %4, align 8
  %25 = call i32* @fopen(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %25, i32** %5, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i8*, i8** @app_name, align 8
  %30 = call i32 @perror(i8* %29)
  %31 = call i32 @exit(i32 -1) #3
  unreachable

32:                                               ; preds = %23
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* @SEEK_END, align 4
  %35 = call i32 @fseek(i32* %33, i32 0, i32 %34)
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @ftell(i32* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @ROOTFS_SIZE, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %32
  %42 = load i32, i32* @stderr, align 4
  %43 = load i8*, i8** @app_name, align 8
  %44 = call i32 @fprintf(i32 %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @fclose(i32* %45)
  %47 = call i32 @exit(i32 -1) #3
  unreachable

48:                                               ; preds = %32
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @rewind(i32* %49)
  %51 = load i8*, i8** %3, align 8
  %52 = load i32, i32* @ROOTFS_START, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i32, i32* %6, align 4
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @fread(i8* %54, i32 1, i32 %55, i32* %56)
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %48
  %61 = load i32, i32* @stderr, align 4
  %62 = load i8*, i8** @app_name, align 8
  %63 = call i32 @fprintf(i32 %61, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %62)
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @fclose(i32* %64)
  %66 = call i32 @exit(i32 -1) #3
  unreachable

67:                                               ; preds = %48
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @fclose(i32* %68)
  %70 = load i8*, i8** %3, align 8
  ret i8* %70
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @ftell(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @rewind(i32*) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
