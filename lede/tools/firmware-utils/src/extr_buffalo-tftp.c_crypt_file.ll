; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_buffalo-tftp.c_crypt_file.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_buffalo-tftp.c_crypt_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ifname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unable to get size of '%s'\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"no memory for the buffer\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"unable to read from file '%s'\00", align 1
@do_decrypt = common dso_local global i64 0, align 8
@crypt_key2 = common dso_local global i32 0, align 4
@crypt_key1 = common dso_local global i32 0, align 4
@ofname = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"unable to write to file '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @crypt_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypt_file() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* null, i8** %1, align 8
  store i32 -1, i32* %4, align 4
  %5 = load i32, i32* @ifname, align 4
  %6 = call i64 @get_file_size(i32 %5)
  store i64 %6, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load i32, i32* @ifname, align 4
  %11 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %53

12:                                               ; preds = %0
  %13 = load i64, i64* %2, align 8
  %14 = call i8* @malloc(i64 %13)
  store i8* %14, i8** %1, align 8
  %15 = load i8*, i8** %1, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %53

19:                                               ; preds = %12
  %20 = load i32, i32* @ifname, align 4
  %21 = load i8*, i8** %1, align 8
  %22 = load i64, i64* %2, align 8
  %23 = call i32 @read_file_to_buf(i32 %20, i8* %21, i64 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @ifname, align 4
  %28 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  br label %53

29:                                               ; preds = %19
  %30 = load i64, i64* @do_decrypt, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i8*, i8** %1, align 8
  %34 = load i32, i32* @crypt_key2, align 4
  %35 = load i32, i32* @crypt_key1, align 4
  %36 = call i32 @crypt_header(i8* %33, i32 512, i32 %34, i32 %35)
  br label %42

37:                                               ; preds = %29
  %38 = load i8*, i8** %1, align 8
  %39 = load i32, i32* @crypt_key1, align 4
  %40 = load i32, i32* @crypt_key2, align 4
  %41 = call i32 @crypt_header(i8* %38, i32 512, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %37, %32
  %43 = load i32, i32* @ofname, align 4
  %44 = load i8*, i8** %1, align 8
  %45 = load i64, i64* %2, align 8
  %46 = call i32 @write_buf_to_file(i32 %43, i8* %44, i64 %45)
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* @ofname, align 4
  %51 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  br label %53

52:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %49, %26, %17, %9
  %54 = load i8*, i8** %1, align 8
  %55 = call i32 @free(i8* %54)
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i64 @get_file_size(i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @read_file_to_buf(i32, i8*, i64) #1

declare dso_local i32 @crypt_header(i8*, i32, i32, i32) #1

declare dso_local i32 @write_buf_to_file(i32, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
